unit uModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.PGDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.FMXUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.VCLUI.Wait;

type
  TdtModule = class(TDataModule)
    DriverPG: TFDPhysPgDriverLink;
    Conn: TFDConnection;
    t117_direitos_acesso: TFDTable;
    t118_direitos_acesso_usuarios: TFDTable;
    dtSrc: TDataSource;
    dtSrc2: TDataSource;
    t117_direitos_acessot117_ca_codigo: TWideStringField;
    t117_direitos_acessot117_ca_descricao: TWideStringField;
    t117_direitos_acessot117_ca_nome_menu: TWideStringField;
    t118_direitos_acesso_usuariost003_nr_codigo: TIntegerField;
    t118_direitos_acesso_usuariost117_ca_codigo: TWideStringField;
    t118_direitos_acesso_usuariost118_ca_direito: TWideStringField;
    t118_direitos_acesso_usuariost118_dt_ultima_alteracao: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtModule: TdtModule;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

end.
