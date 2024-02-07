unit uSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.Imaging.pngimage;

type
  TFrmSplash = class(TForm)
    PnlPrincipal: TPanel;
    PnlEsquerdo: TPanel;
    PnlDireito: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Timer: TTimer;
    PBSplash: TProgressBar;
    LblStatus: TLabel;
    LblGithub: TLinkLabel;
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSplash: TFrmSplash;

implementation

{$R *.dfm}



procedure TFrmSplash.TimerTimer(Sender: TObject);
begin
  if PBSplash.Position < 100 then
  begin
    PBSplash.StepIt;

    case PBSplash.Position of
      0  : LBlStatus.Caption := 'Carregando propriedades';
      25 : LBlStatus.Caption := 'Carregando banco de dados';
      50 : LBlStatus.Caption := 'Carregando componentes';
      75 : LBlStatus.Caption := 'Abrindo tela...';
      99 : LBlStatus.Caption := 'Tudo pronto!';
    end;

  end
  else
    Close;

end;

end.
