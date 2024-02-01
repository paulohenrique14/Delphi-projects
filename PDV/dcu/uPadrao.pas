unit uPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
    TImageList: TImageList;
    LblTituloForm: TLabel;
    FDCadastro: TFDQuery;
    DSCadastro: TDataSource;
    procedure BtnAdicionarClick(Sender: TObject);
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
  FDCadastro.Active := True;
end;

end.
