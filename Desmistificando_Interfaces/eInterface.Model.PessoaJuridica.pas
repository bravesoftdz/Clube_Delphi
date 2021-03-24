unit eInterface.Model.PessoaJuridica;

interface

uses
  eInterface.Model.Interfaces;

type
  TModelPessoaJuridica = class(TInterfacedObject, iPessoa)

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

constructor TModelPessoaJuridica.Create;
begin

end;

destructor TModelPessoaJuridica.Destroy;
begin
  inherited;
end;

function TModelPessoaJuridica.Display(Value: tEvDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := Value;
end;

class function TModelPessoaJuridica.New: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaJuridica.Nome(Value: String): iPessoa;
begin
  result := Self;
  FNome := Value;
end;

function TModelPessoaJuridica.Nome: string;
begin
  Result := FNome;
end;

function TModelPessoaJuridica.NomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(FNome + ' ' + FSobreNome + ' LTDA ME ');
end;

function TModelPessoaJuridica.SobreNome(Value: String): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.

