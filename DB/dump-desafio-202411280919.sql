--
-- PostgreSQL database cluster dump
--

-- Started on 2024-11-28 09:19:29

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2024-11-28 09:19:29

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2024-11-28 09:19:30

--
-- PostgreSQL database dump complete
--

--
-- Database "desafio" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2024-11-28 09:19:30

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4904 (class 1262 OID 16404)
-- Name: desafio; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE desafio WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE desafio OWNER TO postgres;

\connect desafio

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 217 (class 1259 OID 16405)
-- Name: t003_nr_codigo; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t003_nr_codigo
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.t003_nr_codigo OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16406)
-- Name: t117_direitos_acesso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t117_direitos_acesso (
    t117_ca_codigo character varying(12) NOT NULL,
    t117_ca_descricao character varying(250),
    t117_ca_nome_menu character varying(50)
);


ALTER TABLE public.t117_direitos_acesso OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16409)
-- Name: t118_direitos_acesso_usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t118_direitos_acesso_usuarios (
    t003_nr_codigo integer NOT NULL,
    t117_ca_codigo character varying(12) NOT NULL,
    t118_ca_direito character varying(1),
    t118_dt_ultima_alteracao timestamp without time zone
);


ALTER TABLE public.t118_direitos_acesso_usuarios OWNER TO postgres;

