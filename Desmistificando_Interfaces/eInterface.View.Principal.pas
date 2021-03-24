unit eInterface.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  eInterface.Controller.Pessoa, eInterface.Controller.Interfaces,  eInterface.Model.Interfaces;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FPessoa: iPessoa;
    procedure ExibeResultado(Value: string);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation



{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  if ComboBox1.ItemIndex < 0 then
  begin
    ShowMessage('Selecione o tipo de pessoa');
    Exit;
  end;

    FPessoa
      .Nome(Edit1.Text)
      .SobreNome(Edit2.Text)
      .Display(ExibeResultado)
      .NomeCompleto
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: FPessoa := TControllerPessoa.New.Pessoa(tpFisica);
    1: FPessoa := TControllerPessoa.New.Pessoa(tpJuridica);
  end;


end;

procedure TForm1.ExibeResultado(Value: string);
begin
  Memo1.Lines.Add(Value);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
end;

end.
