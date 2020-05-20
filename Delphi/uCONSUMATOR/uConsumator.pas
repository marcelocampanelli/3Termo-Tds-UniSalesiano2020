unit uConsumator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Samples.Spin, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    pgcComsumator: TPageControl;
    tbsConsumo: TTabSheet;
    grbSala: TGroupBox;
    cmbSala: TComboBox;
    lblTempoSala: TLabel;
    spnSala: TSpinEdit;
    btnSala: TBitBtn;
    grbQuarto: TGroupBox;
    lblTempo: TLabel;
    cmbQuarto: TComboBox;
    spnQuarto: TSpinEdit;
    btnQuarto: TBitBtn;
    lblAparelhoSala: TLabel;
    lblAparelhoQuarto: TLabel;
    grbCozinha: TGroupBox;
    lblTempoCozinha: TLabel;
    lblAparelhoCozinha: TLabel;
    cmbCozinha: TComboBox;
    spinCozinha: TSpinEdit;
    btnCozinha: TBitBtn;
    grbBanheiro: TGroupBox;
    lblTempoBanheiro: TLabel;
    lblAparelhoBanheiro: TLabel;
    cmbBanheiro: TComboBox;
    spnBanheiro: TSpinEdit;
    btnBanheiro: TBitBtn;
    grbValor: TGroupBox;
    SpinEdit1: TSpinEdit;
    btnCalculo: TButton;
    StatusBar1: TStatusBar;
    tbsGastos: TTabSheet;
    ValorKW: TLabel;
    lblTempoTotal: TLabel;
    lblTotalGasto: TLabel;
    edtValorKW: TEdit;
    edtTempoTotal: TEdit;
    edtTotalGasto: TEdit;
    btnNovoCalc: TBitBtn;
    StaticText1: TStaticText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
