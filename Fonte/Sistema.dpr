program Sistema;

uses
  Vcl.Forms,
  formPrincipal in 'Formularios\formPrincipal.pas' {frmPrincipal},
  udmConexao in 'DataModule\udmConexao.pas' {dmConexao: TDataModule},
  ufrmCadPai in 'Formularios\ufrmCadPai.pas' {frmCadPai},
  ufrmCadCliente in 'Formularios\ufrmCadCliente.pas' {frmCadCliente},
  udmCadPai in 'DataModule\udmCadPai.pas' {dmCadPai: TDataModule},
  udmCadCliente in 'DataModule\udmCadCliente.pas' {dmCadCliente: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
