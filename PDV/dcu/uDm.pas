unit uDm;

interface

uses
  System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.ASA,
  FireDAC.Phys.ASADef, Data.DbxSqlite, Data.SqlExpr;

type
  TDMConexao = class(TDataModule)
    FDConexao: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    const C_ArquivoConfiguracao = 'config.cfg';
    const C_CaminhoBanco        = 'C:\Users\TMJDA\OneDrive\�rea de Trabalho\MasterView\Development\Delphi\Delphi-projects\PDV\db\dados.db';
  public
    procedure CarregarConfiguracoes;
    procedure Conectar;
    procedure Desconectar;
  end;

var
  DMConexao: TDMConexao;

implementation

uses
  System.SysUtils;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMConexao }

procedure TDMConexao.CarregarConfiguracoes;
var
  mListaParametros: TStringList;
  I: Integer;
  mParametroNome: String;
  mParametroValor: String;
begin
  FDConexao.Params.Clear;

  if not FileExists(C_ArquivoConfiguracao) then
    raise Exception.Create('Favor ajustar o arquivo de configura��o');

  mListaParametros := TStringList.Create;
  try
    mListaParametros.LoadFromFile(C_ArquivoConfiguracao);

    for I := 0 to mListaParametros.Count -1 do
    begin
      if mListaParametros[I].IndexOf('=') > 1 then
      begin
        mParametroNome  := mListaParametros[I].Split(['='])[0].Trim;
        mParametroValor := mListaParametros[I].Split(['='])[1].Trim;

        FDConexao.Params.Add(mParametroNome + '=' + mParametroValor);
      end;
      FDConexao.Params.Add('Database' + '=' + C_CaminhoBanco);
    end;

  finally
    mListaParametros.Free;
  end;
end;

procedure TDMConexao.Conectar;
begin
  FDConexao.Connected := True;
end;

procedure TDMConexao.DataModuleCreate(Sender: TObject);
begin
  CarregarConfiguracoes;
  Conectar;
end;

procedure TDMConexao.DataModuleDestroy(Sender: TObject);
begin
  Desconectar;
end;

procedure TDMConexao.Desconectar;
begin
  FDConexao.Connected := False;
end;

end.
