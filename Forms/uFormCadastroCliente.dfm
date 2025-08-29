inherited FormCadastroCliente: TFormCadastroCliente
  Caption = 'Cadastro de Clientes'
  ClientHeight = 339
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 378
  TextHeight = 15
  object Label3: TLabel [0]
    Left = 376
    Top = 64
    Width = 53
    Height = 15
    Caption = 'FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [1]
    Left = 656
    Top = 64
    Width = 53
    Height = 15
    Caption = 'CPF_CNPJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [2]
    Left = 8
    Top = 114
    Width = 41
    Height = 15
    Caption = 'TIPO_FJ'
  end
  object Label6: TLabel [3]
    Left = 136
    Top = 114
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DBEdit5
  end
  object Label7: TLabel [4]
    Left = 400
    Top = 114
    Width = 34
    Height = 15
    Caption = 'EMAIL'
    FocusControl = DBEdit6
  end
  object Label8: TLabel [5]
    Left = 8
    Top = 168
    Width = 22
    Height = 15
    Caption = 'SITE'
    FocusControl = DBEdit7
  end
  object Label9: TLabel [6]
    Left = 264
    Top = 168
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
    FocusControl = DBEdit8
  end
  object Label10: TLabel [7]
    Left = 8
    Top = 216
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
    FocusControl = DBEdit9
  end
  object Label11: TLabel [8]
    Left = 264
    Top = 216
    Width = 9
    Height = 15
    Caption = 'IE'
    FocusControl = DBEdit10
  end
  object Label12: TLabel [9]
    Left = 420
    Top = 216
    Width = 14
    Height = 15
    Caption = 'IM'
    FocusControl = DBEdit11
  end
  object Label1: TLabel [10]
    Left = 8
    Top = 59
    Width = 61
    Height = 15
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [11]
    Left = 75
    Top = 59
    Width = 84
    Height = 15
    Caption = 'RAZAO_SOCIAL'
    FocusControl = DBEdit2
  end
  object Label13: TLabel [12]
    Left = 592
    Top = 168
    Width = 37
    Height = 15
    Caption = 'Cidade'
  end
  object Label14: TLabel [13]
    Left = 592
    Top = 210
    Width = 35
    Height = 15
    Caption = 'Estado'
  end
  inherited pnCabecalho: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  object DBEdit3: TDBEdit [15]
    Left = 376
    Top = 80
    Width = 265
    Height = 23
    DataField = 'FANTASIA'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit4: TDBEdit [16]
    Left = 647
    Top = 80
    Width = 150
    Height = 23
    DataField = 'CPF_CNPJ'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object edtTipoFJ: TDBComboBox [17]
    Left = 8
    Top = 130
    Width = 113
    Height = 23
    DataField = 'TIPO_FJ'
    DataSource = dsCadastro
    Items.Strings = (
      'Fisica'
      'Juridica')
    TabOrder = 3
  end
  object DBEdit5: TDBEdit [18]
    Left = 127
    Top = 130
    Width = 250
    Height = 23
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object DBEdit6: TDBEdit [19]
    Left = 400
    Top = 130
    Width = 249
    Height = 23
    DataField = 'EMAIL'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object DBEdit7: TDBEdit [20]
    Left = 8
    Top = 184
    Width = 241
    Height = 23
    DataField = 'SITE'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit8: TDBEdit [21]
    Left = 264
    Top = 184
    Width = 306
    Height = 23
    DataField = 'ENDERECO'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBEdit9: TDBEdit [22]
    Left = 8
    Top = 232
    Width = 241
    Height = 23
    DataField = 'BAIRRO'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBEdit10: TDBEdit [23]
    Left = 264
    Top = 232
    Width = 150
    Height = 23
    DataField = 'IE'
    DataSource = dsCadastro
    TabOrder = 9
  end
  object DBEdit11: TDBEdit [24]
    Left = 420
    Top = 232
    Width = 150
    Height = 23
    DataField = 'IM'
    DataSource = dsCadastro
    TabOrder = 10
  end
  object DBEdit1: TDBEdit [25]
    Left = 8
    Top = 80
    Width = 61
    Height = 23
    DataField = 'ID_CLIENTE'
    DataSource = dsCadastro
    TabOrder = 11
  end
  object DBEdit2: TDBEdit [26]
    Left = 75
    Top = 80
    Width = 278
    Height = 23
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsCadastro
    TabOrder = 12
  end
  object DBLookupComboBox1: TDBLookupComboBox [27]
    Left = 592
    Top = 181
    Width = 145
    Height = 23
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.dsCidades
    TabOrder = 13
  end
  object DBLookupComboBox2: TDBLookupComboBox [28]
    Left = 592
    Top = 231
    Width = 57
    Height = 23
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'SIGLA'
    ListSource = Lookup.dsEstados
    TabOrder = 14
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTES_ID'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    object fdQryCadastroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryCadastroFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fdQryCadastroCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fdQryCadastroTIPO_FJ: TStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object fdQryCadastroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fdQryCadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryCadastroSITE: TStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fdQryCadastroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryCadastroCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
    end
    object fdQryCadastroNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQryCadastroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryCadastroIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object fdQryCadastroIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object fdQryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Top = 288
  end
end
