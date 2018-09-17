inherited frmCadCliente: TfrmCadCliente
  Caption = 'frmCadCliente'
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCenter: TPanel
    ExplicitLeft = 127
    ExplicitTop = 40
    ExplicitWidth = 523
    ExplicitHeight = 356
    object Label1: TLabel
      Left = 6
      Top = 9
      Width = 60
      Height = 13
      Caption = 'Razao Social'
    end
    object Label2: TLabel
      Left = 261
      Top = 9
      Width = 71
      Height = 13
      Caption = 'Nome Fantasia'
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 28
      Width = 227
      Height = 21
      DataField = 'NOME_PESSOA'
      DataSource = dsCadastro
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 6
      Top = 168
      Width = 227
      Height = 21
      DataField = 'ENDERECO_PESSOA_ENDERECO'
      DataSource = dsEndereco
      TabOrder = 1
    end
  end
  object DBEdit2: TDBEdit [3]
    Left = 382
    Top = 69
    Width = 227
    Height = 21
    DataField = 'NOME_PESSOA'
    DataSource = dsCadastro
    TabOrder = 3
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
