unit eInterface.Controller.Pessoa;

interface

uses
  eInterface.Controller.Interfaces, eInterface.Model.Interfaces,
  eInterface.Model.Pessoa.Factory;

type
  tControllerPessoa = class(TInterfacedObject, iControllerPessoa)

  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerPessoa;
    function Pessoa(Value: TTypePessoa): iPessoa;

  end;



implementation

{ tControllerPessoa }

constructor tControllerPessoa.Create;
begin

end;

destructor tControllerPessoa.Destroy;
begin

  inherited;
end;

class function tControllerPessoa.New: iControllerPessoa;
begin
  Result := Self.Create;
end;

function tControllerPessoa.Pessoa(Value: TTypePessoa): iPessoa;
begin
  case Value of
    tpFisica: Result := TModelPessoaFactory.New.PessoaFisica;
    tpJuridica: Result := TModelPessoaFactory.New.PessoaJuridica;
  end;
end;

end.
