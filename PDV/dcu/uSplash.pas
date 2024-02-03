unit uSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls;

type
  TFrmSplash = class(TForm)
    PnlPrincipal: TPanel;
    PnlEsquerdo: TPanel;
    PnlDireito: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    BtnEntrar: TSpeedButton;
    Timer: TTimer;
    PBSplash: TProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSplash: TFrmSplash;

implementation

{$R *.dfm}

end.
