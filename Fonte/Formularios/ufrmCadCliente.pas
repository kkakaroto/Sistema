unit ufrmCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPai, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvBaseEdits, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, udmCadCliente;

type
  TfrmCadCliente = class(TfrmCadPai)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    dsEndereco: TDataSource;
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
