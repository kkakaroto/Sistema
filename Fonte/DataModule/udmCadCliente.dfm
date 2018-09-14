inherited dmCadCliente: TdmCadCliente
  Height = 326
  Width = 437
  inherited qryCadastro: TFDQuery
    SchemaAdapter = schadpPessoa
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
  object qryEndereco: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'COD_PESSOA_ENDERECO'
    MasterSource = dsPessoa
    MasterFields = 'AUTOINC_PESSOA'
    Connection = dmConexao.FDConnection
    SchemaAdapter = schadpPessoa
    FetchOptions.AssignedValues = [evDetailCascade]
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
      '    PESSOA_ENDERECO.UF_PESSOA_ENDERECO'
      'FROM PESSOA_ENDERECO'
      
        'LEFT JOIN PESSOA ON (PESSOA.ENDERECO_PESSOA = PESSOA_ENDERECO.AU' +
        'TOINC_PESSOA_ENDERECO)'
      
        'WHERE PESSOA_ENDERECO.COD_PESSOA_ENDERECO = :PESSOA.AUTONINC_PES' +
        'SOA')
    Left = 40
    Top = 88
    ParamData = <
      item
        Name = 'PESSOA.AUTONINC_PESSOA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryTelefone: TFDQuery
    IndexFieldNames = 'COD_PESSOA_TELEFONE'
    MasterSource = dsPessoa
    MasterFields = 'AUTOINC_PESSOA'
    Connection = dmConexao.FDConnection
    SchemaAdapter = schadpPessoa
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT '
      '    PESSOA_TELEFONE.AUTOINC_PESSOA_TELEFONE,'
      '    PESSOA_TELEFONE.COD_PESSOA_TELEFONE,'
      '    PESSOA_TELEFONE.NUMERO_PESSOA_TELEFONE,'
      '    PESSOA_TELEFONE.CELULAR_PESSOA_TELEFONE,'
      '    PESSOA_TELEFONE.OBSERVACAO_PESSOA_TELEFONE,'
      '    PESSOA_TELEFONE.PADRAO_PESSOA_TELEFONE,'
      '    PESSOA_TELEFONE.TIPO_PESSOA_TELEFONE,'
      '    PESSOA_TELEFONE.INCLUSAO_PESSOA_TELEFONE,'
      '    PESSOA_TELEFONE.ALTERACAO_PESSOA_TELEFONE,'
      '    PESSOA_TELEFONE.USUSARIOINCLUS_PESSOA_TELEFONE,'
      '    PESSOA_TELEFONE.USUARIOALTERA_PESSOA_TELEFONE'
      'FROM PESSOA_TELEFONE'
      
        'LEFT JOIN PESSOA ON (PESSOA.AUTOINC_PESSOA = PESSOA_TELEFONE.COD' +
        '_PESSOA_TELEFONE)'
      
        'WHERE PESSOA_TELEFONE.COD_PESSOA_TELEFONE = :PESSOA.AUTONINC_PES' +
        'SOA')
    Left = 40
    Top = 144
    ParamData = <
      item
        Name = 'PESSOA.AUTONINC_PESSOA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qryEmail: TFDQuery
    IndexFieldNames = 'COD_PESSOA_EMAIL'
    MasterSource = dsPessoa
    MasterFields = 'AUTOINC_PESSOA'
    Connection = dmConexao.FDConnection
    SchemaAdapter = schadpPessoa
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT '
      '    PESSOA_EMAIL.AUTOINC_PESSOA_EMAIL,'
      '    PESSOA_EMAIL.COD_PESSOA_EMAIL,'
      '    PESSOA_EMAIL.EMAIL_PESSOA_EMAIL,'
      '    PESSOA_EMAIL.PRINCIPAL_PESSOA_EMAIL,'
      '    PESSOA_EMAIL.COBRANCA_PESSOA_EMAIL,'
      '    PESSOA_EMAIL.DOCUMENTOSFISCAIS_PESSOA_EMAIL,'
      '    PESSOA_EMAIL.PEDIDOCOMPRA_PESSOA_EMAIL,'
      '    PESSOA_EMAIL.PEDIDOVENDA_PESSOA_EMAIL,'
      '    PESSOA_EMAIL.MALADIRETA_PESSOA_EMAIL,'
      '    PESSOA_EMAIL.INCLUSAO_PESSOA_EMAIL,'
      '    PESSOA_EMAIL.ALTERACAO_PESSOA_EMAIL,'
      '    PESSOA_EMAIL.USUARIOINCLUSAO_PESSOA_EMAIL,'
      '    PESSOA_EMAIL.USUARIOALTERACAO_PESSOA_EMAIL'
      'FROM PESSOA_EMAIL'
      
        'LEFT JOIN PESSOA ON (PESSOA.AUTOINC_PESSOA = PESSOA_EMAIL.COD_PE' +
        'SSOA_EMAIL)'
      'WHERE PESSOA_EMAIL.COD_PESSOA_EMAIL = :COD_PESSOA_EMAIL')
    Left = 40
    Top = 200
    ParamData = <
      item
        Name = 'COD_PESSOA_EMAIL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object FDQuery4: TFDQuery
    Left = 128
    Top = 88
  end
  object dsPessoa: TDataSource
    DataSet = qryCadastro
    Left = 240
    Top = 24
  end
  object schadpPessoa: TFDSchemaAdapter
    Left = 336
    Top = 24
  end
end
