object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 473
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 763
    Height = 57
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object sbCliente: TSpeedButton
      Left = 24
      Top = 16
      Width = 65
      Height = 22
      Caption = 'Cliente'
      Flat = True
      OnClick = sbClienteClick
    end
  end
end
