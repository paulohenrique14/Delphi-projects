unit uPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage;

type
  TFrmPadrao = class(TForm)
    PnlPrincipal: TPanel;
    PnlNavegacao: TPanel;
    PnlBotoes: TPanel;
    CPCardPanel: TCardPanel;
    CardCadastro: TCard;
    CardPesquisa: TCard;
    T: TDBGrid;
    BtnAdicionar: TButton;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    BtnEditar: TButton;
    BtnApagar: TButton;
    LblTituloForm: TLabel;
    FDCadastro: TFDQuery;
    DSCadastro: TDataSource;
    PnlResizeTela: TPanel;
    BtnResize: TImage;
    BtnFechar: TImage;
    BtnNoResize: TImage;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure DSCadastroStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnResizeClick(Sender: TObject);
    procedure BtnNoResizeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

{$R *.dfm}

uses uDm;

procedure TFrmPadrao.BtnAdicionarClick(Sender: TObject);
begin
  FDCadastro.Append;
end;

procedure TFrmPadrao.BtnApagarClick(Sender: TObject);
begin
  if (Application.MessageBox('Deseja Apagar o Registro?', 'Atenção!', MB_ICONQUESTION + MB_YESNO) = mrYes) then
    FDCadastro.Delete;
end;

procedure TFrmPadrao.BtnCancelarClick(Sender: TObject);
begin
  FDCadastro.Cancel;
end;

procedure TFrmPadrao.BtnEditarClick(Sender: TObject);
begin
  FDCadastro.Edit;
end;

procedure TFrmPadrao.BtnSalvarClick(Sender: TObject);
begin
  FDCadastro.Post;
end;

procedure TFrmPadrao.DSCadastroStateChange(Sender: TObject);
begin
  BtnCancelar.Enabled := DSCadastro.State in [dsEdit, dsInsert];
  BtnSalvar.Enabled   := DSCadastro.State in [dsEdit, dsInsert];

  BtnAdicionar.Enabled := DSCadastro.State = dsBrowse;
  BtnApagar.Enabled    := DSCadastro.State = dsBrowse;
  BtnEditar.Enabled    := DSCadastro.State = dsBrowse;

  if DSCadastro.State in [dsEdit, dsInsert] then
    CPCardPanel.ActiveCard := CardCadastro
  else
    CPCardPanel.ActiveCard := CardPesquisa;

end;

procedure TFrmPadrao.FormShow(Sender: TObject);
begin
  CPCardPanel.ActiveCard := CardPesquisa;
  FDCadastro.Active      := True;
end;

procedure TFrmPadrao.BtnNoResizeClick(Sender: TObject);
begin
  Self.Height := 650 ;
  Self.Width := 1050 ;

  Self.Position := poScreenCenter;

  BtnNoResize.Visible := False;
  BtnResize.Visible   := True;

end;

procedure TFrmPadrao.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPadrao.BtnResizeClick(Sender: TObject);
begin
  Self.Height := 900;
  Self.Width := 1650;

  Self.Position := poScreenCenter;

  BtnResize.Visible   := False;
  BtnNoResize.Visible := True
end;

end.
