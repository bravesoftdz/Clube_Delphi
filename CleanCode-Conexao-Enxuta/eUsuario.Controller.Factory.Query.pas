unit eUsuario.Controller.Factory.Query;

interface

uses
  eUsuario.Controller.Factory.Interfaces, eUsuario.Model.Conexao.Interfaces;

Type
  TControllerFactoryQuery = class(TInterfacedObject, iFactoryQuery)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iFactoryQuery;
      function Query(Connection : iConexao) : iQuery;
  end;

implementation

uses
  eUsuario.Model.Query.Firedac;

{ TControllerFactoryQuery }

constructor TControllerFactoryQuery.Create;
begin

end;

destructor TControllerFactoryQuery.Destroy;
begin

  inherited;
end;

class function TControllerFactoryQuery.New: iFactoryQuery;
begin
  Result := Self.Create;
end;

function TControllerFactoryQuery.Query(Connection : iConexao) : iQuery;
begin
  Result := TModelQueryFiredac.New(Connection);
end;

end.
