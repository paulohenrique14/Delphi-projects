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
    LoginPrompt = False
    Left = 320
    Top = 208
  end
end
