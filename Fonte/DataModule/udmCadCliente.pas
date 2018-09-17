unit udmCadCliente;

interface

uses
  System.SysUtils, System.Classes, udmCadPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, udmConexao, Vcl.Dialogs;

type
  TdmCadCliente = class(TdmCadPai)
    schadpPessoa: TFDSchemaAdapter;
    qryEndereco: TFDQuery;
    qryTelefone: TFDQuery;
    qryEmail: TFDQuery;
    dsPessoa: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryCadastroAfterInsert(DataSet: TDataSet);
    procedure qryCadastroNewRecord(DataSet: TDataSet);
    procedure qryCadastroReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure qryEnderecoBeforeEdit(DataSet: TDataSet);
    procedure qryEnderecoBeforeInsert(DataSet: TDataSet);
    procedure qryEnderecoNewRecord(DataSet: TDataSet);
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

procedure TdmCadCliente.DataModuleCreate(Sender: TObject);
begin
  inherited;
  self.tabela := 'PESSOA';
  self.campochave := 'AUTOINC_PESSOA';
  self.TipoCadastro := 'CLIENTE_PESSOA = ' + QuotedStr('S');
end;

procedure TdmCadCliente.qryCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with QryCadastro do
  Begin
    FieldByName('STATUS_PESSOA').Value := 1;
  End;
end;

procedure TdmCadCliente.qryCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CLIENTE_PESSOA').AsString :='S';
  DataSet.FieldByName('FORNECEDOR_PESSOA').AsString :='N';
  DataSet.FieldByName('FUNCIONARIO_PESSOA').AsString :='N';
  QryCadastro.Edit;
end;

procedure TdmCadCliente.qryCadastroReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
  inherited;
  Action := raAbort;
  DataSet.Edit;
  ShowMessage(e.Message);
end;

procedure TdmCadCliente.qryEnderecoBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  QryCadastro.Edit;
end;

procedure TdmCadCliente.qryEnderecoBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if QryCadastro.State = dsInsert then
    QryCadastro.Post;
    QryCadastro.Edit;
end;

procedure TdmCadCliente.qryEnderecoNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('COD_PESSOA_ENDERECO').AsInteger :=
    QryCadastro.FieldByName('CODIGO_PESSOA').AsInteger;
end;

end.
