inherited frmCadCliente: TfrmCadCliente
  Caption = 'frmCadCliente'
  ClientHeight = 475
  ClientWidth = 729
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 737
  ExplicitHeight = 502
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 127
    Top = 47
    Width = 60
    Height = 13
    Caption = 'Raz'#227'o Social'
  end
  object Label2: TLabel [1]
    Left = 408
    Top = 47
    Width = 71
    Height = 13
    Caption = 'Nome Fantasia'
  end
  inherited pnlTop: TPanel
    Width = 729
  end
  inherited Panel2: TPanel
    Height = 434
  end
  object pcPessoa: TPageControl [4]
    Left = 127
    Top = 93
    Width = 602
    Height = 380
    ActivePage = tsEndereco
    TabOrder = 2
    object tsPrincipal: TTabSheet
      Caption = 'tsPrincipal'
      ExplicitWidth = 509
      ExplicitHeight = 276
    end
    object tsEndereco: TTabSheet
      Caption = 'tsEndereco'
      ImageIndex = 1
      ExplicitWidth = 517
      ExplicitHeight = 281
      object Label9: TLabel
        Left = 3
        Top = 2
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label10: TLabel
        Left = 3
        Top = 44
        Width = 65
        Height = 13
        Caption = 'Complemento'
      end
      object Label11: TLabel
        Left = 4
        Top = 87
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label12: TLabel
        Left = 314
        Top = 87
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object dbeEndereco: TDBEdit
        Left = 3
        Top = 17
        Width = 299
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO_PESSOA_ENDERECO'
        DataSource = dsEndereco
        TabOrder = 0
      end
      object dbeComplemento: TDBEdit
        Left = 3
        Top = 63
        Width = 299
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COMPLEMENTO_PESSOA_ENDERECO'
        DataSource = dsEndereco
        TabOrder = 1
      end
      object dbceCodCidade: TJvDBComboEdit
        Left = 3
        Top = 104
        Width = 68
        Height = 21
        DataField = 'CIDADE_PESSOA_ENDERECO'
        DataSource = dsEndereco
        ImageKind = ikEllipsis
        TabOrder = 2
      end
      object dbeCidade: TDBEdit
        Left = 77
        Top = 104
        Width = 229
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        DataField = 'DESCRICAO_CIDADE'
        DataSource = dsEndereco
        ReadOnly = True
        TabOrder = 3
      end
      object dbeUf: TDBEdit
        Left = 312
        Top = 104
        Width = 213
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        DataField = 'DESCRICAO_UF'
        DataSource = dsEndereco
        ReadOnly = True
        TabOrder = 4
      end
      object dbeNumero: TDBEdit
        Left = 312
        Top = 17
        Width = 58
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUMERO_PESSOA_ENDERECO'
        DataSource = dsEndereco
        TabOrder = 5
      end
      object dbeBairro: TDBEdit
        Left = 378
        Top = 17
        Width = 216
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO_PESSOA_ENDERECO'
        DataSource = dsEndereco
        TabOrder = 6
      end
      object JvDBGrid1: TJvDBGrid
        Left = 3
        Top = 144
        Width = 591
        Height = 207
        DataSource = dsEndereco
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'ENDERECO_PESSOA_ENDERECO'
            Title.Caption = 'Endere'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_PESSOA_ENDERECO'
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO_PESSOA_ENDERECO'
            Title.Caption = 'Bairro'
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPLEMENTO_PESSOA_ENDERECO'
            Title.Caption = 'Complemento'
            Width = 294
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE_PESSOA_ENDERECO'
            Title.Caption = 'Cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO_CIDADE'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o Cidade'
            Width = 204
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO_UF'
            Title.Caption = 'Descri'#231#227'o Uf'
            Width = 212
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      ExplicitWidth = 509
      ExplicitHeight = 276
    end
  end
  object dbeRazaoSocial: TDBEdit [5]
    Left = 127
    Top = 66
    Width = 258
    Height = 21
    DataField = 'NOME_PESSOA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object dbeNomeFantasia: TDBEdit [6]
    Left = 408
    Top = 66
    Width = 228
    Height = 21
    DataField = 'NOMEFANTASIA_PESSOA'
    DataSource = dsCadastro
    TabOrder = 4
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadCliente.qryCadastro
    Left = 288
  end
  object dsEndereco: TDataSource
    DataSet = dmCadCliente.qryEndereco
    Left = 176
  end
end