--
-- TOC entry 4897 (class 0 OID 16406)
-- Dependencies: 218
-- Data for Name: t117_direitos_acesso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t117_direitos_acesso (t117_ca_codigo, t117_ca_descricao, t117_ca_nome_menu) FROM stdin;
04.01.01.19	      Aplicar Desconto Manual	
01	Dashboard	mDashboard
01.01	  Financeiro	MenuDashboard_Financeiro
01.02	  Operacional	MenuDashboard_Operacional
01.03	  Fiscal	MenuDashboard_Fiscal
02	Administração	mAdministracao
02.01	  Empresas	Menu_Administrador_Empresas
02.02	  Funcionários	Menu_Administrador_Funcionarios
02.03	  Configurações	Menu_Administrador_Config
03	Cadastros	mCadastros
03.01	  Básicos	MCadastros_Basicos
03.01.01	    Cidades	Menu_Cadastros_Basicos_Cidades
03.01.02	    Clientes/Fornecedores	Menu_Cadastros_Basicos_Clientes_Fornecedores
03.01.03	    Transportadora	Menu_Cadastros_Basicos_Transportadora
03.01.04	    Contabilista	Menu_Cadastros_Basicos_Contabilista
03.01.05	    Configurações	Menu_Cadastros_Basicos_Configuracoes
03.02	  Mercadorias e Serviços	MCadastros_Mercadorias
03.02.01	    Grupos	Menu_Cadastros_Mercadorias_Grupos
03.02.02	    Sub-Grupos	Menu_Cadastros_Mercadorias_SubGrupos
03.02.03	    Classes	Menu_Cadastros_Mercadorias_Classes
03.02.04	    Produtos/Serviços	Menu_Cadastros_Mercadorias_Mercadorias
03.02.05	    Promoção	Menu_Cadastros_Mercadorias_Promocao
03.02.06	    Configurações	Menu_Cadastros_MercadoriasConfig
03.03	  Financeiros	MCadastros_Financeiros
03.03.01	    Contas	Menu_Cadastros_Financeiros_Contas
03.03.02	    Plano de Contas	Menu_Cadastros_Financeiros_PlanoContas
03.03.03	    Configurações	Menu_Cadastros_Financeiros_Config
03.04	  Fiscais	MCadastros_Fiscais
03.04.01	    COI	Menu_Cadastros_Fiscais_COI
03.04.02	    Tabelas Fiscais	Menu_Cadastros_Fiscais_TabelasFiscais
03.04.03	    Regras Fiscais	Menu_Cadastros_Fiscais_RegrasFiscais
03.04.04	    Conversões de CFOP nas Compras	Menu_Cadastros_Fiscais_ConversoesCFOP
03.05	  Etiquetas	MCadastros_Etiquetas
03.05.01	    Cadastrais	Menu_Cadastros_Etiquetas_Cadastrais
03.06	  Chat Bot	MCadastros_chatBot
03.06.01	    Setor	Menu_Cadastros_ChatBot_Setor
03.06.02	    Funcionário - Setor	Menu_Cadastros_Chatbot_SetorFuncionario
03.06.03	    Chat Menu	Menu_Cadastros_Chatbot_ChatMenu
03.06.04	    Status do Bot	Menu_Cadastros_Chatbot_Status
04	Movimentos	mMovimentos
04.01	  Entradas de Mercadorias	mMovimentosEntradas
04.01.01	    Nova Entrada	Menu_Movimento_Entradas_RegistroEntrada
04.01.02	    Consultar Lançamentos	Menu_Movimento_Entradas_Consultar
04.02	  Estoque	Menu_Movimento_Estoque
04.02.01	    Consultar Estoque	Menu_Movimento_Estoque_Consultar
04.03	  Saídas de Mercadorias	mMovimentosSaidas
04.03.01	    Nova Saída	Menu_Movimento_Saidas_RegistroSaida
04.03.02	    Frente de Caixa	Menu_Movimento_Saidas_Frente_Caixa
04.03.03	    Entrega Imediata	Menu_Movimento_Saidas_EntregaImediata
04.03.04	    Consultar Lançamentos	Menu_Movimento_Saidas_Consultar
04.03.05	    Configurações	Menu_Movimento_Saidas_Configuracoes
04.04	  Devoluções	mMovimentosDevolucoes
04.05	  e-commerce	Menu_Movimento_ECommerce
04.05.01	    Tray	Menu_Movimento_ECommerce_Tray
04.05.02	    Mercado Livre	Menu_Movimento_ECommerce_Mercadolivre
05	Financeiro	mFinanceiro
05.01	  Movimentação de Contas	Menu_Financeiro_MovimentacaoContas
05.02	  Contas a Receber / Pagar	Menu_Financeiro_ContasAReceber
05.03	  Contas a Pagar	Menu_Financeiro_ContasAPagar
05.04	  Controle de Boletos	Menu_Financeiro_ControleBoletos
05.05	  Controle de Cheques	Menu_Financeiro_ControleCheques
05.06	  Controle de PIX	Menu_Financeiro_ControlePIX
05.07	  Configurações	Menu_Financeiro_Config
06	Fiscal	mFiscal
06.01	  Manifesto de Documentos	Menu_Fiscal_Manifesto
06.02	  Sped Fiscal	Menu_Fiscal_SpedFiscal
06.03	  Sped PIS COFINS	Menu_Fiscal_Sped_Pis_Cofins
07	Next Postos	mNextPostos
07.01	  Controle de Carta Frete	mNextPostosCartaFrete
07.02	  Controle de Cheque Troco	mNextPostosChequeTroco
07.03	  Controle de Depósito Troco	mNextPostosDepositoTroco
08	Central de Ações	mCentralAcoes
08.01	  Central de Relatórios	mCentralAcoesRelatorios
08.02	  Central de Procedimentos	mCentralAcoesProcedimentos
03.03.04	    PSP Pix	Menu_Cadastros_Financeiros_PSPPix
05.08	    Conferência  Caixa	Menu_Financeiro_ConferenciaCaixa
05.09	    Conciliação de Cartões	Menu_Financeiro_ConciliacaoCartoes
03.03.05	    Adquirentes	Menu_Cadastros_Financeiros_Adquirentes
03.03.06	    Bandeiras	Menu_Cadastros_Financeiros_Bandeiras
03.03.07	    Tarifas de Cartão	Menu_Cadastros_Financeiros_TarifasCartao
03.03.08	    Layout EDI	Menu_Cadastros_Financeiros_LayoutEdi
07.05	  Controle de Combustíveis	mNextPostosControleCombustivel
07.06	  Controle de Concentradores	mNextPostosControleConcentradores
03.01.06	  Cadastro de Veículos	Menu_Cadastros_Basicos_Veiculos
07.02.01	    Gerar Cheques	
07.02.02	    Transferir entre Contas	
07.02.03	    Transferir entre Unidades	
07.02.04	    Cancelar Folha	
07.05.01	    Movimentos	mNextPostosControleCombustivelMovimentos
07.05.01.01	      Lançamento Sobre Rodas	
07.05.01.02	      Lançamento Descargas	
07.05.02	    Medições	mNextPostosControleMedicoes
07.05.03	    Tanques	mNextPostosCadastroTanques
07.05.04	    Ajuste de Estoque	mNextPostosAjustarEstoque
07.05.02.01	    Visualiza Diferenças	
05.10	  Créditos de Clientes	Menu_Financeiro_CreditoClientes
05.11	  Suprimentos de Caixa	Menu_Financeiro_SuprimentosCaixa
05.11.01	    Gerar Transferências	
05.11.02	    Gerar Transferência entre Unidades	
05.11.03	    Confirmar Recebimentos	
06.04	  Ajusta Documentos	Menu_Fiscal_AjustaDocumentosNFe_NFCe
03.02.07	    Tabelas de Descontos	Menu_Tabelas_Descontos
03.04.05	    Campos Permitidos CCe	Menu_Cadastros_Fiscais_CamposPermitidosCCe
05.12	  Controle de Cashback	Menu_Financeiro_Controle_Cashback
03.02.04.01	      Incluir/Alterar	
03.02.04.02	      Excluir	
03.02.04.03	      Histórico de Custos	
03.02.04.04	      Histórico de Custos: Manutenção	
03.02.04.05	      Histórico de Preços	
03.02.04.06	      Histórico de Preços: Manutenção	
03.02.04.07	      Variação de Preços por Unidade	
03.02.04.08	      Variação de Preços por Unidade: Manutenção	
03.02.04.09	      E-Commerce	
03.02.04.10	      Tributação	
03.02.04.11	      Tributação: Manutenção	
03.02.04.12	      Variações/Grade	
03.02.04.13	      Variações/Grade: Manutenção	
03.02.04.14	      Histórico de Compras	
03.02.04.15	      Histórico de Vendas	
03.02.04.16	      Estoque	
03.02.04.17	      Cashback	
03.02.04.18	      Cashback: Manutenção	
05.12.01	    Cadastro de Clientes	
05.12.01.01	      Manutenção	
05.12.01.02	      Alterar Nível	
07.01.01	    Incluir	
07.01.02	    Alterar	
07.01.03	    Excluir	
07.01.04	    Gerar Lote Faturamento	
07.01.05	    Manutenções	
07.01.06	    Conciliação	
05.05.01	    Incluir	
05.05.02	    Alterar	
05.05.03	    Excluir	
05.05.04	    Alterar Status	
05.05.05	    Alterar Vencimento	
04.03.04.01	      Excluir Lançamento	
04.03.04.02	      Cancelar NFe	
06.05	  Ajusta Inutilização de Número	Menu_Fiscal_Inutilizacao
03.01.02.01	      Incluir/Alterar	
03.01.02.02	      Excluir	
03.01.02.03	      Alterar CPF/CNPJ já cadastrado	
03.01.02.04	      Configurações	
03.01.02.05	      Configurações: Habilitado	
03.01.02.06	      Configurações: Forma Faturamento	
03.01.02.07	      Configurações: Dias Prazo Boleto	
03.01.02.08	      Configurações: Limite de Crédito	
03.01.02.09	      Configurações: Limite de Débitos em Aberto	
03.01.02.10	      Configurações: Bloquear por dias vencido	
03.01.02.11	      Configurações: Tabela de Preços	
03.01.02.12	      Tabela de Descontos	
03.01.02.13	      Contas	
05.02.01	    Baixar Titulos	
05.02.02	    Amortizar Titulos	
05.02.03	    Conciliação Bancária	
05.04.01	    Boleto Avulso	
05.08.01	    Conferido	
05.08.02	    Exportar Carta Frete	
05.08.03	    Exportar Cheque	
05.08.04	    Exportar Dinheiro	
05.08.05	    Conciliar Depósitos	
08.01.01	    Grupos de Relatórios	
08.01.02	    Novo Relatório	
08.01.03	    Editar Relatório	
08.01.04	    Efetuar Download do Repositório	
08.01.05	    Enviar Relatório para Repositório	
05.09.01	    Conciliação Bancária	
05.09.02	    Cancelar	
05.09.03	    Alterar Total	
05.09.04	    Alterar Adquirente/Bandeira	
05.09.05	    Incluir	
05.09.06	    Revisar Tarifas	
05.09.07	    Conciliação com Adquirente	
07.07	  LMC	mNextPostosLMC
04.03.06	    Carta de Correção Eletrônica	Menu_CartaCorrecaoEletronica
07.05.01.03	      Consultar Lançamentos	
07.05.02.02	Consultar Lançamento	
05.12.01.03	      Alterar documento	
04.01.01.01	      Lançamento Retroativo	
04.03.01.01	      Lançamento Retroativo	
05.01.01	    Lançamento Retroativo	
05.01.02	    Exclusão de lançamentos	
05.04.02	    Travar consultar p/ somente transportadora	
05.04.03	    Travar consultar p/ somente cliente	
04.03.01.02	      Proibir incluir item no registro de saída	
04.02.03	    Ajuste de Entrada	Ajuste_Entrada_Estoque
04.02.04	    Ajuste de Saida	Ajuste_Saida_Estoque
03.03.01.01	      Manutenções	
07.05.01.04	      Cancelar Lançamentos	
04.03.04.03	      Expandir Acerto de Clientes	
04.03.04.04	      Editar/Visualizar Venda	
04.02.05	    Contagem de Estoque	Contagem_Estoque
05.01.03	    Quebrar Valor de lançamento	
04.03.07	    Faturar Orçamento	Faturar_Orcamento
05.01.04	    Estorno de Baixa	
09	NextPay	
09.01	  Funções Gerenciais	
04.01.01.02	      Marcar nota como conferida	
04.01.03	    Produtos a Repor	Menu_Movimento_Entradas_ProdutosARepor
04.01.03.01	      Produtos a Repor - Incluir	
\.


