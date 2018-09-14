object frmCadPai: TfrmCadPai
  Left = 0
  Top = 0
  Caption = 'frmCadPai'
  ClientHeight = 397
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 644
    Height = 41
    Align = alTop
    TabOrder = 0
    OnExit = pnlTopExit
    ExplicitLeft = 248
    ExplicitTop = 72
    ExplicitWidth = 185
    object pnlNavegacao: TPanel
      Left = 400
      Top = 4
      Width = 142
      Height = 30
      TabOrder = 0
      object sbPrimeiro: TSpeedButton
        Left = 8
        Top = 4
        Width = 30
        Height = 22
        OnClick = Navegacao
      end
      object sbAnterior: TSpeedButton
        Left = 40
        Top = 4
        Width = 30
        Height = 22
        OnClick = Navegacao
      end
      object sbProximo: TSpeedButton
        Left = 72
        Top = 4
        Width = 30
        Height = 22
        OnClick = Navegacao
      end
      object sbUltimo: TSpeedButton
        Left = 104
        Top = 4
        Width = 30
        Height = 22
        OnClick = Navegacao
      end
    end
    object ceAutoInc: TJvCalcEdit
      Left = 8
      Top = 8
      Width = 113
      Height = 26
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 121
    Height = 356
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 1
    object btIncluir: TButton
      Left = 8
      Top = 16
      Width = 105
      Height = 25
      Caption = 'btIncluir'
      TabOrder = 0
      OnClick = btIncluirClick
    end
    object btGravar: TButton
      Left = 8
      Top = 47
      Width = 105
      Height = 25
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btGravarClick
    end
    object btCanelar: TButton
      Left = 8
      Top = 78
      Width = 105
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btCanelarClick
    end
    object btExcluir: TButton
      Left = 8
      Top = 109
      Width = 105
      Height = 25
      Caption = 'Excluir'
      TabOrder = 3
    end
  end
  object dsCadastro: TDataSource
    OnStateChange = dsCadastroStateChange
    Left = 280
    Top = 56
  end
end
