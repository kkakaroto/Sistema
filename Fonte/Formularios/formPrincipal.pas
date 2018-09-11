unit formPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    sbCliente: TSpeedButton;
    procedure sbClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ufrmCadCliente, udmConexao;

procedure TfrmPrincipal.sbClienteClick(Sender: TObject);
begin
  if frmCadCliente = nil then
    frmCadCliente := TfrmCadCliente.Create(self);
  if frmCadCliente.WindowState = wsMinimized then
    frmCadCliente.WindowState := wsNormal
  else
    frmCadCliente.Show;
end;

end.
