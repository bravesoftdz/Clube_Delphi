unit eInterface.Model.Interfaces;

interface

type
  tEvDisplay = procedure (Value: string) of object;

  iPessoa = interface
    ['{D7198F09-F216-4BF1-8BB4-FB6E8AC46180}']

    function Nome(Value: String): iPessoa; overload;
    function Nome: string; overload;

    function SobreNome(Value: String): iPessoa;
    function NomeCompleto: iPessoa;
    function Display(Value: tEvDisplay): iPessoa;
  end;

  iPessoaFactory = interface
    ['{3549CDC3-97AE-4EEB-AD44-68BD6D538383}']
    function PessoaFisica: iPessoa;
    function PessoaJuridica: iPessoa;
  end;


implementation

end.
