program PDV;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uPadrao in 'dcu\uPadrao.pas' {FrmPadrao},
  uDm in 'dcu\uDm.pas' {DMConexao: TDataModule},
  uCadPessoa in 'dcu\uCadPessoa.pas' {FrmCadPessoa},
  uSplash in 'dcu\uSplash.pas' {FrmSplash},
  uCadProduto in 'dcu\uCadProduto.pas' {FrmPadrao1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadPessoa, FrmCadPessoa);
  Application.CreateForm(TFrmPadrao, FrmPadrao);
  Application.CreateForm(TFrmPadrao1, FrmPadrao1);
  Application.Run;
end.
