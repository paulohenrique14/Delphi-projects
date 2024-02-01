unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Cadastros2: TMenuItem;
    Consultas1: TMenuItem;
    PnlPrincipal: TPanel;
    procedure Cadastros2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uPadrao, Data.DB;

procedure TFrmPrincipal.Cadastros2Click(Sender: TObject);
begin
  FrmPadrao := TFrmPadrao.Create(Self);
  try
    FrmPadrao.ShowModal;
  finally
    FreeAndNil(FrmPadrao);
  end;
end;

end.
