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
    TreeView1: TTreeView;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ConnMain: TFDConnection;
    Query: TFDQuery;
    dtSrcQuery: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uModule;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(frmMain);
  FreeAndNil(dtModule);
end;

end.