--
-- TOC entry 4898 (class 0 OID 16409)
-- Dependencies: 219
-- Data for Name: t118_direitos_acesso_usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t118_direitos_acesso_usuarios (t003_nr_codigo, t117_ca_codigo, t118_ca_direito, t118_dt_ultima_alteracao) FROM stdin;
1	04.01.01.19	S	2024-11-26 14:37:14.346
1	04.05.02	S	2024-11-26 14:37:14.381
1	05	S	2024-11-26 14:37:14.381
1	05.01	S	2024-11-26 14:37:14.381
1	05.02	S	2024-11-26 14:37:14.381
1	05.03	S	2024-11-26 14:37:14.397
1	05.04	S	2024-11-26 14:37:14.397
1	05.05	S	2024-11-26 14:37:14.397
1	05.06	S	2024-11-26 14:37:14.397
1	05.07	S	2024-11-26 14:37:14.397
1	06	S	2024-11-26 14:37:14.397
1	06.01	S	2024-11-26 14:37:14.397
1	06.02	S	2024-11-26 14:37:14.397
1	06.03	S	2024-11-26 14:37:14.397
1	07	S	2024-11-26 14:37:14.397
1	07.01	S	2024-11-26 14:37:14.397
1	07.02	S	2024-11-26 14:37:14.397
1	07.03	S	2024-11-26 14:37:14.397
1	08	S	2024-11-26 14:37:14.397
1	08.01	S	2024-11-26 14:37:14.397
1	08.02	S	2024-11-26 14:37:14.397
1	03.03.04	S	2024-11-26 14:37:14.397
1	05.08	S	2024-11-26 14:37:14.397
1	05.09	S	2024-11-26 14:37:14.397
1	03.03.05	S	2024-11-26 14:37:14.397
1	03.03.06	S	2024-11-26 14:37:14.397
1	03.03.07	S	2024-11-26 14:37:14.397
1	03.03.08	S	2024-11-26 14:37:14.397
1	07.05	S	2024-11-26 14:37:14.397
1	07.06	S	2024-11-26 14:37:14.397
1	03.01.06	S	2024-11-26 14:37:14.397
1	07.02.01	S	2024-11-26 14:37:14.397
1	07.02.02	S	2024-11-26 14:37:14.397
1	07.02.03	S	2024-11-26 14:37:14.397
1	07.02.04	S	2024-11-26 14:37:14.397
1	07.05.01	S	2024-11-26 14:37:14.397
1	07.05.01.01	S	2024-11-26 14:37:14.397
1	07.05.01.02	S	2024-11-26 14:37:14.397
1	07.05.02	S	2024-11-26 14:37:14.397
1	07.05.03	S	2024-11-26 14:37:14.397
1	07.05.04	S	2024-11-26 14:37:14.397
1	07.05.02.01	S	2024-11-26 14:37:14.397
1	05.10	S	2024-11-26 14:37:14.397
1	05.11	S	2024-11-26 14:37:14.397
1	05.11.01	S	2024-11-26 14:37:14.397
1	05.11.02	S	2024-11-26 14:37:14.397
1	05.11.03	S	2024-11-26 14:37:14.397
1	06.04	S	2024-11-26 14:37:14.397
1	03.02.07	S	2024-11-26 14:37:14.397
1	03.04.05	S	2024-11-26 14:37:14.397
1	05.12	S	2024-11-26 14:37:14.397
1	03.02.04.01	S	2024-11-26 14:37:14.397
1	03.02.04.02	S	2024-11-26 14:37:14.397
1	03.02.04.03	S	2024-11-26 14:37:14.397
1	03.02.04.04	S	2024-11-26 14:37:14.397
1	03.02.04.05	S	2024-11-26 14:37:14.397
1	03.02.04.06	S	2024-11-26 14:37:14.397
1	03.02.04.07	S	2024-11-26 14:37:14.397
1	03.02.04.08	S	2024-11-26 14:37:14.397
1	03.02.04.09	S	2024-11-26 14:37:14.397
1	03.02.04.10	S	2024-11-26 14:37:14.397
1	03.02.04.11	S	2024-11-26 14:37:14.397
1	03.02.04.12	S	2024-11-26 14:37:14.397
1	03.02.04.13	S	2024-11-26 14:37:14.397
1	03.02.04.14	S	2024-11-26 14:37:14.397
1	03.02.04.15	S	2024-11-26 14:37:14.397
1	03.02.04.16	S	2024-11-26 14:37:14.397
1	04.01.03.01	S	2024-11-26 14:37:14.413
1	01	S	2024-11-26 14:37:14.365
1	01.01	S	2024-11-26 14:37:14.365
1	01.02	S	2024-11-26 14:37:14.365
1	01.03	S	2024-11-26 14:37:14.365
1	02	S	2024-11-26 14:37:14.365
1	02.01	S	2024-11-26 14:37:14.365
1	02.02	S	2024-11-26 14:37:14.365
1	02.03	S	2024-11-26 14:37:14.365
1	03	S	2024-11-26 14:37:14.365
1	03.01	S	2024-11-26 14:37:14.365
1	03.01.01	S	2024-11-26 14:37:14.365
1	03.01.02	S	2024-11-26 14:37:14.365
1	03.01.03	S	2024-11-26 14:37:14.365
1	03.01.04	S	2024-11-26 14:37:14.365
1	03.01.05	S	2024-11-26 14:37:14.365
1	03.02	S	2024-11-26 14:37:14.365
1	03.02.01	S	2024-11-26 14:37:14.365
1	03.02.02	S	2024-11-26 14:37:14.365
1	03.02.03	S	2024-11-26 14:37:14.365
1	03.02.04	S	2024-11-26 14:37:14.365
1	03.02.05	S	2024-11-26 14:37:14.365
1	03.02.06	S	2024-11-26 14:37:14.365
1	03.03	S	2024-11-26 14:37:14.365
1	03.03.01	S	2024-11-26 14:37:14.381
1	03.03.02	S	2024-11-26 14:37:14.381
1	03.03.03	S	2024-11-26 14:37:14.381
1	03.04	S	2024-11-26 14:37:14.381
1	03.04.01	S	2024-11-26 14:37:14.381
1	03.04.02	S	2024-11-26 14:37:14.381
1	03.04.03	S	2024-11-26 14:37:14.381
1	03.04.04	S	2024-11-26 14:37:14.381
1	03.05	S	2024-11-26 14:37:14.381
1	03.05.01	S	2024-11-26 14:37:14.381
1	03.06	S	2024-11-26 14:37:14.381
1	03.06.01	S	2024-11-26 14:37:14.381
1	03.06.02	S	2024-11-26 14:37:14.381
1	03.06.03	S	2024-11-26 14:37:14.381
1	03.06.04	S	2024-11-26 14:37:14.381
1	04	S	2024-11-26 14:37:14.381
1	04.01	S	2024-11-26 14:37:14.381
1	04.01.01	S	2024-11-26 14:37:14.381
1	04.01.02	S	2024-11-26 14:37:14.381
1	04.02	S	2024-11-26 14:37:14.381
1	04.02.01	S	2024-11-26 14:37:14.381
1	04.03	S	2024-11-26 14:37:14.381
1	04.03.01	S	2024-11-26 14:37:14.381
1	04.03.02	S	2024-11-26 14:37:14.381
1	04.03.03	S	2024-11-26 14:37:14.381
1	04.03.04	S	2024-11-26 14:37:14.381
1	04.03.05	S	2024-11-26 14:37:14.381
1	04.04	S	2024-11-26 14:37:14.381
1	04.05	S	2024-11-26 14:37:14.381
1	04.05.01	S	2024-11-26 14:37:14.381
1	03.02.04.17	S	2024-11-26 14:37:14.397
1	03.02.04.18	S	2024-11-26 14:37:14.397
1	05.12.01	S	2024-11-26 14:37:14.397
1	05.12.01.01	S	2024-11-26 14:37:14.397
1	05.12.01.02	S	2024-11-26 14:37:14.397
1	07.01.01	S	2024-11-26 14:37:14.397
1	07.01.02	S	2024-11-26 14:37:14.397
1	07.01.03	S	2024-11-26 14:37:14.397
1	07.01.04	S	2024-11-26 14:37:14.397
1	07.01.05	S	2024-11-26 14:37:14.397
1	07.01.06	S	2024-11-26 14:37:14.397
1	05.05.01	S	2024-11-26 14:37:14.413
1	05.05.02	S	2024-11-26 14:37:14.413
1	05.05.03	S	2024-11-26 14:37:14.413
1	05.05.04	S	2024-11-26 14:37:14.413
1	05.05.05	S	2024-11-26 14:37:14.413
1	04.03.04.01	S	2024-11-26 14:37:14.413
1	04.03.04.02	S	2024-11-26 14:37:14.413
1	06.05	S	2024-11-26 14:37:14.413
1	03.01.02.01	S	2024-11-26 14:37:14.413
1	03.01.02.02	S	2024-11-26 14:37:14.413
1	03.01.02.03	S	2024-11-26 14:37:14.413
1	03.01.02.04	S	2024-11-26 14:37:14.413
1	03.01.02.05	S	2024-11-26 14:37:14.413
1	03.01.02.06	S	2024-11-26 14:37:14.413
1	03.01.02.07	S	2024-11-26 14:37:14.413
1	03.01.02.08	S	2024-11-26 14:37:14.413
1	03.01.02.09	S	2024-11-26 14:37:14.413
1	03.01.02.10	S	2024-11-26 14:37:14.413
1	03.01.02.11	S	2024-11-26 14:37:14.413
1	03.01.02.12	S	2024-11-26 14:37:14.413
1	03.01.02.13	S	2024-11-26 14:37:14.413
1	05.02.01	S	2024-11-26 14:37:14.413
1	05.02.02	S	2024-11-26 14:37:14.413
1	05.02.03	S	2024-11-26 14:37:14.413
1	05.04.01	S	2024-11-26 14:37:14.413
1	05.08.01	S	2024-11-26 14:37:14.413
1	05.08.02	S	2024-11-26 14:37:14.413
1	05.08.03	S	2024-11-26 14:37:14.413
1	05.08.04	S	2024-11-26 14:37:14.413
1	05.08.05	S	2024-11-26 14:37:14.413
1	08.01.01	S	2024-11-26 14:37:14.413
1	08.01.02	S	2024-11-26 14:37:14.413
1	08.01.03	S	2024-11-26 14:37:14.413
1	08.01.04	S	2024-11-26 14:37:14.413
1	08.01.05	S	2024-11-26 14:37:14.413
1	05.09.01	S	2024-11-26 14:37:14.413
1	05.09.02	S	2024-11-26 14:37:14.413
1	05.09.03	S	2024-11-26 14:37:14.413
1	05.09.04	S	2024-11-26 14:37:14.413
1	05.09.05	S	2024-11-26 14:37:14.413
1	05.09.06	S	2024-11-26 14:37:14.413
1	05.09.07	S	2024-11-26 14:37:14.413
1	07.07	S	2024-11-26 14:37:14.413
1	04.03.06	S	2024-11-26 14:37:14.413
1	07.05.01.03	S	2024-11-26 14:37:14.413
1	07.05.02.02	S	2024-11-26 14:37:14.413
1	05.12.01.03	S	2024-11-26 14:37:14.413
1	04.01.01.01	S	2024-11-26 14:37:14.413
1	04.03.01.01	S	2024-11-26 14:37:14.413
1	05.01.01	S	2024-11-26 14:37:14.413
1	05.01.02	S	2024-11-26 14:37:14.413
1	05.04.02	S	2024-11-26 14:37:14.413
1	05.04.03	S	2024-11-26 14:37:14.413
1	04.03.01.02	S	2024-11-26 14:37:14.413
1	04.02.03	S	2024-11-26 14:37:14.413
1	04.02.04	S	2024-11-26 14:37:14.413
1	03.03.01.01	S	2024-11-26 14:37:14.413
1	07.05.01.04	S	2024-11-26 14:37:14.413
1	04.03.04.03	S	2024-11-26 14:37:14.413
1	04.03.04.04	S	2024-11-26 14:37:14.413
1	04.02.05	S	2024-11-26 14:37:14.413
1	05.01.03	S	2024-11-26 14:37:14.413
1	04.03.07	S	2024-11-26 14:37:14.413
1	05.01.04	S	2024-11-26 14:37:14.413
1	09	S	2024-11-26 14:37:14.413
1	09.01	S	2024-11-26 14:37:14.413
1	04.01.01.02	S	2024-11-26 14:37:14.413
1	04.01.03	S	2024-11-26 14:37:14.413
\.


