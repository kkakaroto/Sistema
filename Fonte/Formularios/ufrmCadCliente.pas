unit ufrmCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPai, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvBaseEdits, Vcl.Buttons, Vcl.ExtCtrls, Data.DB;

type
  TfrmCadCliente = class(TfrmCadPai)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

end.
