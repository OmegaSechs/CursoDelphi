object dmDados: TdmDados
  OnCreate = DataModuleCreate
  Height = 427
  Width = 898
  object fdCon: TFDConnection
    Params.Strings = (
      'Protocol=TCPIP'
      'Server=localhost'
      
        'Database=D:\Projetos\Estudo\Delphi\ProjetoCursoBasico\Banco\DADO' +
        'SCURSO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3050'
      'CharacterSet=wiN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 552
    Top = 208
  end
end
