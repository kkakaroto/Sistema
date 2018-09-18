unit ufrmCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPai, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvBaseEdits, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, udmCadCliente, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, JvDBControls;

type
  TfrmCadCliente = class(TfrmCadPai)
    dsEndereco: TDataSource;
    pcPessoa: TPageControl;
    Label1: TLabel;
    dbeRazaoSocial: TDBEdit;
    Label2: TLabel;
    dbeNomeFantasia: TDBEdit;
    tsPrincipal: TTabSheet;
    tsEndereco: TTabSheet;
    TabSheet3: TTabSheet;
    dbeEndereco: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    dbeComplemento: TDBEdit;
    Label11: TLabel;
    dbceCodCidade: TJvDBComboEdit;
    dbeCidade: TDBEdit;
    dbeUf: TDBEdit;
    Label12: TLabel;
    dbeNumero: TDBEdit;
    dbeBairro: TDBEdit;
    JvDBGrid1: TJvDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

procedure TfrmCadCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
  frmCadCliente := nil;
end;

procedure TfrmCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
  dmCadCliente := TdmCadCliente.Create(self); // Instanciar DM
  self.fdmCadPai := dmCadCliente;

  with dmCadCliente do
  begin
    QryCadastro.Close;
    QryCadastro.Open;
    QryEndereco.Close;
    QryEndereco.Open;
{    QryTelefone.Close;
    QryTelefone.Open;
    QryEmail.Close;
    QryEmail.Open;
}  end;
end;

end.
