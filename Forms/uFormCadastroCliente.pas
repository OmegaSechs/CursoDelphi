unit uFormCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormCadastroCliente = class(TFormCadastroPai)
    fdQryCadastroID_CLIENTE: TIntegerField;
    fdQryCadastroRAZAO_SOCIAL: TStringField;
    fdQryCadastroFANTASIA: TStringField;
    fdQryCadastroCPF_CNPJ: TStringField;
    fdQryCadastroTIPO_FJ: TStringField;
    fdQryCadastroNOME: TStringField;
    fdQryCadastroEMAIL: TStringField;
    fdQryCadastroSITE: TStringField;
    fdQryCadastroENDERECO: TStringField;
    fdQryCadastroCOMPLEMENTO: TStringField;
    fdQryCadastroNUMERO: TStringField;
    fdQryCadastroBAIRRO: TStringField;
    fdQryCadastroIE: TStringField;
    fdQryCadastroIM: TStringField;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    dsCadastro: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCliente: TFormCadastroCliente;

implementation

{$R *.dfm}


end.
