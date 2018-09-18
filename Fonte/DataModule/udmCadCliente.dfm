inherited dmCadCliente: TdmCadCliente
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 326
  Width = 437
  inherited qryCadastro: TFDQuery
    AfterInsert = qryCadastroAfterInsert
    OnNewRecord = qryCadastroNewRecord
    CachedUpdates = True
    OnReconcileError = qryCadastroReconcileError
    SchemaAdapter = schadpPessoa
    FetchOptions.AssignedValues = [evDetailCascade]
    SQL.Strings = (
      'SELECT '
      '    PESSOA.AUTOINC_PESSOA,'
      '    PESSOA.NOME_PESSOA,'
      '    PESSOA.FANTASIA_PESSOA,'
      '    PESSOA.TIPO_PESSOA,'
      '    PESSOA.OBSERVACAO_PESSOA,'
      '    PESSOA.TELEFONE_PESSOA,'
      '    PESSOA.EMAIL_PESSOA,'
      '    PESSOA.ENDERECO_PESSOA,'
      '    PESSOA.PLANODECONTAS_PESSOA,'
      '    PESSOA.GRUPOCLIENTES_PESSOA,'
      '    PESSOA.STATUS_PESSOA,'
      '    PESSOA.TRIBUTACAO_PESSOA,'
      '    PESSOA.NOMEFANTASIA_PESSOA,'
      '    PESSOA.USUARIOALTERACAO_PESSOA,'
      '    PESSOA.USUARIOINCLUSAO_PESSOA,'
      '    PESSOA.CPF_PESSOA,'
      '    PESSOA.CNPJ_PESSOA,'
      '    PESSOA.RG_PESSOA,'
      '    PESSOA.IE_PESSOA,'
      '    PESSOA.CLIENTE_PESSOA,'
      '    PESSOA.FORNECEDOR_PESSOA,'
      '    PESSOA.FUNCIONARIO_PESSOA,'
      '    PESSOA.GRUPO_PESSOA'
      'FROM PESSOA'
      'where PESSOA.AUTOINC_PESSOA = :CODIGO')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
  end
  object schadpPessoa: TFDSchemaAdapter
    Left = 336
    Top = 24
  end
  object qryEndereco: TFDQuery
    BeforeInsert = qryEnderecoBeforeInsert
    BeforeEdit = qryEnderecoBeforeEdit
    OnNewRecord = qryEnderecoNewRecord
    CachedUpdates = True
    IndexFieldNames = 'COD_PESSOA_ENDERECO'
    MasterSource = dsPessoa
    MasterFields = 'AUTOINC_PESSOA'
    DetailFields = 'COD_PESSOA_ENDERECO'
    Connection = dmConexao.FDConnection
    SchemaAdapter = schadpPessoa
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT '
      '    PESSOA_ENDERECO.AUTOINC_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.COD_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.ENDERECO_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.NUMERO_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.BAIRRO_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.COMPLEMENTO_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.CIDADE_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.TELEFONE_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.PONTOREFERENCIA_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.TIPO_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.IMPRIMENOTAEND_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.REGIAO_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.INCLUSAO_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.ALTERACAO_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.USUARIOINCLUSAO_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.USUARIOALTERA_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.CEP_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.PADRAO_PESSOA_ENDERECO,'
      '    PESSOA_ENDERECO.UF_PESSOA_ENDERECO,'
      '    CIDADE.DESCRICAO_CIDADE,'
      '    UF.DESCRICAO_UF,'
      '    UF.AUTOINC_UF'
      'FROM PESSOA_ENDERECO '
      
        'left join cidade on (pessoa_endereco.cidade_pessoa_endereco = ci' +
        'dade.AUTOINC_cidade)'
      'left join uf on (cidade.uf_cidade = uf.AUTOINC_uf)'
      'where PESSOA_ENDERECO.COD_PESSOA_ENDERECO = :AUTOINC_PESSOA')
    Left = 40
    Top = 88
    ParamData = <
      item
        Name = 'AUTOINC_PESSOA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryTelefone: TFDQuery
    Left = 40
    Top = 152
  end
  object qryEmail: TFDQuery
    Left = 40
    Top = 216
  end
  object dsPessoa: TDataSource
    DataSet = qryCadastro
    Left = 232
    Top = 24
  end
end
