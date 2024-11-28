unit uMainFMX;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts, System.Rtti,
  FMX.Grid.Style, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, FMX.Objects, FMX.TreeView,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.StdCtrls, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid,
  Data.Bind.DBScope;

type
  TAcesso = class
  public
    TextoID: String;
    NumeroID: String;
    CheckedID: Boolean;
    constructor Create(const ATexto, ANumero: String; AChecked: Boolean);
  end;

type
  TfrmMain = class(TForm)
    lytMain: TLayout;
    lytLeft: TLayout;
    lytRight: TLayout;
    lytCenter: TLayout;
    rectLeft: TRectangle;
    rectCenter: TRectangle;
    rectRight: TRectangle;
    dbGrid: TGrid;
    dbGrid2: TGrid;
    btnSalvarBanco: TButton;
    treeView: TTreeView;
    treeViewItem: TTreeViewItem;
    treeViewItem2: TTreeViewItem;
    treeViewItem3: TTreeViewItem;
    treeViewItem4: TTreeViewItem;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    function CriarTreeViewItem(Parent: TTreeViewItem; const Text, NumeroID: String)
      : TTreeViewItem;
    procedure FormCreate(Sender: TObject);
    procedure treeViewChangeCheck(Sender: TObject);
  private
    { private declarations }
  public
    procedure ListartreeView;
    { public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

uses uModule;

{ CONSTRUCTOR DA CLASSE IDENTIFICADORA DOS ITENS }
constructor TAcesso.Create(const ATexto, ANumero: String; AChecked: Boolean);
begin
  TextoID := ATexto;
  NumeroID := ANumero;
  CheckedID := AChecked;
end;

function TfrmMain.CriarTreeViewItem(Parent: TTreeViewItem; const Text, NumeroID: String): TTreeViewItem;
var
  Item: TTreeViewItem;
begin
  Item := TTreeViewItem.Create(treeView);
  Item.Text := Text;

    If Assigned(Parent) then
      Item.Parent := Parent
    else
      TreeView.AddObject(Item);

  Item.TagObject := TAcesso.Create(Text, NumeroID, False);
  Result := Item;
end;

procedure TfrmMain.TreeViewChangeCheck(Sender: TObject);
var
  Item: TTreeViewItem;
  Acesso: TAcesso;
begin
  if Sender is TTreeViewItem then
  begin
    Item := TTreeViewItem(Sender);

    if Assigned(Item.TagObject) and (Item.TagObject is TAcesso) then
    begin
      Acesso := TAcesso(Item.TagObject);
      Acesso.CheckedID := Item.IsChecked;

    end;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  ListartreeView;
end;

{ DIREITOS DE ACESSO }
procedure TfrmMain.ListartreeView;
var

  { DECLARAÇÃO DOS NÓS }
  NoDashboard, NoCadastros, NoBasicos, NoClienteFornecedor, NoMercadorias,
    NoProdutos, NoFinanceiros, NoContas, NoFiscais, NoEtiquetas, NoChatBot,
    NoEntradas, NoEntrada, NoRepor, NoEstoque, NoSaidas, NoAdministracao,
    NoMovimentos, NoFinanceiro, NoConsultar, NoEcommerce, NoMoviContas,
    NoReceberPagar, NoBoletos, NoControleCheques, NoConferenciaCaixa,
    NoConciCartoes, NoSupriCaixa, NoCashback, NoCadastro, NoFiscal,
    NoNextPostos, NoCentralAcoes, NoCartaTroco, NoCombustivel,
    NoMoviCombustivel, NoMedicoes, NoCentral, NoCentralRela,
    NoNextPay: TTreeViewItem;
begin
  TreeView.Clear;

  // DASHBOARD
  NoDashboard := CriarTreeViewItem(nil, 'Dashboard', '01');
  CriarTreeViewItem(NoDashboard, 'Financeiro', '01.01');
  CriarTreeViewItem(NoDashboard, 'Operacional', '01.02');
  CriarTreeViewItem(NoDashboard, 'Fiscal', '01.03');

  // ADMINISTRAÇÃO
  NoAdministracao := CriarTreeViewItem(nil, 'Administração', '02');
  CriarTreeViewItem(NoAdministracao, 'Empresas', '02.01');
  CriarTreeViewItem(NoAdministracao, 'Funcionários', '02.02');
  CriarTreeViewItem(NoAdministracao, 'Configurações', '02.03');

  // CADASTROS
  NoCadastros := CriarTreeViewItem(nil, 'Cadastros', '03');

  // Básicos
  NoBasicos := CriarTreeViewItem(NoCadastros, 'Básicos', '03.01');
  CriarTreeViewItem(NoBasicos, 'Cidades', '03.01.01');

  // Clientes/Fornecedores
  NoClienteFornecedor := CriarTreeViewItem(NoBasicos, 'Clientes/Fornecedores',
    '03.01.02');
  CriarTreeViewItem(NoClienteFornecedor, 'Incluir/Alterar', '03.01.02.01');
  CriarTreeViewItem(NoClienteFornecedor, 'Excluir', '03.01.02.02');
  CriarTreeViewItem(NoClienteFornecedor, 'Alterar CPF/CNPJ já cadastrado',
    '03.01.02.03');
  CriarTreeViewItem(NoClienteFornecedor, 'Configurações', '03.01.02.04');
  CriarTreeViewItem(NoClienteFornecedor, 'Configurações: Habilitado',
    '03.01.02.05');
  CriarTreeViewItem(NoClienteFornecedor, 'Configurações: Forma Faturamento',
    '03.01.02.06');
  CriarTreeViewItem(NoClienteFornecedor, 'Configurações: Dias Prazo Boleto',
    '03.01.02.07');
  CriarTreeViewItem(NoClienteFornecedor, 'Configurações: Limite de Crédito',
    '03.01.02.08');
  CriarTreeViewItem(NoClienteFornecedor, 'Configurações: Limite de Débito',
    '03.01.02.09');
  CriarTreeViewItem(NoClienteFornecedor, 'Configurações: Bloquear por Dia',
    '03.01.02.10');
  CriarTreeViewItem(NoClienteFornecedor, 'Configurações: Tabela de Preço',
    '03.01.02.11');
  CriarTreeViewItem(NoClienteFornecedor, 'Tabela de Descontos', '03.01.02.12');
  CriarTreeViewItem(NoClienteFornecedor, 'Contas', '03.01.02.13');

  CriarTreeViewItem(NoBasicos, 'Transportadora', '03.01.03');
  CriarTreeViewItem(NoBasicos, 'Contabilista', '03.01.04');
  CriarTreeViewItem(NoBasicos, 'Configurações', '03.01.05');
  CriarTreeViewItem(NoBasicos, 'Cadastro de Veículos', '03.01.06');

  // Mercadorias e Serviços
  NoMercadorias := CriarTreeViewItem(NoCadastros,
    'Mercadorias e Serviços', '03.02');
  CriarTreeViewItem(NoMercadorias, 'Grupos', '03.02.01');
  CriarTreeViewItem(NoMercadorias, 'Sub-Grupos', '03.02.02');
  CriarTreeViewItem(NoMercadorias, 'Classes', '03.02.03');

  // Produtos e serviços
  NoProdutos := CriarTreeViewItem(NoMercadorias, 'Produtos/Serviços',
    '03.02.04');
  CriarTreeViewItem(NoProdutos, 'Incluir/Alterar', '03.02.04.01');
  CriarTreeViewItem(NoProdutos, 'Excluir', '03.02.04.02');
  CriarTreeViewItem(NoProdutos, 'Histórico de Custos', '03.02.04.03');
  CriarTreeViewItem(NoProdutos, 'Histórico de Custos: Manutenção',
    '03.02.04.04');
  CriarTreeViewItem(NoProdutos, 'Histórico de Preços', '03.02.04.05');
  CriarTreeViewItem(NoProdutos, 'Histórico de Preços: Manutenção',
    '03.02.04.06');
  CriarTreeViewItem(NoProdutos, 'Variação de Preços por Unidade',
    '03.02.04.07');
  CriarTreeViewItem(NoProdutos, 'E-Commerce', '03.02.04.08');
  CriarTreeViewItem(NoProdutos, 'Tributação', '03.02.04.09');
  CriarTreeViewItem(NoProdutos, 'Tributação: Manutenção', '03.02.04.10');
  CriarTreeViewItem(NoProdutos, 'Variações/Grade', '03.02.04.11');
  CriarTreeViewItem(NoProdutos, 'Variações/Grade: Manutenção', '03.02.04.12');
  CriarTreeViewItem(NoProdutos, 'Histórico de Compras', '03.02.04.13');
  CriarTreeViewItem(NoProdutos, 'Histórico de Vendas', '03.02.04.14');
  CriarTreeViewItem(NoProdutos, 'Estoque', '03.02.04.15');
  CriarTreeViewItem(NoProdutos, 'CashBack', '03.02.04.16');
  CriarTreeViewItem(NoProdutos, 'CashBack: Manutenção', '03.02.04.17');

  CriarTreeViewItem(NoMercadorias, 'Promoção', '03.02.05');
  CriarTreeViewItem(NoMercadorias, 'Configurações', '03.02.06');
  CriarTreeViewItem(NoMercadorias, 'Tabelas de Descontos', '03.02.07');

  // Financeiros
  NoFinanceiros := CriarTreeViewItem(NoCadastros, 'Financeiros', '03.03');

  // Contas
  NoContas := CriarTreeViewItem(NoFinanceiros, 'Contas', '03.03.01');
  CriarTreeViewItem(NoContas, 'Manutenções', '03.03.01.01');

  CriarTreeViewItem(NoFinanceiros, 'Plano de Contas', '03.03.02');
  CriarTreeViewItem(NoFinanceiros, 'Configurações', '03.03.03');
  CriarTreeViewItem(NoFinanceiros, 'PSP Pix', '03.03.04');
  CriarTreeViewItem(NoFinanceiros, 'Adquirentes', '03.03.05');
  CriarTreeViewItem(NoFinanceiros, 'Bandeiras', '03.03.06');
  CriarTreeViewItem(NoFinanceiros, 'Tarifas de Cartão', '03.03.07');
  CriarTreeViewItem(NoFinanceiros, 'Layout EDI', '03.03.08');

  // Fiscais
  NoFiscais := CriarTreeViewItem(NoCadastros, 'Fiscais', '03.04');
  CriarTreeViewItem(NoFiscais, 'COI', '03.04.01');
  CriarTreeViewItem(NoFiscais, 'Tabelas Fiscais', '03.04.02');
  CriarTreeViewItem(NoFiscais, 'Regras Fiscais', '03.04.03');
  CriarTreeViewItem(NoFiscais, 'Conversões de CFOP nas Compras', '03.04.04');
  CriarTreeViewItem(NoFiscais, 'Campos Permitidos CCe', '03.04.05');

  // Etiquetas
  NoEtiquetas := CriarTreeViewItem(NoCadastros, 'Etiquetas', '03.05');
  CriarTreeViewItem(NoEtiquetas, 'Cadastrais', '03.05.01');

  // Chat-Bot
  NoChatBot := CriarTreeViewItem(NoCadastros, 'Chat Bot', '03.06');
  CriarTreeViewItem(NoChatBot, 'Setor', '03.06.01');
  CriarTreeViewItem(NoChatBot, 'Funcionário - Setor', '03.06.02');
  CriarTreeViewItem(NoChatBot, 'Chat Menu', '03.06.03');
  CriarTreeViewItem(NoChatBot, 'Status do Bot', '03.06.04');

  // MOVIMENTOS
  NoMovimentos := CriarTreeViewItem(nil, 'Movimentos', '04');

  // Entradas de Mercadorias
  NoEntradas := CriarTreeViewItem(NoMovimentos,
    'Entradas de Mercadorias', '04.01');
  NoEntrada := CriarTreeViewItem(NoEntradas, 'Nova Entrada', '04.01.01');
  CriarTreeViewItem(NoEntrada, 'Lançamento Retroativo', '04.01.01.01');
  CriarTreeViewItem(NoEntrada, 'Marcar Nota como Conferida', '04.01.01.02');

  NoRepor := CriarTreeViewItem(NoEntradas, 'Produtos a Repor', '04.01.03');
  CriarTreeViewItem(NoRepor, 'Produtos a Repor - Incluir', '04.01.03.01');

  // Estoque
  NoEstoque := CriarTreeViewItem(NoMovimentos, 'Estoque', '04.02');
  CriarTreeViewItem(NoEstoque, 'Consultar Estoque', '04.02.01');
  CriarTreeViewItem(NoEstoque, 'Auditoria de Estoque', '04.02.02');
  CriarTreeViewItem(NoEstoque, 'Ajuste de Entrada', '04.02.03');
  CriarTreeViewItem(NoEstoque, 'Ajuste de Saída', '04.02.04');
  CriarTreeViewItem(NoEstoque, 'Contagem de Estoque', '04.02.05');

  // Saídas de mercadorias
  NoSaidas := CriarTreeViewItem(NoMovimentos, 'Saídas de Mercadorias', '04.03');
  CriarTreeViewItem(NoSaidas, 'Nova Saída', '04.03.01');
  CriarTreeViewItem(NoSaidas, 'Frente de Caixa', '04.03.02');
  CriarTreeViewItem(NoSaidas, 'Entrega Imediata', '04.03.03');

  NoConsultar := CriarTreeViewItem(NoSaidas, 'Consultar Lançamentos',
    '04.03.04');
  CriarTreeViewItem(NoConsultar, 'Excluir Lançamento', '04.03.04.01');
  CriarTreeViewItem(NoConsultar, 'Cancelar NFe', '04.03.04.02');
  CriarTreeViewItem(NoConsultar, 'Expandir Acerto de Clientes', '04.03.04.03');
  CriarTreeViewItem(NoConsultar, 'Editar/Visualizar Venda', '04.03.04.04');

  CriarTreeViewItem(NoSaidas, 'Configurações', '04.03.05');
  CriarTreeViewItem(NoSaidas, 'Carta de Correção Eletrônica', '04.03.06');
  CriarTreeViewItem(NoSaidas, 'Faturar Orçamento', '04.03.07');

  // Devoluções
  CriarTreeViewItem(NoMovimentos, 'Devoluções', '04.04');

  // E-Commerce
  NoEcommerce := CriarTreeViewItem(NoMovimentos, 'E-Commerce', '04.05');
  CriarTreeViewItem(NoEcommerce, 'Tray', '04.05.01');
  CriarTreeViewItem(NoEcommerce, 'Mercado Livre', '04.05.02');

  // FINANCEIRO
  NoFinanceiro := CriarTreeViewItem(nil, 'Financeiro', '05');

  // Movimentação de Contas
  NoMoviContas := CriarTreeViewItem(NoFinanceiro,
    'Movimentação de Contas', '05.01');
  CriarTreeViewItem(NoMoviContas, 'Lançamento Retroativo', '05.01.01');
  CriarTreeViewItem(NoMoviContas, 'Exclusão de Lançamentos', '05.01.02');
  CriarTreeViewItem(NoMoviContas, 'Quebrar Valor de Lançamentos', '05.01.03');
  CriarTreeViewItem(NoMoviContas, 'Estorno de Baixa', '05.01.04');

  // Contas a Receber / Pagar
  NoReceberPagar := CriarTreeViewItem(NoFinanceiro,
    'Contas a Receber / Pagar', '05.02');
  CriarTreeViewItem(NoReceberPagar, 'Baixar Títulos', '05.02.01');
  CriarTreeViewItem(NoReceberPagar, 'Amortizar Títulos', '05.02.02');
  CriarTreeViewItem(NoReceberPagar, 'Conciliação Bancária', '05.02.03');

  CriarTreeViewItem(NoFinanceiro, 'Contas a Pagar', '05.03');

  // Controle de Boletos
  NoBoletos := CriarTreeViewItem(NoFinanceiro, 'Controle de Boletos', '05.04');
  CriarTreeViewItem(NoBoletos, 'Boleto Avulso', '05.04.01');
  CriarTreeViewItem(NoBoletos, 'Travar Consulta p/ somente Transportadora',
    '05.04.02');
  CriarTreeViewItem(NoBoletos, 'Travar Consulta p/ somente Clientes',
    '05.04.03');

  // Controle de Cheques
  NoControleCheques := CriarTreeViewItem(NoFinanceiro,
    'Controle de Cheques', '05.05');
  CriarTreeViewItem(NoControleCheques, 'Incluir', '05.05.01');
  CriarTreeViewItem(NoControleCheques, 'Alterar', '05.05.02');
  CriarTreeViewItem(NoControleCheques, 'Excluir', '05.05.03');
  CriarTreeViewItem(NoControleCheques, 'Alterar Status', '05.05.04');
  CriarTreeViewItem(NoControleCheques, 'Alterar Vencimento', '05.05.05');

  CriarTreeViewItem(NoFinanceiro, 'Controle de PIX', '05.06');
  CriarTreeViewItem(NoFinanceiro, 'Configurações', '05.07');

  // Conferência Caixa
  NoConferenciaCaixa := CriarTreeViewItem(NoFinanceiro,
    'Conferência Caixa', '05.08');
  CriarTreeViewItem(NoConferenciaCaixa, 'Conferido', '05.08.01');
  CriarTreeViewItem(NoConferenciaCaixa, 'Exportar Carta Frete', '05.08.02');
  CriarTreeViewItem(NoConferenciaCaixa, 'Exportar Cheque', '05.08.03');
  CriarTreeViewItem(NoConferenciaCaixa, 'Exportar Dinheiro', '05.08.04');
  CriarTreeViewItem(NoConferenciaCaixa, 'Conciliar Depósitos', '05.08.05');

  // Conciliação de Cartões
  NoConciCartoes := CriarTreeViewItem(NoFinanceiro,
    'Conciliação de Cartões', '05.09');
  CriarTreeViewItem(NoConciCartoes, 'Conciliação Bancária', '05.09.01');
  CriarTreeViewItem(NoConciCartoes, 'Cancelar', '05.09.02');
  CriarTreeViewItem(NoConciCartoes, 'Alterar Total', '05.09.03');
  CriarTreeViewItem(NoConciCartoes, 'Alterar Adquirente/Bandeira', '05.09.04');
  CriarTreeViewItem(NoConciCartoes, 'Incluir', '05.09.05');
  CriarTreeViewItem(NoConciCartoes, 'Revisar Tarifas', '05.09.06');
  CriarTreeViewItem(NoConciCartoes, 'Conciliação com Adquirente', '05.09.07');

  CriarTreeViewItem(NoFinanceiro, 'Créditos de Clientes', '05.10');

  // Suprimentos de Caixa
  NoSupriCaixa := CriarTreeViewItem(NoFinanceiro,
    'Suprimentos de Caixa', '05.11');
  CriarTreeViewItem(NoSupriCaixa, 'Gerar Transferências', '05.11.01');
  CriarTreeViewItem(NoSupriCaixa, 'Gerar Transferência entre Unidades',
    '05.11.02');
  CriarTreeViewItem(NoSupriCaixa, 'Confirmar Recebimentos', '05.11.03');

  // Controle de CashBack
  NoCashback := CriarTreeViewItem(NoFinanceiro, 'Controle de Cashback',
    '05.12');
  NoCadastro := CriarTreeViewItem(NoCashback, 'Cadastro de Clientes',
    '05.12.01');
  CriarTreeViewItem(NoCadastro, 'Manutenção', '05.12.01.01');
  CriarTreeViewItem(NoCadastro, 'Alterar Nível', '05.12.01.02');
  CriarTreeViewItem(NoCadastro, 'Alterar Documento', '05.12.01.03');

  // FISCAL
  NoFiscal := CriarTreeViewItem(nil, 'Fiscal', '06');
  CriarTreeViewItem(NoFiscal, 'Manifesto de Documentos', '06.01');
  CriarTreeViewItem(NoFiscal, 'Sped Fiscal', '06.02');
  CriarTreeViewItem(NoFiscal, 'Sped PIS COFINS', '06.03');
  CriarTreeViewItem(NoFiscal, 'Ajusta Documentos', '06.04');
  CriarTreeViewItem(NoFiscal, 'Ajusta Inutilização de Número', '06.05');

  // NEXT POSTOS
  NoNextPostos := CriarTreeViewItem(nil, 'Next Postos', '07');

  // Controle de Carta Frete
  var
  NoCartaFrete := CriarTreeViewItem(NoNextPostos,
    'Controle de Carta Frete', '07.01');
  CriarTreeViewItem(NoCartaFrete, 'Incluir', '07.01.01');
  CriarTreeViewItem(NoCartaFrete, 'Alterar', '07.01.02');
  CriarTreeViewItem(NoCartaFrete, 'Excluir', '07.01.03');
  CriarTreeViewItem(NoCartaFrete, 'Gerar Lote Faturamento', '07.01.04');
  CriarTreeViewItem(NoCartaFrete, 'Manutenções', '07.01.05');
  CriarTreeViewItem(NoCartaFrete, 'Conciliação', '07.01.06');

  // Controle de Cheque Troco
  NoCartaTroco := CriarTreeViewItem(NoNextPostos,
    'Controle de Cheque Troco', '07.02');
  CriarTreeViewItem(NoCartaTroco, 'Gerar Cheques', '07.02.01');
  CriarTreeViewItem(NoCartaTroco, 'Transferir entre Contas', '07.02.02');
  CriarTreeViewItem(NoCartaTroco, 'Transferir entre Unidades', '07.02.03');
  CriarTreeViewItem(NoCartaTroco, 'Cancelar Folha', '07.02.04');

  CriarTreeViewItem(NoNextPostos, 'Controle de Depósito Troco', '07.03');

  // Controle de Combustíveis
  NoCombustivel := CriarTreeViewItem(NoNextPostos,
    'Controle de Combustíveis', '07.05');

  // Movimentos
  NoMoviCombustivel := CriarTreeViewItem(NoCombustivel, 'Movimentos',
    '07.05.01');
  CriarTreeViewItem(NoMoviCombustivel, 'Lançamento sobre Rodas', '07.05.01.01');
  CriarTreeViewItem(NoMoviCombustivel, 'Lançamento Descargas', '07.05.01.02');
  CriarTreeViewItem(NoMoviCombustivel, 'Consultar Lançamentos', '07.05.01.03');
  CriarTreeViewItem(NoMoviCombustivel, 'Cancelar Lançamentos', '07.05.01.04');

  // Medições
  NoMedicoes := CriarTreeViewItem(NoCombustivel, 'Medições', '07.05.02');
  CriarTreeViewItem(NoMedicoes, 'Visualiza Diferenças', '07.05.02.01');
  CriarTreeViewItem(NoMedicoes, 'Consultar Lançamento', '07.05.02.02');

  CriarTreeViewItem(NoCombustivel, 'Tanques', '07.05.03');
  CriarTreeViewItem(NoCombustivel, 'Ajuste de Estoque', '07.05.04');

  CriarTreeViewItem(NoNextPostos, 'Controle de Concentradores', '07.06');
  CriarTreeViewItem(NoNextPostos, 'LMC', '07.07');

  // CENTRAL DE AÇÕES
  NoCentral := CriarTreeViewItem(nil, 'Central de Ações', '08');

  // Central de Relatórios
  NoCentralRela := CriarTreeViewItem(NoCentral,
    'Central de Relatórios', '08.01');
  CriarTreeViewItem(NoCentralRela, 'Grupos de Relatórios', '08.01.01');
  CriarTreeViewItem(NoCentralRela, 'Novo Relatório', '08.01.02');
  CriarTreeViewItem(NoCentralRela, 'Editar Relatório', '08.01.03');
  CriarTreeViewItem(NoCentralRela, 'Efetuar Download do Repositório',
    '08.01.04');
  CriarTreeViewItem(NoCentralRela, 'Enviar Relatório para Repositório',
    '08.01.05');

  CriarTreeViewItem(NoCentral, 'Central de Procedimentos', '08.02');

  // NEXT PAY
  NoNextPay := CriarTreeViewItem(nil, 'Next Pay', '09');
  CriarTreeViewItem(NoNextPay, 'Funções Gerenciais', '09.01');

end;

end.
