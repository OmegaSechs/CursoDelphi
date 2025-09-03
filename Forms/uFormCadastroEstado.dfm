inherited FormCadastroEstado: TFormCadastroEstado
  Caption = 'Cadastro de Estados'
  ClientHeight = 210
  ClientWidth = 603
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 619
  ExplicitHeight = 249
  TextHeight = 15
  object Label2: TLabel [0]
    Left = 8
    Top = 120
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label1: TLabel [1]
    Left = 8
    Top = 56
    Width = 59
    Height = 15
    Caption = 'ID_ESTADO'
  end
  object Label3: TLabel [2]
    Left = 475
    Top = 120
    Width = 31
    Height = 15
    Caption = 'SIGLA'
    FocusControl = DBEdit3
  end
  inherited pnCabecalho: TPanel
    Width = 603
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 8
    ExplicitWidth = 603
    inherited btnNovo: TBitBtn
      Left = 0
      ExplicitLeft = 0
    end
    inherited btnGravar: TBitBtn
      Left = 81
      ExplicitLeft = 81
    end
    inherited btnCancelar: TBitBtn
      Left = 162
      ExplicitLeft = 162
    end
    inherited btnSair: TBitBtn
      Left = 527
      ExplicitLeft = 527
    end
    inherited btnExcluir: TBitBtn
      Left = 243
      ExplicitLeft = 243
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 8
    Top = 77
    Width = 67
    Height = 23
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [5]
    Left = 8
    Top = 141
    Width = 417
    Height = 23
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [6]
    Left = 475
    Top = 141
    Width = 34
    Height = 23
    DataField = 'SIGLA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ESTADO_ID'
    UpdateOptions.AutoIncFields = 'ID_ESTADO'
    SQL.Strings = (
      'select * from ESTADO')
    Top = 96
    object fdQryCadastroID_ESTADO: TFDAutoIncField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = False
      IdentityInsert = True
    end
    object fdQryCadastroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object fdQryCadastroSIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 2
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Top = 144
  end
  inherited fdTransaction: TFDTransaction
    Top = 192
  end
  inherited dsCadastro: TDataSource
    Top = 48
  end
end
