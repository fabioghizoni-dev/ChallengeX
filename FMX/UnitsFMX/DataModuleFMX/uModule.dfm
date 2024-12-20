object dtModule: TdtModule
  OnCreate = DataModuleCreate
  Height = 700
  Width = 898
  object DriverPG: TFDPhysPgDriverLink
    VendorHome = 'C:\Users\User\Desktop\ChallengeX\FMX\DprojFMX\ExeFMX'
    VendorLib = 'C:\Users\User\Desktop\ChallengeX\FMX\DprojFMX\ExeFMX\libpq.dll'
    Left = 40
    Top = 40
  end
  object Conn: TFDConnection
    Params.Strings = (
      'Database=desafio'
      'User_Name=postgres'
      'Password=123'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 112
    Top = 40
  end
  object t117_direitos_acesso: TFDTable
    Active = True
    IndexFieldNames = 't117_ca_codigo'
    Connection = Conn
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 't117_direitos_acesso'
    Left = 328
    Top = 288
    object t117_direitos_acessot117_ca_codigo: TWideStringField
      FieldName = 't117_ca_codigo'
      Origin = 't117_ca_codigo'
      Size = 12
    end
    object t117_direitos_acessot117_ca_descricao: TWideStringField
      FieldName = 't117_ca_descricao'
      Origin = 't117_ca_descricao'
      Size = 250
    end
    object t117_direitos_acessot117_ca_nome_menu: TWideStringField
      FieldName = 't117_ca_nome_menu'
      Origin = 't117_ca_nome_menu'
      Size = 50
    end
  end
  object t118_direitos_acesso_usuarios: TFDTable
    Active = True
    IndexFieldNames = 't003_nr_codigo;t117_ca_codigo'
    Connection = Conn
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 't118_direitos_acesso_usuarios'
    Left = 472
    Top = 288
    object t118_direitos_acesso_usuariost003_nr_codigo: TIntegerField
      FieldName = 't003_nr_codigo'
      Origin = 't003_nr_codigo'
    end
    object t118_direitos_acesso_usuariost117_ca_codigo: TWideStringField
      FieldName = 't117_ca_codigo'
      Origin = 't117_ca_codigo'
      Size = 12
    end
    object t118_direitos_acesso_usuariost118_ca_direito: TWideStringField
      FieldName = 't118_ca_direito'
      Origin = 't118_ca_direito'
      Size = 1
    end
    object t118_direitos_acesso_usuariost118_dt_ultima_alteracao: TSQLTimeStampField
      FieldName = 't118_dt_ultima_alteracao'
      Origin = 't118_dt_ultima_alteracao'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dtSrc: TDataSource
    DataSet = t117_direitos_acesso
    Left = 328
    Top = 360
  end
  object dtSrc2: TDataSource
    DataSet = t118_direitos_acesso_usuarios
    Left = 472
    Top = 360
  end
end