--
-- TOC entry 4905 (class 0 OID 0)
-- Dependencies: 217
-- Name: t003_nr_codigo; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t003_nr_codigo', 1, false);


--
-- TOC entry 4747 (class 2606 OID 16413)
-- Name: t117_direitos_acesso t117_direitos_acesso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t117_direitos_acesso
    ADD CONSTRAINT t117_direitos_acesso_pkey PRIMARY KEY (t117_ca_codigo);


--
-- TOC entry 4749 (class 2606 OID 16415)
-- Name: t118_direitos_acesso_usuarios t118_direitos_acesso_usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t118_direitos_acesso_usuarios
    ADD CONSTRAINT t118_direitos_acesso_usuarios_pkey PRIMARY KEY (t003_nr_codigo, t117_ca_codigo);


--
-- TOC entry 4750 (class 2606 OID 16416)
-- Name: t118_direitos_acesso_usuarios t118_direitos_acesso_usuarios_t117_ca_codigo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t118_direitos_acesso_usuarios
    ADD CONSTRAINT t118_direitos_acesso_usuarios_t117_ca_codigo_fkey FOREIGN KEY (t117_ca_codigo) REFERENCES public.t117_direitos_acesso(t117_ca_codigo);


-- Completed on 2024-11-28 09:19:30

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-11-28 09:19:30

--
-- PostgreSQL database cluster dump complete
--

