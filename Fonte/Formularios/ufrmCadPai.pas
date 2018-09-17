unit ufrmCadPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Data.DB, udmCadPai, udmConexao;

type
  TfrmCadPai = class(TForm)
    pnlTop: TPanel;
    Panel2: TPanel;
    pnlNavegacao: TPanel;
    sbPrimeiro: TSpeedButton;
    sbAnterior: TSpeedButton;
    sbProximo: TSpeedButton;
    sbUltimo: TSpeedButton;
    ceAutoInc: TJvCalcEdit;
    btIncluir: TButton;
    btGravar: TButton;
    btCanelar: TButton;
    btExcluir: TButton;
    dsCadastro: TDataSource;
    pnlCenter: TPanel;
    procedure btIncluirClick(Sender: TObject);
    procedure dsCadastroStateChange(Sender: TObject);
    procedure btCanelarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure pnlTopExit(Sender: TObject);
    procedure Navegacao(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fdmCadPai: TdmCadPai;   // Variavel : Classe -- vinculando ao DM
  end;

var
  frmCadPai: TfrmCadPai;

implementation

{$R *.dfm}

procedure TfrmCadPai.btCanelarClick(Sender: TObject);
begin
  if (fdmCadPai.QryCadastro.State in [dsInsert, dsedit]) then
    fdmCadPai.QryCadastro.Cancel;
end;

procedure TfrmCadPai.btGravarClick(Sender: TObject);
begin
  ceAutoInc.SetFocus;
end;

procedure TfrmCadPai.btIncluirClick(Sender: TObject);
begin
  pnlTop.OnExit := nil;
  try
  ceAutoInc.AsInteger := 0;
  fdmCadPai.QryCadastro.Insert;
  finally
   pnlTop.OnExit := pnlTopExit;
  end;
end;

procedure TfrmCadPai.dsCadastroStateChange(Sender: TObject);
begin
  ceAutoInc.Enabled := dsCadastro.DataSet.State = dsBrowse;
  btIncluir.Enabled := (dsCadastro.DataSet.State = dsBrowse);
  btExcluir.Enabled := (dsCadastro.DataSet.State = dsBrowse);
  btGravar.Enabled := (dsCadastro.DataSet.State in [dsEdit, dsInsert]);
  btCanelar.Enabled := (dsCadastro.DataSet.State in [dsEdit, dsInsert]);
//  BitBtnPesquisar.Enabled := (dsCadastro.DataSet.State = dsBrowse);
  sbPrimeiro.Visible := (dsCadastro.DataSet.State = dsBrowse);
  sbAnterior.Enabled := (dsCadastro.DataSet.State = dsBrowse);
  sbProximo.Enabled := (dsCadastro.DataSet.State = dsBrowse);
  sbUltimo.Enabled := (dsCadastro.DataSet.State = dsBrowse);
end;

procedure TfrmCadPai.Navegacao(Sender: TObject);
begin
  if sender = sbPrimeiro then
    fdmCadPai.Navegar(0)
  else if sender = sbUltimo then
    fdmCadPai.Navegar(1)
  else if sender = sbAnterior then
    fdmCadPai.Navegar(2)
  else if sender = sbProximo then
    fdmCadPai.Navegar(3);

  ceAutoInc.AsInteger := fdmCadPai.Codigo;
  pnlTopExit(pnlTop);
end;

procedure TfrmCadPai.pnlTopExit(Sender: TObject);
begin
  with fdmCadPai.QryCadastro do
  Begin
    Close;
    ParamByName('CODIGO').AsInteger := ceAutoInc.AsInteger; //Declara o campo do panel que vai ser referenciado
    Open;
  End
end;

end.
