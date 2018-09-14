object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 176
  Width = 263
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=D:\Sistema\Banco\SISTEMA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3054'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
end
