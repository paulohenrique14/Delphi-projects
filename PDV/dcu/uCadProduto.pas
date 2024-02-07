unit uCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPadrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.WinXPanels, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, System.ImageList, Vcl.ImgList;

type
  TFrmPadrao1 = class(TFrmPadrao)
    Label1: TLabel;
    DBProduto: TDBEdit;
    EdtCodigo: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEstoque: TDBEdit;
    Label4: TLabel;
    DBPrecoCusto: TDBEdit;
    Label5: TLabel;
    DBPrecoVenda: TDBEdit;
    Label6: TLabel;
    DBCodigoBarras: TDBEdit;
    Label7: TLabel;
    DBCodFornecedor: TDBEdit;
    Label8: TLabel;
    Button1: TButton;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadrao1: TFrmPadrao1;

implementation

{$R *.dfm}

procedure TFrmPadrao1.FormCreate(Sender: TObject);
begin
  LblTituloForm.Caption := 'Cadastro de produtos';

  FDCadastro.SQL.Text := 'SELECT * FROM PRODUTO';

  FDCadastro.Active := True;

end;

end.
