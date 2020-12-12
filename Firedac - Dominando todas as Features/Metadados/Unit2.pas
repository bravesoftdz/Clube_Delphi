unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  Vcl.StdCtrls, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TForm2 = class(TForm)
    FDConnection1: TFDConnection;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    FDMetaInfoQuery1: TFDMetaInfoQuery;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    Button2: TButton;
    FDMetaInfoQuery2: TFDMetaInfoQuery;
    DataSource2: TDataSource;
    DBGrid3: TDBGrid;
    DataSource3: TDataSource;
    FDQuery1: TFDQuery;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FDMetaInfoQuery1AfterScroll(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure FDConnection1Recover(ASender, AInitiator: TObject;
      AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  FDConnection1.GetTableNames(
    '', '', '', ListBox1.Items
  );
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  FDMetaInfoQuery1.Open();
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  FDQuery1.Open();
end;

procedure TForm2.FDConnection1Recover(ASender, AInitiator: TObject;
  AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
var
  iRes : Integer;
begin
  iRes :=
    MessageDlg('Conexão Perdida, Escolha o que deseja fazer: YES - OffLine, Reconectar - OK, Falha - Cancel',
      mtConfirmation, [mbYes, mbOK, mbCancel], 0);

  case iRes of
    mrYes : AAction := faOfflineAbort;
    mrOk  : AAction := faRetry;
    mrCancel : AAction := faFail;
  end;
end;

procedure TForm2.FDMetaInfoQuery1AfterScroll(DataSet: TDataSet);
begin
  FDMetaInfoQuery2.Close();
  FDMetaInfoQuery2.ObjectName := FDMetaInfoQuery1.FieldByName('TABLE_NAME').AsString;
  FDMetaInfoQuery2.Open();
end;

procedure TForm2.ListBox1Click(Sender: TObject);
begin
  if ListBox1.ItemIndex > -1 then
    FDConnection1.GetFieldNames(
      '','', ListBox1.Items[ListBox1.ItemIndex], '', ListBox2.Items);
end;

end.
