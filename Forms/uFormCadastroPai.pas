unit uFormCadastroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, uDmDados;

type
  TFormCadastroPai = class(TForm)
    pnCabecalho: TPanel;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    btnExcluir: TBitBtn;
    fdQryCadastro: TFDQuery;
    fdUpdCadastro: TFDUpdateSQL;
    fdTransaction: TFDTransaction;
    dsCadastro: TDataSource;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPai: TFormCadastroPai;

implementation

{$R *.dfm}

procedure TFormCadastroPai.btnNovoClick(Sender: TObject);
begin
  if not (fdQryCadastro.State in [dsEdit, dsInsert]) then begin //Se não estiver inserindo ou editando, então
    fdQryCadastro.Append;
    fdQryCadastro.Insert;
  end;
end;

procedure TFormCadastroPai.btnGravarClick(Sender: TObject);
begin
  if fdQryCadastro.State in [dsEdit, dsInsert] then begin
    fdTransaction.StartTransaction;
    fdQryCadastro.Post;
    fdTransaction.CommitRetaining;
    ShowMessage('Gravação Completada');
     fdQryCadastro.Append;
  end;
end;

procedure TFormCadastroPai.btnCancelarClick(Sender: TObject);
begin
  if fdQryCadastro.State in [dsEdit, dsInsert] then
    begin
      fdQryCadastro.Cancel;
      if fdTransaction.Active then
        fdTransaction.RollbackRetaining;
    end;

    fdQryCadastro.Append;
  end;

procedure TFormCadastroPai.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormCadastroPai.FormCreate(Sender: TObject);
begin
   fdQryCadastro.Open();
   fdQryCadastro.Append;
end;

procedure TFormCadastroPai.btnExcluirClick(Sender: TObject);
begin
  fdQryCadastro.Edit;
  fdQryCadastro.FieldByName('DT_EXCLUIDO').AsDateTime := Date;
  fdTransaction.StartTransaction;
  fdQryCadastro.Post;
  fdTransaction.CommitRetaining;
end;

end.
