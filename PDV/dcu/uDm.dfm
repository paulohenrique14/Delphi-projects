object DMConexao: TDMConexao
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 480
  Width = 640
  object FDConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\TMJDA\OneDrive\'#193'rea de Trabalho\MasterView\Dev' +
        'elopment\Delphi\Delphi-projects\PDV\db\dados.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 304
    Top = 224
  end
end
