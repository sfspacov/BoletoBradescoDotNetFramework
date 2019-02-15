USE [master]
GO

/****** Object:  Database [dbBoleto]    Script Date: 08/02/2019 22:51:58 ******/
CREATE DATABASE [dbBoleto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbBoleto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\dbBoleto.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbBoleto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\dbBoleto_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [dbBoleto] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbBoleto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [dbBoleto] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [dbBoleto] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [dbBoleto] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [dbBoleto] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [dbBoleto] SET ARITHABORT OFF 
GO

ALTER DATABASE [dbBoleto] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [dbBoleto] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [dbBoleto] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [dbBoleto] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [dbBoleto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [dbBoleto] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [dbBoleto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [dbBoleto] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [dbBoleto] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [dbBoleto] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [dbBoleto] SET  DISABLE_BROKER 
GO

ALTER DATABASE [dbBoleto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [dbBoleto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [dbBoleto] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [dbBoleto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [dbBoleto] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [dbBoleto] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [dbBoleto] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [dbBoleto] SET RECOVERY FULL 
GO

ALTER DATABASE [dbBoleto] SET  MULTI_USER 
GO

ALTER DATABASE [dbBoleto] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [dbBoleto] SET DB_CHAINING OFF 
GO

ALTER DATABASE [dbBoleto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [dbBoleto] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [dbBoleto] SET  READ_WRITE 
GO


USE [dbBoleto]
GO

/****** Object:  Table [dbo].[BradescoIntegration]    Script Date: 08/02/2019 22:54:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BradescoIntegrations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [nvarchar](50) NOT NULL,
	[Token] [nvarchar](max) NOT NULL,
	[IsRequest] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[JsonContent] [nvarchar](max) NOT NULL,
	[UrlBoleto] [nvarchar](max) NULL,
 CONSTRAINT [PK_BradescoIntegrations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


INSERT INTO [dbo].[BradescoIntegrations]
VALUES
	(74976085,'65af91aa-631b-48f9-a552-29ef33e837ef',1,'2018-07-05 00:00:00.000','{"merchant_id":"","meio_pagamento":"300","pedido":{"numero":"74976085","valor":"1690","descricao":"Compra de produto online"},"comprador":{"nome":"Stephan Spakov","documento":"84271375756","endereco":{"cep":"72115010","logradouro":"QNB 01","numero":"5","complemento":"","bairro":"Taguatinga Norte","cidade":"Taguatinga","uf":"DF"},"ip":"192.168.41.143","user_agent":null},"boleto":{"beneficiario":"LEVEL UP INTERACTIVE S A","carteira":"26","nosso_numero":"","data_emissao":"2018-07-03","data_vencimento":"2018-07-05","valor_titulo":"1690","url_logotipo":null,"mensagem_cabecalho":null,"tipo_renderizacao":"2","instrucoes":{"instrucao_linha_1":"N�o receber valor diferente do impresso em Valor documento.","instrucao_linha_2":"�Caro Usu�rio:","instrucao_linha_3":"Sua conta LUG ser� creditada ap�s confirma��o do pagamento.","instrucao_linha_4":"Boleto sujeito �s normas vigentes de compensa��o banc�ria.","instrucao_linha_5":"Produto comprado: Compra de produto online","instrucao_linha_6":null,"instrucao_linha_7":null,"instrucao_linha_8":null,"instrucao_linha_9":null,"instrucao_linha_10":null,"instrucao_linha_11":null,"instrucao_linha_12":null},"registro":{"agencia_pagador":null,"razao_conta_pagador":null,"conta_pagador":null,"controle_participante":"Seguran�a arquivo remessa","aplicar_multa":false,"valor_percentual_multa":0,"valor_desconto_bonificacao":0,"debito_automatico":false,"rateio_credito":false,"endereco_debito_automatico":"2","tipo_ocorrencia":"01","especie_titulo":"99","primeira_instrucao":"00","segunda_instrucao":"00","valor_juros_mora":0,"data_limite_concessao_desconto":null,"valor_desconto":0,"valor_iof":0,"valor_abatimento":0,"tipo_inscricao_pagador":"01","sequencia_registro":"177988"}},"token_request_confirmacao_pagamento":"65af91aa-631b-48f9-a552-29ef33e837ef"}',null),
	(74976085,'65af91aa-631b-48f9-a552-29ef33e837ef',0,'2018-07-05 00:00:00.000','{"merchant_id":"","meio_pagamento":"300","pedido":{"numero":"74976085","valor":"1690","descricao":"Compra de produto online"},"boleto":{"linha_digitavel_formatada":"23793.38029  67497.608504  00000.355404  1  75760000001690","token":"ejgrdnE0VHlyUG9XNTB0L1JGVlhmb1N4RktuNlpzK25LWTBISko5Z216MDdWQ2NkMlV6ZXdRPT0.","url_acesso":"https://meiosdepagamentobradesco.com.br/apiboleto/Bradesco?token=ejgrdnE0VHlyUG9XNTB0L1JGVlhmb1N4RktuNlpzK25LWTBISko5Z216MDdWQ2NkMlV6ZXdRPT0.","linha_digitavel":"23793380296749760850400000355404175760000001690","data_atualizacao":null,"data_geracao":"2018-07-03T16:58:19","valor_titulo":"1690"},"status":{"codigo":"0","mensagem":"REGISTRO EFETUADO COM SUCESSO - CIP NAO CONFIRMADA","detalhes":null}}','https://meiosdepagamentobradesco.com.br/apiboleto/Bradesco?token=ejgrdnE0VHlyUG9XNTB0L1JGVlhmb1N4RktuNlpzK25LWTBISko5Z216MDdWQ2NkMlV6ZXdRPT0.')