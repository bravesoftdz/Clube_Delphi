unit eInterface.Model.PessoaFisica;

interface

uses
  eInterface.Model.Interfaces;

type
  TModelPessoaFisica = class(TInterfacedObject, iPessoa)

  private
    FDisplay: tEvDisplay;
    FNome: string;
    FSobreNome:String;
    function Nome(Value: String): iPessoa; overload;
    function Nome: string; overload;

    function SobreNome(Value: String): iPessoa;
    function NomeCompleto: iPessoa;
    function Display(Value: tEvDisplay): iPessoa;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iPessoa;
  end;

implementation

{ TModelPessoa }

constructor TModelPessoaFisica.Create;
begin

end;

destructor TModelPessoaFisica.Destroy;
begin

  inherited;
end;

function TModelPessoaFisica.Display(Value: tEvDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := Value;
end;

class function TModelPessoaFisica.New: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaFisica.Nome(Value: String): iPessoa;
begin
  result := Self;
  FNome := Value;
end;

function TModelPessoaFisica.Nome: string;
begin
  Result := FNome;
end;

function TModelPessoaFisica.NomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(FNome + ' ' + FSobreNome);
end;

function TModelPessoaFisica.SobreNome(Value: String): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.
