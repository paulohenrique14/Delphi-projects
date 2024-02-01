program PDV;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uPadrao in 'dcu\uPadrao.pas' {FrmPadrao},
  uDm in 'dcu\uDm.pas' {DMConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPadrao, FrmPadrao);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.Run;
end.
