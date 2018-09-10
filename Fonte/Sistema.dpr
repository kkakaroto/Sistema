program Sistema;

uses
  Vcl.Forms,
  formPrincipal in 'Formularios\formPrincipal.pas' {frmPrincipal},
  udmConexao in 'DataModule\udmConexao.pas' {DataModule1: TDataModule},
  ufrmCadPai in 'Formularios\ufrmCadPai.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
