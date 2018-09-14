unit udmCadCliente;

interface

uses
  System.SysUtils, System.Classes, udmCadPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, udmConexao;

type
  TdmCadCliente = class(TdmCadPai)
    qryEndereco: TFDQuery;
    qryTelefone: TFDQuery;
    qryEmail: TFDQuery;
    FDQuery4: TFDQuery;
    dsPessoa: TDataSource;
    schadpPessoa: TFDSchemaAdapter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCadCliente: TdmCadCliente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
