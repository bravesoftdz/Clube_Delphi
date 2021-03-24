unit eInterface.Controller.Interfaces;

interface

uses
  eInterface.Model.Interfaces;

type
  TTypePessoa = (tpFisica, tpJuridica);

  iControllerPessoa = interface
    ['{D55E514F-1A88-4529-8993-46F91FF11E62}']
    function Pessoa(Value: TTypePessoa): iPessoa;
  end;

implementation

end.
