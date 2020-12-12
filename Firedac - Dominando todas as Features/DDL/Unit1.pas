unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, Vcl.StdCtrls, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.DApt,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Moni.Base, FireDAC.Moni.Custom,
  FireDAC.Moni.FlatFile, FireDAC.Moni.RemoteClient;

type
  TForm1 = class(TForm)
    Button1: TButton;
    FDConnection1: TFDConnection;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDMemTable1: TFDMemTable;
    Button5: TButton;
    FDMoniCustomClientLink1: TFDMoniCustomClientLink;
    Memo1: TMemo;
    FDQuery1: TFDQuery;
    Button6: TButton;
    FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FDMoniCustomClientLink1Output(ASender: TFDMoniClientLinkBase;
      const AClassName, AObjName, AMessage: string);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDConnection1.ExecSQL('CREATE TABLE WORKSHOP (ID INTEGER NOT NULL PRIMARY KEY, DESCRICAO VARCHAR(50))');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FDConnection1.ExecSQL('DROP TABLE WORKSHOP', True);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit2.Text := FDConnection1.ExecSQLScalar(
    'SELECT NOME FROM CLIENTE WHERE ID = :ID',
    [StrToInt(Edit1.Text)]
  );
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  FDConnection1.ExecSQL('SELECT * FROM CLIENTE', TDataSet(FDMemTable1));
  DataSource1.DataSet := FDMemTable1;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  try
    FDConnection1.ExecSQL(
      'INSERT INTO TESTE (ID, NOME) VALUES (:ID, :NOME)',
      [StrToInt(Edit1.Text), Edit2.Text],
      [ftInteger, ftString]
    );
  except
    on E : EFDDBEngineException do
    begin
      case E.Kind of
        ekOther: ;
        ekNoDataFound: ;
        ekTooManyRows: ;
        ekRecordLocked: ;
        ekUKViolated: ShowMessage('Já Existe esse ID');
        ekFKViolated: ;
        ekObjNotExists: ;
        ekUserPwdInvalid: ;
        ekUserPwdExpired: ;
        ekUserPwdWillExpire: ;
        ekCmdAborted: ;
        ekServerGone: ;
        ekServerOutput: ;
        ekArrExecMalfunc: ;
        ekInvalidParams: ;
      end;
    end;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  FDQuery1.Open();
end;

procedure TForm1.FDMoniCustomClientLink1Output(ASender: TFDMoniClientLinkBase;
  const AClassName, AObjName, AMessage: string);
begin
  Memo1.Lines.Add(AMessage);
end;

end.
