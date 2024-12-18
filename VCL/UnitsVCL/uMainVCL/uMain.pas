unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Threading, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmMain = class(TForm)
    pnlMain: TPanel;
    pnlRight: TPanel;
    pnlLeft: TPanel;
    treeView: TTreeView;
    Grid: TDBGrid;
    Grid2: TDBGrid;
    ConnMain: TFDConnection;
    Query: TFDQuery;
    dtSrcQuery: TDataSource;
    procedure btnSaveClick(Sender: TObject); // Evento do bot�o de salvar
  private
    procedure CheckAndInsertMissingRights;
    procedure SaveCheckboxStates;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses uModule;

{$R *.dfm}

procedure TfrmMain.CheckAndInsertMissingRights;
var
  CodeRight: string;
begin
  // Recuperar todos os t117_ca_codigo da tabela t117_direitos_acesso
  Query.SQL.Text := 'SELECT t117_ca_codigo FROM t117_direitos_acesso';
  Query.Open;
  while not Query.Eof do
  begin
    CodeRight := Query.FieldByName('t117_ca_codigo').AsString;

    // Verificar se o t117_ca_codigo j� existe em t118_direitos_acesso_usuarios
    Query.SQL.Text := 'SELECT COUNT(*) FROM t118_direitos_acesso_usuarios ' +
                                   'WHERE t117_ca_codigo = :t117_ca_codigo';
    Query.ParamByName('t117_ca_codigo').AsString := CodeRight;
    Query.Open;

    if Query.Fields[0].AsInteger = 0 then
    begin
      // Inserir o t117_ca_codigo na tabela t118_direitos_acesso_usuarios se n�o existir
      Query.SQL.Text := 'INSERT INTO t118_direitos_acesso_usuarios ' +
                                     '(t003_nr_codigo, t117_ca_codigo, t118_ca_direito, t118_dt_ultima_alteracao) ' +
                                     'VALUES (1, :t117_ca_codigo, ''N'', :t118_dt_ultima_alteracao)';
      Query.ParamByName('t117_ca_codigo').AsString := CodeRight;
      Query.ParamByName('t118_dt_ultima_alteracao').AsDateTime := Now;
      Query.ExecSQL;
    end;

    Query.Next;
  end;
  Query.Close;
end;

procedure TfrmMain.SaveCheckboxStates;
var
  Node: TTreeNode;
  CheckState: string;
  CodeRight: string;
begin
  // Percorrer todos os n�s do TreeView
  Node := treeView.Items.GetFirstNode;
  while Node <> nil do
  begin
    // Verificar se o checkbox est� marcado ou desmarcado
    if Node.Checked then
      CheckState := 'S' // Marcado
    else
      CheckState := 'N'; // Desmarcado

    // Aqui assumimos que o c�digo do direito est� armazenado em uma propriedade do Node,
    // como por exemplo, usando a propriedade `Data` para associar o c�digo ao n�.
    if Assigned(Node.Data) then
      CodeRight := string(Node.Data); // Recuperando o c�digo armazenado no Node

    // Atualizar a tabela t118_direitos_acesso_usuarios
    Query.SQL.Text := 'UPDATE t118_direitos_acesso_usuarios ' +
                                   'SET t118_ca_direito = :t118_ca_direito, ' +
                                   't118_dt_ultima_alteracao = :t118_dt_ultima_alteracao ' +
                                   'WHERE t003_nr_codigo = 1 AND t117_ca_codigo = :t117_ca_codigo';

    Query.ParamByName('t118_ca_direito').AsString := CheckState;
    Query.ParamByName('t117_ca_codigo').AsString := CodeRight; // C�DIGO DIREITO
    Query.ParamByName('t118_dt_ultima_alteracao').AsDateTime := Now; // DATETIME

    Query.ExecSQL;

    Node := Node.GetNext;
  end;
end;

procedure TfrmMain.btnSaveClick(Sender: TObject);
begin
  // Verifica e insere os direitos ausentes
  CheckAndInsertMissingRights;

  // Salva os estados dos checkboxes no banco de dados
  SaveCheckboxStates;
end;

end.
