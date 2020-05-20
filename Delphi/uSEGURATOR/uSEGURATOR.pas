unit uSEGURATOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Samples.Spin, Vcl.ExtCtrls, Vcl.Buttons;

type
  TACMESegurator = class(TForm)
    pgcSeguratorMain: TPageControl;
    tbsDados: TTabSheet;
    grbVeiculo: TGroupBox;
    edtDesc: TEdit;
    lblDesc: TLabel;
    edtPlaca: TEdit;
    lblPlaca: TLabel;
    edtCor: TEdit;
    lblCor: TLabel;
    spnAno: TSpinEdit;
    lblAno: TLabel;
    spnModelo: TSpinEdit;
    lblModelo: TLabel;
    cmbEstilo: TComboBox;
    lblEstilo: TLabel;
    spnTempoCarta: TSpinEdit;
    lblTempoCarta: TLabel;
    rdgTipoVeiculo: TRadioGroup;
    rdgGaragem: TRadioGroup;
    rdgCondutor: TRadioGroup;
    rdgAlarme: TRadioGroup;
    rdgPagamento: TRadioGroup;
    rdgUso: TRadioGroup;
    edtValorBase: TEdit;
    lblValorBase: TLabel;
    tbsValor: TTabSheet;
    edtShowValorBase: TEdit;
    lblShowValorBase: TLabel;
    Label1: TLabel;
    edtValorSeguroBase: TEdit;
    lblValorSeguroBase: TLabel;
    Label2: TLabel;
    lblValorDesconto: TLabel;
    edtValorDesconto: TEdit;
    lblValorAcrescimo: TLabel;
    lblValorSeguro: TLabel;
    lblValorParce: TLabel;
    edtAcrescimo: TEdit;
    edtValorSeguro: TEdit;
    edtValorParcela: TEdit;
    bbtnNovoCalc: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ACMESegurator: TACMESegurator;

implementation

{$R *.dfm}

end.
