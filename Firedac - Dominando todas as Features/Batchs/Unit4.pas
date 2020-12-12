unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm4 = class(TForm)
    FDConnection1: TFDConnection;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Label1: TLabel;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Button2: TButton;
    FDMemTable1: TFDMemTable;
    FDMemTable2: TFDMemTable;
    Label2: TLabel;
    FDQuery3: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  Tempo : Cardinal;
begin
  FDConnection1.Close();
  Tempo := GetTickCount();
  FDQuery1.Open();
  FDQuery2.Open();
  DataSource1.DataSet := FDQuery1;
  DataSource2.DataSet := FDQuery2;
  Label1.Caption := IntToStr(GetTickCount() - Tempo);
end;

procedure TForm4.Button2Click(Sender: TObject);
var
  Tempo : Cardinal;
begin
  FDConnection1.Close();
  FDQuery3.FetchOptions.AutoClose := False;

  Tempo := GetTickCount();
  FDQuery3.Open();
  FDQuery3.FetchAll;
  Label2.Caption := IntToStr(GetTickCount - Tempo);

  FDMemTable1.Data := FDQuery3.Data;
  FDQuery3.NextRecordSet;
  FDQuery3.FetchAll;
  FDMemTable2.Data := FDQuery3.Data;

  DataSource1.DataSet := FDMemTable1;
  DataSource2.DataSet := FDMemTable2;
end;

end.
