unit udmCadPai;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmCadPai = class(TDataModule)
    qryCadastro: TFDQuery;
    qryNavegar: TFDQuery;
    procedure Navegar(Botao:Integer);
  private
    { Private declarations }
    varTabela: string; //tabela chamada
    varCampochave: string; //chave primaria
    varTipoCadastro: string; //Cliente,Fornecedor...
    VarCodigo: Integer;
  public
    { Public declarations }
    property Tabela:string read varTabela write varTabela;
    property TipoCadastro:string read varTipoCadastro write varTipoCadastro;
    property CampoChave:string read varCampochave write varCampochave;
    property Codigo:integer read varCodigo write varCodigo;
  end;

var
  dmCadPai: TdmCadPai;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses udmConexao;

{$R *.dfm}

{ TdmCadPai }

procedure TdmCadPai.Navegar(Botao: Integer);
begin
  QryCadastro.Open();
  QryNavegar.Close;
  case Botao of
    0: QryNavegar.SQL.Text := 'select first 1 '+tabela+'.'+campochave+
     ' CODIGO' + ' from '+tabela+' where '+TipoCadastro+
     ' order by '+tabela+'.'+campochave;

    1: QryNavegar.SQL.Text := 'select first 1 '+tabela+'.'+campochave+' CODIGO' +
    ' from '+tabela+' where '+TipoCadastro +' order by '+tabela+'.'+campochave+' desc';

    2: QryNavegar.SQL.Text := 'select first 1 '+tabela+'.'+campochave+' CODIGO' +
    ' from '+tabela+' where (('+tabela+'.'+campochave+' < '+IntToStr(Codigo) + ')' +
    'and '+TipoCadastro+
    '  or ('+tabela+'.'+campochave+' = '+ '(select first 1 '+tabela+'.'+campochave+' CODIGO' +
    ' from '+tabela+' where '+TipoCadastro+' order by '+tabela+'.'+campochave+' )))'+
    ' order by '+tabela+'.'+campochave+' desc';

    3: QryNavegar.SQL.Text := 'select first 1 '+tabela+'.'+campochave+' CODIGO' +
    ' from '+tabela+' where (('+tabela+'.'+campochave+' > '+IntToStr(Codigo) + ')' +
    'and '+TipoCadastro+
    '  or ('+tabela+'.'+campochave+' = '+ '(select first 1 '+tabela+'.'+campochave+' CODIGO' +
    ' from '+tabela+' where '+TipoCadastro+' order by '+tabela+'.'+campochave+' desc'+' )))'+
    ' order by '+tabela+'.'+campochave;
  End;

  QryNavegar.Open();
  Codigo := QryNavegar.FieldByName('CODIGO').AsInteger;
  QryNavegar.Close;
end;

end.
