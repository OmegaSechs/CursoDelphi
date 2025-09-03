unit uFormCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uLookup;

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
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    edtTipoFJ: TDBComboBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    fdQryCadastroID_CIDADE: TIntegerField;
    fdQryCadastroID_ESTADO: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label13: TLabel;
    Label14: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCliente: TFormCadastroCliente;

implementation

{$R *.dfm}


procedure TFormCadastroCliente.FormCreate(Sender: TObject);
begin
  inherited; //Essa linha significa que estou herdando o formulário de um formulário "pai"

end;

procedure TFormCadastroCliente.FormShow(Sender: TObject);
begin
  inherited;
  Lookup.fdQryEstados.Open();
  Lookup.fdQryEstados.FetchAll;

  Lookup.fdQryCidades.Open();
  Lookup.fdQryCidades.FetchAll;
end;

end.
