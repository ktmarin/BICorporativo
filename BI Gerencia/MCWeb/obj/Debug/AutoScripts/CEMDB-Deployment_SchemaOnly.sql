CREATE USER [sicapro] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
CREATE USER [rf] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
CREATE USER [dvargas] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
CREATE USER [cem] FOR LOGIN [cem] WITH DEFAULT_SCHEMA=[dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PER00](
	[IDPermiso] [int] NOT NULL,
	[IDModulo] [int] NULL,
	[Formulario] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[Tipo] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[Detalle] [nchar](50) COLLATE Modern_Spanish_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LS00](
	[iConsecutivo] [int] NOT NULL,
	[sBaseDatos] [nvarchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[sNombrebase] [nvarchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaCreacion] [datetime] NULL,
	[tactiva] [bit] NULL,
 CONSTRAINT [PK_LS00] PRIMARY KEY CLUSTERED 
(
	[iConsecutivo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LP00](
	[iLinea] [int] IDENTITY(1,1) NOT NULL,
	[sCodigo_Producto] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[sLista_Empaque] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[iRequerido] [int] NULL,
	[sDescripcion] [varchar](150) COLLATE Modern_Spanish_CI_AS NULL,
	[sCodigo_Barras] [varchar](40) COLLATE Modern_Spanish_CI_AS NULL,
	[sNombreColor] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[sQuienIngreso] [varchar](40) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaIngreso] [datetime] NULL,
	[sQuienModifico] [varchar](40) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaModifico] [datetime] NULL,
 CONSTRAINT [PK_LP00] PRIMARY KEY CLUSTERED 
(
	[iLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PER02](
	[IDLinea] [int] NOT NULL,
	[sCodigo_Usuario] [nchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[IDPermiso] [int] NULL,
	[QuienIngreso] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PER01](
	[IDModulo] [int] NOT NULL,
	[Detalle] [nchar](50) COLLATE Modern_Spanish_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PK01](
	[iLinea] [int] IDENTITY(1,1) NOT NULL,
	[sCodigo_Producto] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[sNombreLista] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[iRequerido] [int] NULL,
	[sCodigo] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[sDescripcion] [varchar](150) COLLATE Modern_Spanish_CI_AS NULL,
	[sCodigo_Barras] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_PK01] PRIMARY KEY CLUSTERED 
(
	[iLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PK00](
	[iLinea] [int] IDENTITY(1,1) NOT NULL,
	[sCodigo_Producto] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[sNombreLista] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[sNombreColor] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[sCodigoColor] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[sQuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaIngreso] [datetime] NULL,
	[sQuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaModifico] [datetime] NULL,
	[bDefault] [bit] NULL,
 CONSTRAINT [PK_PK00] PRIMARY KEY CLUSTERED 
(
	[iLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GD02](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[iDepartamento] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[iConsecutivo] [int] NOT NULL,
	[ODP] [int] NULL,
	[Contrato] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[FIngresoProduccion] [datetime] NULL,
 CONSTRAINT [PK_GD02_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GD01](
	[iLinea] [int] IDENTITY(1,1) NOT NULL,
	[iDepartamento] [nchar](3) COLLATE Modern_Spanish_CI_AS NULL,
	[iConsecutivo] [int] NULL,
	[iRequerido] [int] NULL,
	[sCodigo] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[sDescripcion] [nchar](150) COLLATE Modern_Spanish_CI_AS NULL,
	[sCodigo_Barras] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_GD01] PRIMARY KEY CLUSTERED 
(
	[iLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GD03](
	[ID] [nchar](3) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Departamento] [nchar](40) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[QuienIngreso] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaModifico] [datetime] NULL,
	[QuienModifico] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_GD03] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DECLARE @FECHA1 DATETIME = '2014-01-01'
--DECLARE @FECHA2 DATETIME = '2014-06-01' 


CREATE PROCEDURE [dbo].[IN04_Rotaciones_Compras]
@Fecha1 datetime,
@Fecha2 datetime,
@CodigoProducto varchar(15)
AS

SELECT sCodigo_Producto
 ,CAST (dFecha_Movimiento AS DATE)Fecha
 ,SUM(IN14.iCantidad)TotalCompras  from siawin0..IN13 (nolock),siawin0..IN14 (nolock)
Where 
IN13.sCodigo_Movimiento = '01'
AND In13.sLlave = In14.sLlave
AND IN13.dFecha_Movimiento BETWEEN CAST(YEAR(@FECHA1)AS CHAR(4))+'-'+ CAST(MONTH(@FECHA1)AS CHAR(2))+ '-01'
AND @FECHA2
AND IN13.bConfirmado > 0
and in14.sCodigo_Producto = @CodigoProducto
GROUP BY sCodigo_Producto,CAST (dFecha_Movimiento AS DATE)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF000](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[Perfil] [int] NULL,
	[Modulo] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaIngreso] [datetime] NULL,
	[dFechaModifico] [datetime] NULL,
 CONSTRAINT [PK_VF000] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RT01](
	[CodigoProveedor] [varchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[NombreProveedor] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[MesAbastecimiento] [decimal](18, 2) NULL,
	[MesTransito] [decimal](18, 2) NULL,
	[Estado] [int] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RT00](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Proveedor] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[CodigoProducto] [varchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[Cantidad] [decimal](18, 2) NULL,
	[QuienModifico] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaModifico] [datetime] NULL,
 CONSTRAINT [PK_RT00] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF100](
	[Consecutivo] [int] NOT NULL,
	[Nomenclatura] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[Codigo] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Proyecto] [varchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[Nombre] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Cliente] [varchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[Notas] [varchar](2000) COLLATE Modern_Spanish_CI_AS NULL,
	[MostrarTablaAvance] [int] NULL,
	[Moneda] [int] NULL,
	[Condiciones] [varchar](2000) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaEstimadaCierre] [date] NULL,
	[TipoCambio] [numeric](18, 2) NULL,
	[sQuienIngreso] [nchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[sQuienModifico] [nchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaIngreso] [datetime] NULL,
	[dFechaModifico] [datetime] NULL,
 CONSTRAINT [PK_VF100] PRIMARY KEY CLUSTERED 
(
	[Consecutivo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF001RESPALDO](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Perfil] [int] NULL,
	[Modulo] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Opcion] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Descripcion] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[Estado] [int] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF001](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Perfil] [int] NULL,
	[Modulo] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Opcion] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Descripcion] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_VF001] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF000RESPALDO](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[Perfil] [int] NULL,
	[Modulo] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaIngreso] [datetime] NULL,
	[dFechaModifico] [datetime] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF200](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[Ajuste] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Tipo] [int] NULL,
	[Fecha] [datetime] NULL,
	[Monto] [numeric](18, 2) NULL,
	[Moneda] [int] NULL,
	[Descripcion] [varchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[IngresadoPor] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[ModificadoPor] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_VF200] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF300](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[Contrato] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_VF300] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF301](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[ODP] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_VF301] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F500](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[Documento] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[MontoUtilizado] [numeric](18, 2) NULL,
	[Saldo] [numeric](18, 2) NULL,
	[IncluidoManualmente] [bit] NULL,
 CONSTRAINT [PK_F500] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F600](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[CodAsesor] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Nombre] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Porcentaje] [decimal](18, 2) NULL,
 CONSTRAINT [PK_F600] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F400](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[Documento] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Fecha] [datetime] NULL,
	[Monto] [numeric](18, 2) NULL,
	[Saldo] [numeric](18, 2) NULL,
	[FechaVencimiento] [datetime] NULL,
	[Tipo] [int] NULL,
	[Moneda] [int] NULL,
	[Detalle] [varchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[Recibos] [varchar](500) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaIngreso] [datetime] NULL,
	[dFechaModifico] [datetime] NULL,
 CONSTRAINT [PK_F400] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F601](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[Cobrador] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[Nombre] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_F601] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F700](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NOT NULL,
	[Usuario] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Fecha] [datetime] NULL,
	[Detalle] [varchar](1000) COLLATE Modern_Spanish_CI_AS NULL,
	[Tipo] [varchar](5) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_F700] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F800](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[Movimiento] [char](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_F800] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F000](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[Perfil] [int] NULL,
	[Modulo] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaIngreso] [datetime] NULL,
	[dFechaModifico] [datetime] NULL,
 CONSTRAINT [PK_F000] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F900](
	[Consecutivo] [int] IDENTITY(1,1) NOT NULL,
	[Ncontrato] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[TipoEmpresa] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[NProcess] [int] NULL,
	[CodCliente] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[NombreCliente] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Asesor] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[SubContratos] [int] NULL,
	[Descripcion] [varchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[UsuarioIngreso] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[UsuarioModifico] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaIngreso] [datetime] NULL,
	[dFechaModifico] [datetime] NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_F900] PRIMARY KEY CLUSTERED 
(
	[Consecutivo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F902](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[TipoEmpresa] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[Descripcion] [varchar](75) COLLATE Modern_Spanish_CI_AS NULL,
	[Consecutivo] [int] NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_F902] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F901](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[NContrato] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[Nprocess] [int] NULL,
	[TipoEmpresa] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[SubContrato] [int] NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_F901] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F800_BuscarPedido]
@Pedido varchar(30),
@cliente varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select TOP 100 sPedido Codigo,
	       dFecha Fecha,
	       sOrden_Compra OrdenCompra,
	       sNombre_Cliente Nombre,
	       sFactura Factura,
	       sTipoFactura Tipo    	
	  from siawin28..FA00			 
	where sPedido like '%'+@Pedido+'%'
	and sCodigo_Cliente = @cliente
	and sTipoFactura <> 'AN' AND sTipoFactura <> 'A3'
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F903](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[TipoEmpresa] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_F903] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GD00](
	[iConsecutivo] [int] NOT NULL,
	[iDepartamento] [char](3) COLLATE Modern_Spanish_CI_AS NULL,
	[sDescripcion] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Referencia] [varchar](75) COLLATE Modern_Spanish_CI_AS NULL,
	[De] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[Para] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[sQuienIngreso] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaIngreso] [datetime] NULL,
	[sQuienModifico] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaModifico] [datetime] NULL,
	[sAlistado] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[sRevisado] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[sDespachado] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[sAutorizado] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaRecibido] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Transportista] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[Placa] [varchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[Aplicado] [bit] NULL,
	[Recibido] [bit] NULL,
	[dFechaEnvio] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[EmpresaTransportista] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[fnSplitString] 
( 
    @string NVARCHAR(MAX), 
    @delimiter CHAR(1) 
) 
RETURNS @output TABLE(splitdata NVARCHAR(MAX) 
) 
BEGIN 
    DECLARE @start INT, @end INT 
    SELECT @start = 1, @end = CHARINDEX(@delimiter, @string) 
    WHILE @start < LEN(@string) + 1 BEGIN 
        IF @end = 0  
            SET @end = LEN(@string) + 1
       
        INSERT INTO @output (splitdata)  
        VALUES(SUBSTRING(@string, @start, @end - @start)) 
        SET @start = @end + 1 
        SET @end = CHARINDEX(@delimiter, @string, @start)
        
    END 
    RETURN 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F800_DetallePedido]
@Pedido varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select sPedido Pedido,
	       ilinea Linea,
	       sCodigo_Producto Codigo,
	       sDescripcion Descripcion,
	       cCantidad Cantidad	      	
	  from siawin28..FA01	
     where sPedido=@Pedido 
    order by iLinea 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Traslados_Verificar]
	@NumTraslado varchar(40),
	@CodigoProducto varchar(20),
	@ACCION VARCHAR(20)
AS

IF @ACCION = 'GENERAL'
BEGIN
	SELECT sNumero_Movimiento,sCodigo_Movimiento, sDetalle,iCantidad Cantidad,Vista1.sCodigo_Producto, Vista2.sDescripcion_Inventario FROM
	(
		SELECT IN13.sNumero_Movimiento, IN13.sCodigo_Movimiento, IN13.sDetalle, IN14.iCantidad, IN14.sCodigo_Producto 
			FROM siawin0..IN13, siawin0..IN14
			WHERE IN14.sCodigo_Movimiento = IN13.sCodigo_Movimiento AND IN14.sLLave = IN13.sLLave AND IN13.sNumero_Movimiento = @NumTraslado
	)Vista1
	INNER JOIN
	(
		SELECT sCodigo_Producto, sDescripcion_Inventario FROM siawin0..IN04
	)Vista2 ON Vista2.sCodigo_Producto = Vista1.sCodigo_Producto
END
IF @ACCION = 'DETALLE'
BEGIN
	SELECT sCodigo_Producto, sDescripcion_Inventario FROM siawin0..IN04 WHERE sCodigo_Producto = @CodigoProducto
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--USE siawin0




--DECLARE @FECHA1 DATETIME = '2010-01-01'
--DECLARE @FECHA2 DATETIME = '2014-06-01' 
--DECLARE @CodigoProducto  varchar(15) = 'BR-72016       ' 
CREATE PROCEDURE [dbo].[IN04_Rotaciones_Ventas]

@FECHA1 DATETIME ,
@FECHA2 DATETIME ,
@CodigoProducto varchar(15)

as

Select IN04.sCodigo_Producto,
Fecha,
RTRIM(Factura)Factura,
--CASE 
--WHEN Ventas.Mes = 1 THEN 'Enero'
--WHEN Ventas.Mes = 2 THEN 'Febrero'
--WHEN Ventas.Mes = 3 THEN 'Marzo'
--WHEN Ventas.Mes = 4 THEN 'Abril'
--WHEN Ventas.Mes = 5 THEN 'Mayo'
--WHEN Ventas.Mes = 6 THEN 'Junio'
--WHEN Ventas.Mes = 7 THEN 'Julio'
--WHEN Ventas.Mes = 8 THEN 'Agosto'
--WHEN Ventas.Mes = 9 THEN 'Setiembre'
--WHEN Ventas.Mes = 10 THEN 'Octubre'
--WHEN Ventas.Mes = 11 THEN 'Noviembre'
--WHEN Ventas.Mes = 12 THEN 'Diciembre'END Mes


--,Ventas.Anio
--,
CAST(Ventas.VentaNeta AS DECIMAL(18,2))VentaNeta, CAST(Ventas.CostoNeto AS DECIMAL(18,2)) CostoNeto,Ventas.UnidadesNetas
FROM siawin0..IN04 with(nolock),siawin0..IN03 with(nolock),
(
Select sCodigo_Producto as sCodigo_Producto,Anio,Mes,Tipo
,Sum(VentaNeta) as VentaNeta,Sum(CostoNeto) as CostoNeto,Sum(UnidadesNetas) as UnidadesNetas,sPeriodo, Fecha,Factura
FROM
(
Select cast(fa00.dFecha as date)Fecha,fa00.sFactura Factura, IN04.sCodigo_Producto,year(fa00.dFecha) as Anio,month(fa00.dFecha) as Mes,
sum ( Fa01.cCantidad * Fa01.cPrecioNeto  / (CASE FA00.ITIPO_MONEDA WHEN 1 THEN 1 ELSE FA00.CTIPO_CAMBIO_SISTEMA END) ) as VentaNeta,
sum (( Fa01.cCantidad *  Fa01.cCosto ) / (CASE FA00.ITIPO_MONEDA WHEN 1 THEN 1 ELSE FA00.CTIPO_CAMBIO_SISTEMA END) ) as CostoNeto,
sum ( Fa01.cCantidad ) as UnidadesNetas,
0 as Tipo,0 as sPeriodo
From siawin0..IN04 with(nolock),siawin0..FA00 with(nolock),siawin0..FA01 with(nolock)
Where ( (FA00.dFecha BETWEEN @FECHA1
AND @FECHA2)
)
AND FA00.sFactura > ''
And FA00.sTipoFactura <> 'AN'
AND FA00.sPedido = FA01.sPedido
AND FA01.sProductoCombo = ''
AND ( IN04.sCodigo_Producto =@CodigoProducto )
AND FA01.sCodigo_Producto = IN04.sCodigo_Producto
Group by cast(fa00.dFecha as date),In04.sCodigo_Producto,year(FA00.dFecha),month(FA00.dFecha),sFactura
UNION ALL
Select cast(in13.dFecha_Movimiento as date)Fecha,in13.sNumero_Documento Factura,  In04.sCodigo_Producto,year(in13.dFecha_Movimiento) as Anio,Month(In13.dFecha_Movimiento) as Mes,
sum ( -IN14.icantidad * In14.cCosto_Unitario * ( 1- IN14.cDescuento01/100 ) * ( 1- IN14.cDescuento02/100 )  / (CASE IN13.bTipo_Moneda WHEN 1 THEN 1 ELSE IN13.cTipo_Cambio END )) as VentaNeta,
sum ( -IN14.icantidad * In14.cCosto_Nc / IN13.cTipo_Cambio) as CostoNeto,
sum ( -In14.icantidad) as UnidadesNetas,
0 as Tipo, 0 as sPeriodo
FROM siawin0..IN04 with(nolock),siawin0..IN13 with(nolock),siawin0..IN14 with(nolock)
WHERE IN13.sCodigo_Movimiento = '05'
AND ((IN13.dFecha_Movimiento BETWEEN @FECHA1
AND @FECHA2)
)
AND IN13.sLlave = IN14.sLlave
AND IN13.bConfirmado > 0
AND IN14.sProductoCombo = ''
AND ( IN04.sCodigo_Producto =@CodigoProducto)
AND IN14.sCodigo_Producto = IN04.sCodigo_Producto
Group by sNumero_Documento  , cast(in13.dFecha_Movimiento as date),In04.sCodigo_Producto,year(in13.dFecha_Movimiento),month(in13.dFecha_Movimiento)
) Vista
Group by sCodigo_Producto,Tipo,Anio,Mes,sPeriodo,Fecha,Factura) Ventas
WHERE Ventas.sCodigo_Producto = in04.sCodigo_Producto
AND IN04.sUnid_Medida = IN03.sCodigo
Order by Ventas.sCodigo_Producto,Ventas.Tipo,Ventas.Anio,Ventas.Mes,Ventas.sPeriodo,Fecha,Factura


--Select IN04.sCodigo_Producto,
--CASE 
--WHEN Ventas.Mes = 1 THEN 'Enero'
--WHEN Ventas.Mes = 2 THEN 'Febrero'
--WHEN Ventas.Mes = 3 THEN 'Marzo'
--WHEN Ventas.Mes = 4 THEN 'Abril'
--WHEN Ventas.Mes = 5 THEN 'Mayo'
--WHEN Ventas.Mes = 6 THEN 'Junio'
--WHEN Ventas.Mes = 7 THEN 'Julio'
--WHEN Ventas.Mes = 8 THEN 'Agosto'
--WHEN Ventas.Mes = 9 THEN 'Setiembre'
--WHEN Ventas.Mes = 10 THEN 'Octubre'
--WHEN Ventas.Mes = 11 THEN 'Noviembre'
--WHEN Ventas.Mes = 12 THEN 'Diciembre'END Mes


--,Ventas.Anio
--,Ventas.VentaNeta,Ventas.CostoNeto,Ventas.UnidadesNetas
--FROM siawin0..IN04 with(nolock),siawin0..IN03 with(nolock),
--(
--Select sCodigo_Producto as sCodigo_Producto,Anio,Mes,Tipo
--,Sum(VentaNeta) as VentaNeta,Sum(CostoNeto) as CostoNeto,Sum(UnidadesNetas) as UnidadesNetas,sPeriodo
--FROM
--(
--Select IN04.sCodigo_Producto,year(fa00.dFecha) as Anio,month(fa00.dFecha) as Mes,
--sum ( Fa01.cCantidad * Fa01.cPrecioNeto  / (CASE FA00.ITIPO_MONEDA WHEN 1 THEN 1 ELSE FA00.CTIPO_CAMBIO_SISTEMA END) ) as VentaNeta,
--sum (( Fa01.cCantidad *  Fa01.cCosto ) / (CASE FA00.ITIPO_MONEDA WHEN 1 THEN 1 ELSE FA00.CTIPO_CAMBIO_SISTEMA END) ) as CostoNeto,
--sum ( Fa01.cCantidad ) as UnidadesNetas,
--0 as Tipo,0 as sPeriodo
--From siawin0..IN04 with(nolock),siawin0..FA00 with(nolock),siawin0..FA01 with(nolock)
--Where ( (FA00.dFecha BETWEEN @FECHA1
--AND @FECHA2)
--)
--AND FA00.sFactura > ''
--And FA00.sTipoFactura <> 'AN'
--AND FA00.sPedido = FA01.sPedido
--AND FA01.sProductoCombo = ''
--AND ( IN04.sCodigo_Producto =@CodigoProducto )
--AND FA01.sCodigo_Producto = IN04.sCodigo_Producto
--Group by In04.sCodigo_Producto,year(FA00.dFecha),month(FA00.dFecha)
--UNION ALL
--Select In04.sCodigo_Producto,year(in13.dFecha_Movimiento) as Anio,Month(In13.dFecha_Movimiento) as Mes,
--sum ( -IN14.icantidad * In14.cCosto_Unitario * ( 1- IN14.cDescuento01/100 ) * ( 1- IN14.cDescuento02/100 )  / (CASE IN13.bTipo_Moneda WHEN 1 THEN 1 ELSE IN13.cTipo_Cambio END )) as VentaNeta,
--sum ( -IN14.icantidad * In14.cCosto_Nc / IN13.cTipo_Cambio) as CostoNeto,
--sum ( -In14.icantidad) as UnidadesNetas,
--0 as Tipo, 0 as sPeriodo
--FROM siawin0..IN04 with(nolock),siawin0..IN13 with(nolock),siawin0..IN14 with(nolock)
--WHERE IN13.sCodigo_Movimiento = '05'
--AND ((IN13.dFecha_Movimiento BETWEEN @FECHA1
--AND @FECHA2)
--)
--AND IN13.sLlave = IN14.sLlave
--AND IN13.bConfirmado > 0
--AND IN14.sProductoCombo = ''
--AND ( IN04.sCodigo_Producto =@CodigoProducto)
--AND IN14.sCodigo_Producto = IN04.sCodigo_Producto
--Group by In04.sCodigo_Producto,year(in13.dFecha_Movimiento),month(in13.dFecha_Movimiento)
--) Vista
--Group by sCodigo_Producto,Tipo,Anio,Mes,sPeriodo) Ventas
--WHERE Ventas.sCodigo_Producto = in04.sCodigo_Producto
--AND IN04.sUnid_Medida = IN03.sCodigo
--Order by Ventas.sCodigo_Producto,Ventas.Tipo,Ventas.Anio,Ventas.Mes,Ventas.sPeriodo

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DECLARE @FECHA1 DATETIME = '2013-12-01'
--DECLARE @FECHA2 DATETIME = '2014-06-01' 
--DECLARE @CODIGOPRODUCTO VARCHAR(15) = 'M390W          '

CREATE PROCEDURE [dbo].[IN04_Rotaciones_Grafico]

@FECHA1 DATETIME,
@FECHA2 DATETIME,
@CODIGOPRODUCTO VARCHAR(15)

as 

SELECT sCodigo_Producto, Fecha, SUM(UnidadesNetas) Venta, SUM(Compra) Compra ,SUM(Inventario)Inventario,
CASE 
WHEN MONTH(Fecha) = 1 THEN 'Ene-'+ cast(YEAR(Fecha)AS CHAR(4))
WHEN MONTH(Fecha) = 2 THEN 'Feb-'+ cast(YEAR(Fecha)AS CHAR(4))
WHEN MONTH(Fecha) = 3 THEN 'Mar-'+ cast(YEAR(Fecha)AS CHAR(4))
WHEN MONTH(Fecha) = 4 THEN 'Abr-'+ cast(YEAR(Fecha)AS CHAR(4))
WHEN MONTH(Fecha) = 5 THEN 'May-'+ cast(YEAR(Fecha)AS CHAR(4))
WHEN MONTH(Fecha) = 6 THEN 'Jun-'+ cast(YEAR(Fecha)AS CHAR(4))
WHEN MONTH(Fecha) = 7 THEN 'Jul-'+ cast(YEAR(Fecha)AS CHAR(4))
WHEN MONTH(Fecha) = 8 THEN 'Ago-'+ cast(YEAR(Fecha)AS CHAR(4))
WHEN MONTH(Fecha) = 9 THEN 'Set-'+ cast(YEAR(Fecha)AS CHAR(4))
WHEN MONTH(Fecha) = 10 THEN 'Oct-'+ cast(YEAR(Fecha)AS CHAR(4))
WHEN MONTH(Fecha) = 11 THEN 'Nov-'+ cast(YEAR(Fecha)AS CHAR(4))
WHEN MONTH(Fecha) = 12 THEN 'Dic-' + cast(YEAR(Fecha)AS CHAR(4))
End Mes

FROM (
Select 'Venta'Tipo, IN04.sCodigo_Producto,
CAST(CAST(VENTAS.Anio AS CHAR(4))+'-'+  CAST(Ventas.Mes AS CHAR(4))+'-01'AS DATE)Fecha,
Ventas.UnidadesNetas, 0 Compra,0 Inventario

FROM siawin0..IN04 with(nolock),siawin0..IN03 with(nolock),
(
Select sCodigo_Producto as sCodigo_Producto,Anio,Mes,Tipo
,Sum(VentaNeta) as VentaNeta,Sum(CostoNeto) as CostoNeto,Sum(UnidadesNetas) as UnidadesNetas,sPeriodo
FROM
(
Select IN04.sCodigo_Producto,year(fa00.dFecha) as Anio,month(fa00.dFecha) as Mes,
sum ( Fa01.cCantidad * Fa01.cPrecioNeto  / (CASE FA00.ITIPO_MONEDA WHEN 1 THEN 1 ELSE FA00.CTIPO_CAMBIO_SISTEMA END) ) as VentaNeta,
sum (( Fa01.cCantidad *  Fa01.cCosto ) / (CASE FA00.ITIPO_MONEDA WHEN 1 THEN 1 ELSE FA00.CTIPO_CAMBIO_SISTEMA END) ) as CostoNeto,
sum ( Fa01.cCantidad ) as UnidadesNetas,
0 as Tipo,0 as sPeriodo
From siawin0..IN04 with(nolock),siawin0..FA00 with(nolock),siawin0..FA01 with(nolock)
Where ( (FA00.dFecha BETWEEN @FECHA1
AND @FECHA2)
)
AND FA00.sFactura > ''
And FA00.sTipoFactura <> 'AN'
AND FA00.sPedido = FA01.sPedido
AND FA01.sProductoCombo = ''
AND ( IN04.sCodigo_Producto =@CodigoProducto )
AND FA01.sCodigo_Producto = IN04.sCodigo_Producto
Group by In04.sCodigo_Producto,year(FA00.dFecha),month(FA00.dFecha)
UNION ALL
Select In04.sCodigo_Producto,year(in13.dFecha_Movimiento) as Anio,Month(In13.dFecha_Movimiento) as Mes,
sum ( -IN14.icantidad * In14.cCosto_Unitario * ( 1- IN14.cDescuento01/100 ) * ( 1- IN14.cDescuento02/100 )  / (CASE IN13.bTipo_Moneda WHEN 1 THEN 1 ELSE IN13.cTipo_Cambio END )) as VentaNeta,
sum ( -IN14.icantidad * In14.cCosto_Nc / IN13.cTipo_Cambio) as CostoNeto,
sum ( -In14.icantidad) as UnidadesNetas,
0 as Tipo, 0 as sPeriodo
FROM siawin0..IN04 with(nolock),siawin0..IN13 with(nolock),siawin0..IN14 with(nolock)
WHERE IN13.sCodigo_Movimiento = '05'
AND ((IN13.dFecha_Movimiento BETWEEN @FECHA1
AND @FECHA2)
)
AND IN13.sLlave = IN14.sLlave
AND IN13.bConfirmado > 0
AND IN14.sProductoCombo = ''
AND ( IN04.sCodigo_Producto =@CodigoProducto)
AND IN14.sCodigo_Producto = IN04.sCodigo_Producto
Group by In04.sCodigo_Producto,year(in13.dFecha_Movimiento),month(in13.dFecha_Movimiento)
) Vista
Group by sCodigo_Producto,Tipo,Anio,Mes,sPeriodo) Ventas
WHERE Ventas.sCodigo_Producto = in04.sCodigo_Producto
AND IN04.sUnid_Medida = IN03.sCodigo
--Order by Ventas.sCodigo_Producto,Ventas.Tipo,Ventas.Anio,Ventas.Mes,Ventas.sPeriodo

union all

SELECT Tipo, sCodigo_Producto, 
CAST(CAST(year(Fecha) AS CHAR(4))+'-'+  CAST(month(Fecha) AS CHAR(2))+'-01'AS DATE),
0 Venta,
TotalCompras , 0 Inventario
FROM (
SELECT 'Compra'Tipo, sCodigo_Producto,
--CAST(CAST(year(dFecha_Movimiento) AS CHAR(4))+'-'+  CAST(month(dFecha_Movimiento) AS CHAR(4))+'-01'AS DATE)Fecha
 CAST (dFecha_Movimiento AS DATE)Fecha
 ,SUM(IN14.iCantidad)TotalCompras  from siawin0..IN13 (nolock),siawin0..IN14 (nolock)
Where 
IN13.sCodigo_Movimiento = '01'
AND In13.sLlave = In14.sLlave
AND IN13.dFecha_Movimiento BETWEEN CAST(YEAR(@FECHA1)AS CHAR(4))+'-'+ CAST(MONTH(@FECHA1)AS CHAR(2))+ '-01'
AND @FECHA2
AND IN13.bConfirmado > 0
and in14.sCodigo_Producto = @CodigoProducto
GROUP BY sCodigo_Producto,
CAST (dFecha_Movimiento AS DATE)




)VISTAINT
UNION ALL

SELECT 'Inventario'Tipo,sCodigo_Producto,cast(CAST(iAnio AS CHAR(4))+'-'+ CAST(iMesCierre AS CHAR(2))+ '-01' as date)Fecha,0 Venta, 0 Compra, 
SUM(cSaldoCierre) Inventario  FROM siawin0..IN34 WHERE 
in34.sCodigo_Producto = @CODIGOPRODUCTO 
and cast(CAST(iAnio AS CHAR(4))+'-'+ CAST(iMesCierre AS CHAR(2))+ '-01' as date) >= 
cast(CAST(year(@FECHA1) AS CHAR(4))+'-'+ CAST(month(@FECHA1) AS CHAR(2))+ '-01' as date)
and cast(CAST(iAnio AS CHAR(4))+'-'+ CAST(iMesCierre AS CHAR(2))+ '-01' as date) <= 
cast(CAST(year(@FECHA2) AS CHAR(4))+'-'+ CAST(month(@FECHA2) AS CHAR(2))+ '-01' as date)
GROUP BY sCodigo_Producto,cast(CAST(iAnio AS CHAR(4))+'-'+ CAST(iMesCierre AS CHAR(2))+ '-01' as date)

)VISTA 
group by	sCodigo_Producto, Fecha

ORDER BY Fecha ASC


--SELECT 'Inventario'Tipo, sCodigo_Producto,cast(CAST(iAnio AS CHAR(4))+'-'+ CAST(iMesCierre AS CHAR(2))+ '-01' as date)Fecha,0 Venta, 0 Compra, 
--SUM(cSaldoCierre) Inventario  FROM siawin0..IN34 WHERE 
--in34.sCodigo_Producto = @CODIGOPRODUCTO 
--and cast(CAST(iAnio AS CHAR(4))+'-'+ CAST(iMesCierre AS CHAR(2))+ '-01' as date) >= 
--cast(CAST(year(@FECHA1) AS CHAR(4))+'-'+ CAST(month(@FECHA1) AS CHAR(2))+ '-01' as date)
--and cast(CAST(iAnio AS CHAR(4))+'-'+ CAST(iMesCierre AS CHAR(2))+ '-01' as date) <= 
--cast(CAST(year(@FECHA2) AS CHAR(4))+'-'+ CAST(month(@FECHA2) AS CHAR(2))+ '-01' as date)
----and iMesCierre >= MONTH(@FECHA1)
----and iMesCierre <= MONTH(@FECHA2)
----and iAnio >= year(@FECHA1)
----and iAnio <= year(@FECHA2)
--GROUP BY sCodigo_Producto,cast(CAST(iAnio AS CHAR(4))+'-'+ CAST(iMesCierre AS CHAR(2))+ '-01' as date)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IN01RESP](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Consecutivo] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[IdEntrega] [int] NOT NULL,
	[Pedido] [varchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[dFecha] [datetime] NOT NULL,
	[sHora] [varchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[sCliente] [varchar](80) COLLATE Modern_Spanish_CI_AS NULL,
	[sLugar] [varchar](300) COLLATE Modern_Spanish_CI_AS NULL,
	[sAsignado] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[cEstado] [int] NULL,
	[UsuarioDigita] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[EmpresaTransportista] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Tipo_Entrega] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[sPedido] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL,
	[Notas] [varchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[Ruta] [int] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT * FROM siawin0..IN00 



create procedure [dbo].[IN04_Rotaciones_Inventario]
@FECHA1 DATETIME ,
@FECHA2 DATETIME ,
@CodigoProducto varchar(20)

as

SELECT sCodigo_Producto, sCodigo_Bodega, IN00.sDescripcion, iSaldo_Mes + iSaldo_Mes_Anterior Saldo FROM siawin0..IN11, siawin0..IN00
WHERE
IN11.sCodigo_Bodega= IN00.Scodigo AND
IN11.iSaldo_Mes + IN11.iSaldo_Mes_Anterior <> 0 AND 
IN11.sCodigo_Producto = @CodigoProducto

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoja1](
	[Columna_A] [nvarchar](255) COLLATE Modern_Spanish_CI_AS NULL,
	[Columna_B] [nvarchar](255) COLLATE Modern_Spanish_CI_AS NULL,
	[Columna_C] [nvarchar](255) COLLATE Modern_Spanish_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GD04](
	[iDepartamento] [nchar](3) COLLATE Modern_Spanish_CI_AS NULL,
	[iConsecutivo] [int] NULL,
	[Observaciones] [varchar](8000) COLLATE Modern_Spanish_CI_AS NULL,
	[cBultos] [int] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EN01_Documento](
	[IDEntrega] [int] NULL,
	[archivo] [nvarchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[nombreArchivo] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[extension] [varchar](5) COLLATE Modern_Spanish_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB08](
	[IDlinea] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Bloqueado] [bit] NULL,
	[NombreFormulario] [varchar](80) COLLATE Modern_Spanish_CI_AS NULL,
	[Identificadorformulario] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Activo] [bit] NULL,
	[UltimaConexion] [datetime] NULL,
	[NombreMaquina] [varchar](10) COLLATE Modern_Spanish_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EN01](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Consecutivo] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[IdEntrega] [int] NOT NULL,
	[Pedido] [varchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[dFecha] [datetime] NOT NULL,
	[sHora] [varchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[sCliente] [varchar](80) COLLATE Modern_Spanish_CI_AS NULL,
	[sLugar] [varchar](300) COLLATE Modern_Spanish_CI_AS NULL,
	[sAsignado] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[cEstado] [int] NULL,
	[UsuarioDigita] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[EmpresaTransportista] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Tipo_Entrega] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[sPedido] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL,
	[Notas] [varchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[Ruta] [int] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EN00_Config](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[EntregaTienda] [int] NULL,
	[EntregaSitio] [int] NULL,
	[TempSale] [int] NULL,
	[QuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EN00](
	[Consecutivo] [varchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[UsuarioGenero] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaUltimaGeneracion] [datetime] NULL,
	[VersionSistema] [varchar](10) COLLATE Modern_Spanish_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VF100TiposCambio] 
(@Dia date)
AS
BEGIN

		set dateformat dmy 
		SELECT dFecha Dia,
		       cCompra Compra,
		       cVenta Venta
		  FROM siawin28..DBT60
		 WHERE dFecha = @Dia

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CED03](
	[IDProducto] [int] IDENTITY(1,1) NOT NULL,
	[CodigoProducto] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[IDCedi] [int] NULL,
	[IDEmpresa] [int] NULL,
	[NBodega] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[Cantidad] [decimal](18, 2) NULL,
	[Seccion] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL,
	[Prioridad] [varchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[Estado] [int] NULL,
	[Detalle] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_CED03] PRIMARY KEY CLUSTERED 
(
	[IDProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CED05](
	[IDAlisto] [int] IDENTITY(1,1) NOT NULL,
	[IDCedi] [int] NULL,
	[IDEmpresa] [int] NULL,
	[Transaccion] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[Tipo] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SICAPRO_BuscarEstadoODP]
@Contrato varchar(50),
@Categoria varchar(50),
@TIPO varchar(50)
AS
BEGIN 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;
	
	IF @TIPO = '1'
	
	(select  'ODP Normal',  ct.fdefinitivo,odp.fingreso,odp.finiproduccion,ct.fplanta,ODP.CODIGO as CodODP ,odp.Categoria 
            ,odp.fodpfinal,log.fdespacho,log.finiinstala, log.ffininstala
             from BDSICAPRO..contrato (nolock) ct,BDSICAPRO..ordenproduccion (nolock) odp,BDSICAPRO..logisticaodp (nolock) log
              where ct.codigo= @Contrato
             and ct.categoria= @Categoria  
             and ct.cododp= odp.codigo
             and ct.categoria= odp.categoria
             and ct.cododp =log.cododp
             and ct.categoria = log.categoria
             )
             
             else if @TIPO = '2'
             ( Select 'ODP Adicional', ct.fdefinitivo,ct.fplanta,odpadic.finicio,odpadic.fterminada,odpadic.codigo AS CodODP 
             ,log.fdespacho,log.finiinstala,log.ffininstala 
              from BDSICAPRO..odpadicional odpadic,BDSICAPRO..contrato ct,BDSICAPRO..logisticaodp log 
              where odpadic.codigo= @Contrato
              and odpadic.categoria= @Categoria
              and odpadic.cododp=ct.cododp 
              and ct.categoria=odpadic.categoria 
              and log.cododp=ct.cododp 
              and log.categoria=ct.categoria)
              
              
             else if @TIPO = '3'
              (Select  ('ODP Adicional N# '+odpadic.codigo),ct.fdefinitivo,odpadic.finicio,odpadic.fterminada,ct.fplanta,odpadic.codigo AS CodODP 
             ,logadic.fdespacho,logadic.finiinstala,logadic.ffininstala 
              from BDSICAPRO..contrato ct,BDSICAPRO..odpadicional odpadic,BDSICAPRO..logisticaodpadic logadic,BDSICAPRO..contratadic ctad 
              where ct.codigo= @Contrato
              and ct.categoria=  @Categoria  
              and ctad.codcontrato=ct.codigo 
              and odpadic.codigo=ctad.codadicional 
              and odpadic.categoria=  @Categoria  
              and logadic.codadicional=odpadic.codigo 
              and logadic.categoria=  @Categoria  )
              else
              select null 
              
              

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SICAPRO_BusquedaGeneral]
@Buscar  varchar(50),
@TipoBusqueda  varchar(50)
	
AS
BEGIN
	SET NOCOUNT ON;
	
DECLARE @BUSQUEDA VARCHAR(50)=REPLACE(@Buscar,'*','%')

	IF @TipoBusqueda = '0' 
	
	(select TOP 50 Contrato.Codigo,Contrato.CodODP,Contrato.Categoria,Cliente.Nombre,FPlanta,Contrato.Estado 
	from BDSICAPRO..Contrato(nolock),BDSICAPRO..Cliente(nolock)
	where Contrato.CodCliente = Cliente.Codigo 
	and (Contrato.Codigo like '%'+@BUSQUEDA+'%' 
	))
	
	 ELSE IF @TipoBusqueda = '1'  
		(
		select TOP 50 Contrato.Codigo,Contrato.CodODP,Contrato.Categoria,Cliente.Nombre,FPlanta,Contrato.Estado 
	from BDSICAPRO..Contrato(nolock),BDSICAPRO..Cliente(nolock)
	where Contrato.CodCliente = Cliente.Codigo
	AND Contrato.CodODP like '%'+@BUSQUEDA+'%'
	)
	ELSE IF @TipoBusqueda = '2'  
		(select TOP 50 Contrato.Codigo,Contrato.CodODP,Contrato.Categoria,Cliente.Nombre,FPlanta,Contrato.Estado 
	from BDSICAPRO..Contrato(nolock),BDSICAPRO..Cliente(nolock)
	where Contrato.CodCliente = Cliente.Codigo 
	AND Cliente.Nombre like '%'+@BUSQUEDA+'%')
	ELSE
	SELECT NULL
	END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GD02_SelectODPSICAPRO]
	
@CodContrato  varchar(50),
@CodODP  varchar(50),
@Cliente varchar(50),
@Fecha varchar(50)
	
AS
BEGIN
	SET NOCOUNT ON;
	select TOP 50 Contrato.Codigo,Contrato.CodODP,Cliente.Nombre,FPlanta   
	from BDSICAPRO..Contrato(nolock),BDSICAPRO..Cliente(nolock)
	where Contrato.CodCliente = Cliente.Codigo 
	--and Contrato.Codigo like '%'+@CodContrato+'%' 
	and Contrato.CodODP like '%'+@CodODP+'%' 
	--and Cliente.Nombre like '%'+@Cliente+'%' 
--	and FPlanta like '%'+@Fecha+'%'
	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB06](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [char](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Consecutivo] [nchar](3) COLLATE Modern_Spanish_CI_AS NULL,
	[UsuarioIngreso] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[UsuarioModifico] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL,
	[CActual] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Modulo] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB05](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModuloGeneral] [nchar](15) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_DB05] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB04](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Modulo] [nchar](25) COLLATE Modern_Spanish_CI_AS NULL,
	[Opcion] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[Activo] [int] NULL,
	[Usuario] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_DB04] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB03](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[dFechaFactura] [datetime] NULL,
	[sPedido] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[sUser] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_DB03] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB02](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCliente] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[dFecha] [datetime] NULL,
 CONSTRAINT [PK_DB02] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB01](
	[sUsuarioPcgraf] [nvarchar](20) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[bModImpresionLE] [bit] NULL,
	[bModMantLE] [bit] NULL,
	[bModTipoCambio] [bit] NULL,
	[bModFacAnterior] [bit] NULL,
	[bModMantUsuarios] [bit] NULL,
	[bModMantAcessosRestringidos] [bit] NULL,
	[bModCrearClientes] [bit] NULL,
	[bModModificarClientes] [bit] NULL,
	[bModGuiaDespacho] [bit] NULL,
	[bModConsecutivos] [bit] NULL,
	[bMantenimientoConsecutivos] [bit] NULL,
 CONSTRAINT [PK_DB01] PRIMARY KEY CLUSTERED 
(
	[sUsuarioPcgraf] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB00](
	[Version] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[Modulo] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Ejecutable] [nchar](15) COLLATE Modern_Spanish_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB07](
	[Codigo] [nchar](3) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Consecutivo] [int] NULL,
	[Nombre] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL,
	[Modulo] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_DB07] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EN01P](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[IDEntrega] [int] NULL,
	[sPedido] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[CodigoProducto] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Cantidad] [decimal](13, 2) NULL,
	[Despachado] [decimal](13, 2) NULL,
	[Definitivo] [decimal](13, 2) NULL,
	[Enviado] [varchar](5) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EN01_res](
	[IDLinea] [int] NULL,
	[Consecutivo] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[IdEntrega] [int] NOT NULL,
	[Pedido] [varchar](15) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[dFecha] [datetime] NOT NULL,
	[sHora] [varchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[sCliente] [varchar](80) COLLATE Modern_Spanish_CI_AS NULL,
	[sLugar] [varchar](300) COLLATE Modern_Spanish_CI_AS NULL,
	[sAsignado] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[cEstado] [int] NULL,
	[UsuarioDigita] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[EmpresaTransportista] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Tipo_Entrega] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[sPedido] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL,
	[Notas] [varchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[Ruta] [int] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DB09](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Accion] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Descripcion] [varchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[Formulario] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[Fecha] [datetime] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EN02](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[IDEntrega] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIndica] [varchar](2) COLLATE Modern_Spanish_CI_AS NULL,
	[RecibioCompraCompleta] [varchar](2) COLLATE Modern_Spanish_CI_AS NULL,
	[Pendiente] [varchar](800) COLLATE Modern_Spanish_CI_AS NULL,
	[BuenEstado] [varchar](2) COLLATE Modern_Spanish_CI_AS NULL,
	[Detalle1] [varchar](800) COLLATE Modern_Spanish_CI_AS NULL,
	[InstalacionMuebles] [varchar](2) COLLATE Modern_Spanish_CI_AS NULL,
	[Duracion] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Instalacion] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Detalle2] [varchar](800) COLLATE Modern_Spanish_CI_AS NULL,
	[ServicioPrestado] [varchar](2) COLLATE Modern_Spanish_CI_AS NULL,
	[Comentario] [varchar](800) COLLATE Modern_Spanish_CI_AS NULL,
	[Sugerencias] [varchar](800) COLLATE Modern_Spanish_CI_AS NULL,
	[Recibido] [varchar](80) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[QuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaModifico] [datetime] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EN03](
	[IDEntrega] [int] NULL,
	[Categoria] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[Subcategoria] [varchar](500) COLLATE Modern_Spanish_CI_AS NULL,
	[Subcategoria2] [varchar](500) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[QuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaModifico] [datetime] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EN04](
	[IdLinea] [int] IDENTITY(1,1) NOT NULL,
	[Consecutivo] [varchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[sPedido] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[CodigoProducto] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Recibido] [varchar](1) COLLATE Modern_Spanish_CI_AS NULL,
	[Hora] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Transportista] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Fecha] [datetime] NULL,
	[NumDesp] [int] NULL,
	[QuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EN05](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[IDEntrega] [int] NULL,
	[CodigoProducto] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Cantidad] [decimal](13, 2) NULL,
	[sPedido] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Fecha] [datetime] NULL,
	[QuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EN04_Reprogramado](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Consecutivo] [varchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[ConsecutivoAntiguo] [varchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[sPedido] [varchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[CodigoProd] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaReprogramado] [datetime] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F100](
	[Consecutivo] [int] NOT NULL,
	[Nomenclatura] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[Codigo] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Proyecto] [varchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[Nombre] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Cliente] [varchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[Notas] [varchar](2000) COLLATE Modern_Spanish_CI_AS NULL,
	[MostrarTablaAvance] [int] NULL,
	[Moneda] [int] NULL,
	[Condiciones] [varchar](2000) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaEstimadaCierre] [date] NULL,
	[TipoCambio] [numeric](18, 2) NULL,
	[sQuienIngreso] [nchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[sQuienModifico] [nchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaIngreso] [datetime] NULL,
	[dFechaModifico] [datetime] NULL,
 CONSTRAINT [PK_F100] PRIMARY KEY CLUSTERED 
(
	[Consecutivo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F001RESPALDO](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Perfil] [int] NULL,
	[Modulo] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Opcion] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Descripcion] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[Estado] [int] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F001](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Perfil] [int] NULL,
	[Modulo] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Opcion] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Descripcion] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[Estado] [int] NULL,
 CONSTRAINT [PK_F001] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F000RESPALDO](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[Perfil] [int] NULL,
	[Modulo] [nchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaIngreso] [datetime] NULL,
	[dFechaModifico] [datetime] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F200](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[Ajuste] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Tipo] [int] NULL,
	[Fecha] [datetime] NULL,
	[Monto] [numeric](18, 2) NULL,
	[Moneda] [int] NULL,
	[Descripcion] [varchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[IngresadoPor] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[ModificadoPor] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaModificacion] [datetime] NULL,
 CONSTRAINT [PK_F200] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[F100TiposCambio] 
(@Dia date)
AS
BEGIN

		set dateformat dmy 
		SELECT dFecha Dia,
		       cCompra Compra,
		       cVenta Venta
		  FROM siawin28..DBT60
		 WHERE dFecha = @Dia

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE F100DA_TipoContratos

as


SELECT 'Normal' TipoContrato
UNION ALL
SELECT 'Canje' TipoContrato
UNION ALL
SELECT 'Donación' TipoContrato
UNION ALL
SELECT 'Asesoria' TipoContrato
UNION ALL
SELECT 'Regalía' TipoContrato

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE F100DA_EstadoContrato

as


SELECT 'Incobrable' EstadoContrato
UNION ALL
SELECT 'Sin entregar' EstadoContrato
UNION ALL
SELECT 'Problemas Instalación' EstadoContrato
UNION ALL
SELECT 'Problemas Documentos' EstadoContrato
UNION ALL
SELECT 'Instalado' EstadoContrato

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE F100DA_ContratoActual
@IDContrato INT
as


SELECT TOP 1 * FROM F100DA WHERE IDContrato = @IDContrato


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F300](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[Contrato] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_F300] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F301](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[ODP] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_F301] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CED00](
	[IDCedi] [int] IDENTITY(1,1) NOT NULL,
	[NombreCedi] [nchar](75) COLLATE Modern_Spanish_CI_AS NULL,
	[Ubicacion] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[Telefono] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[Correo] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F600_BuscarCC01]
@Filtro varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  SELECT sCodigo,sDescripcion  FROM siawin28..cc20 WHERE sCodigo LIKE '%'+@Filtro +'%' OR sDescripcion LIKE '%'+@Filtro+'%'
  
  
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[REyNC_DatosCliente]
@Documento varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
SELECT 
docs.IDLinea,
DOCUMENTOS.TipoRecibo sTipo_Documento,
DOCUMENTOS.DocumentoRecibo sNumero_Documento,
DOCUMENTOS.dfecha dFecha,CAST(
ISNULL(DOCUMENTOS.cMonto,0)AS DECIMAL(18,2)) cMonto_Documento,
documentos.monedas bMoneda,
CAST(
ISNULL(DOCUMENTOS.cMonto,0)AS DECIMAL(18,2)) MontoUtilizado,
CAST(
ISNULL(documentos.SALDO,0)AS DECIMAL(18,2)) cMonto_Pendiente,
docs.IncluidoManualmente,
case documentos.monedas when 0 then 'Colones' else 'Dolares' end MONEDA,
DOCUMENTOS.Obser Referencia,
DOCUMENTOS.dFecha_Vencimiento 
FROM CEM28..F500 DOCS
INNER JOIN
(SELECT
CASO1.SALDO,
CASO1.DocumentoRecibo,
CC12.cMonto,
ESTE.sLlave,
CASO1.TipoRecibo,
CASO1.dfecha ,
CASO1.Obser ,
CASO1.monedas,
CASO1.dFecha_Vencimiento
 FROM siawin28..CC10 ESTE,siawin28..CC12
INNER JOIN
(
SELECT CC10.sLlave LLAVE,CC10.sNumero_Documento DocumentoRecibo ,CC10.cMonto_Documento MONTO,CC10.sTipo_Documento TipoRecibo,
CC10.cMonto_Pendiente SALDO,cc10.dFecha_Vencimiento dFecha_Vencimiento  ,CC10.sObservaciones Obser,CC10.dFecha dfecha,bMoneda monedas FROM siawin28..CC10 WHERE (sTipo_Documento = 'NC' OR sTipo_Documento = 'RE')
) CASO1
ON CASO1.DocumentoRecibo =
(Case 
when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
ELSE SUBSTRING(CC12.sRecibo,0,20) END)
WHERE
CC12.sFactura = ESTE.sNumero_Documento AND CC12.sTipo_Documento = ESTE.sTipo_Documento
)DOCUMENTOS
ON DOCUMENTOS.sLlave  = DOCS.Documento collate Modern_Spanish_CI_AS
And (DOCS.Documento like '%fa%' or DOCS.Documento like '%nd%')
AND DOCS.Documento = @Documento
union all
SELECT 
docs.IDLinea,
DOCUMENTOS.TipoRecibo sTipo_Documento,
DOCUMENTOS.DocumentoRecibo sNumero_Documento,
DOCUMENTOS.dfecha dFecha,
DOCUMENTOS.cMonto cMonto_Documento,
documentos.monedas bMoneda,
DOCUMENTOS.cMonto MontoUtilizado,
documentos.SALDO cMonto_Pendiente,
docs.IncluidoManualmente,
case documentos.monedas when 0 then 'Colones' else 'Dolares' end MONEDA,
DOCUMENTOS.Obser Referencia,DOCUMENTOS.dFecha_Vencimiento
FROM CEM28..F500 DOCS
INNER JOIN
(SELECT
CASO1.SALDO,
CASO1.DocumentoRecibo,
CC12.cMonto,
ESTE.sLlave,
CASO1.TipoRecibo,
CASO1.dfecha ,
CASO1.Obser ,
CASO1.monedas,
CASO1.dFecha_Vencimiento 
 FROM siawin28..CC10 ESTE,siawin28..CC12
INNER JOIN
(
SELECT CC10.sLlave LLAVE,CC10.sNumero_Documento DocumentoRecibo ,CC10.cMonto_Documento MONTO,CC10.sTipo_Documento TipoRecibo,
CC10.cMonto_Pendiente SALDO,cc10.dFecha_Vencimiento  dFecha_Vencimiento ,CC10.sObservaciones Obser,CC10.dFecha dfecha,bMoneda monedas FROM siawin28..CC10
) CASO1
ON CASO1.DocumentoRecibo =
(Case 
when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
ELSE SUBSTRING(CC12.sRecibo,0,20) END)
WHERE
CC12.sFactura = ESTE.sNumero_Documento AND CC12.sTipo_Documento = ESTE.sTipo_Documento
)DOCUMENTOS
ON DOCUMENTOS.sLlave  = DOCS.Documento collate Modern_Spanish_CI_AS
And (DOCS.Documento like '%nc%' and DOCS.IncluidoManualmente = 'true')
AND DOCS.Documento = @Documento

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F500_BuscarRecibos]
@Filtro varchar(50),
@Cliente varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT TOP 100 sLlave,sTipo_Documento,sNumero_Documento,dFecha,cMonto_Documento,bMoneda,cTcDolar,
(CASE bMoneda when 0 then 'Colones' else 'Dolares' end) as MONEDA,
cMonto_Pendiente,SUBSTRING(CC10.sRecibo,1,50) Referencia, cc10.sObservaciones Observaciones  FROM siawin28..CC10 
WHERE sCliente = @Cliente AND
(sNumero_Documento LIKE '%'+@Filtro +'%' OR dFecha LIKE '%'+@Filtro +'%')  AND
 sTipo_Documento ='NC'


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F500_BuscarFacturas]
@Filtro varchar(50),
@Cliente varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT TOP 100 sLlave,sTipo_Documento,sNumero_Documento,dFecha,cMonto_Documento,bMoneda,cTcDolar,
(CASE bMoneda when 0 then 'Colones' else 'Dolares' end) as MONEDA,
cMonto_Pendiente FROM siawin28..CC10 
WHERE sCliente = @Cliente AND
(sNumero_Documento LIKE '%'+@Filtro +'%' OR dFecha LIKE '%'+@Filtro +'%')  AND
 sTipo_Documento IN ('FA','ND')


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Davy Vargas
-- Create date: <Create Date,,>
-- Description:	Carga los estados de cuenta por cliente
-- =============================================
CREATE PROCEDURE [dbo].[CC10_EstadodeCuentaDolares]
@cliente varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	(SELECT isnull(SUM(CC10.cMonto_Documento),0)
+(SELECT isnull(SUM(cMonto_Pendiente),0)FROM siawin0..CC10 
WHERE sCliente =@cliente AND sTipo_Documento = ('ND') and bMoneda = 1)
-(SELECT isnull(SUM(cMonto_Pendiente),0)FROM siawin0..CC10 
WHERE sCliente =@cliente AND sTipo_Documento = 'NC'and bMoneda = 1) 
AS Debito 
,-- AND cMonto_Pendiente > 0
((SELECT isnull(SUM(
CC12.cMonto),0)+(SELECT isnull(SUM(cMonto_Documento),0) FROM siawin0..CC10 
WHERE sCliente =@cliente AND sTipo_Documento IN ('NC','ND')  AND bMoneda = 1)
FROM siawin0..CC10 INNER JOIN siawin0..CC12 ON (CC10.sNumero_Documento = CC12.sFactura) AND 
(CC10.sTipo_Documento = CC12.sTipo_Documento) AND (CC10.sCliente = CC12.sCodigo)
WHERE sCodigo =@cliente and CC12.bMoneda = 1
AND cc12.sFactura = CC10.sNumero_Documento
AND CC12.sTipo_Documento = 'FA' )) 
AS Credito,
(select isnull(SUM(cMonto_Pendiente),0) from siawin0..CC10 WHERE SUBSTRING(sNumero_Documento,0,3) = 'AD' AND 
cMonto_Pendiente > 0 AND bMoneda =1 AND sCliente = @cliente) 
AS Adelantos,
(SELECT ISNULL(SUM(cMonto_Total),0) FROM siawin0..FA09 
WHERE  FA09.bReferenciado = 0 AND FA09.bIngreso_Egreso = 0 AND sCodigoCliente <> '' AND FA09.bMoneda = 1
AND sCodigoCliente = @cliente
) 
AS REPendientes --and CC10.cMonto_Pendiente > 0 
FROM siawin0..CC10,siawin0..CC13,siawin0..FA27
WHERE CC10.sCliente =@cliente
--AND CC10.cMonto_Pendiente > 0
AND CC10.dFecha BETWEEN '1-1-1900'
AND GETDATE()
AND CC10.sTipo_Documento <> 'RE'
And ( cc10.sTipo_Documento <> 'RP'
OR cc10.dFecha_Vencimiento > GETDATE())
AND CC10.sTipo_Documento = CC13.sTipo_Documento
AND CC10.sTipo = CC13.sTipo
AND CC10.sCodigoProyecto = FA27.sCodigo
AND CC10.bMoneda = 1)

	
--SELECT ISNULL(sum(siawin0..
--CC10.cMonto_Documento*CC10.cTcDolar),0)-(Select ISNULL(SUM(CC10.cMonto_Pendiente*CC10.cTcDolar),0) 
--from siawin0..CC10 
--where sTipo_Documento = 'nc' and CC10.sCliente =@cliente 
----and cMonto_Pendiente > 0 
--and bMoneda = 1) as Debito,
--(SELECT ISNULL(SUM(CC12.cMonto*CC10.cTcDolar),0)+
--(select ISNULL(sum(CC10.cMonto_Documento*CC10.cTcDolar),0) from siawin0..CC10 where
--sTipo_Documento = 'nc' 
----and cMonto_Pendiente > 0 
--and sCliente = @cliente and bMoneda = 1)
-- FROM siawin0..CC10 INNER JOIN siawin0..CC12 ON (CC10.sNumero_Documento = CC12.sFactura) 
-- AND (CC10.sTipo_Documento = CC12.sTipo_Documento) AND (CC10.sCliente = CC12.sCodigo)
--WHERE sCodigo =@cliente
--AND CC12.sTipo_Documento in ('FA')
----AND CC10.cMonto_Pendiente > 0
--AND CC12.bMoneda =1) as Credito
--FROM siawin0..CC10,siawin0..CC13,siawin0..FA27
--WHERE CC10.sCliente =@cliente
----AND CC10.cMonto_Pendiente > 0
--AND CC10.dFecha BETWEEN '1-1-1900'
--AND GETDATE()
--AND CC10.sTipo_Documento <> 'RE'
--And ( cc10.sTipo_Documento <> 'RP'
--OR cc10.dFecha_Vencimiento > GETDATE())
--AND CC10.sTipo_Documento = CC13.sTipo_Documento
--AND CC10.sTipo = CC13.sTipo
--AND CC10.sCodigoProyecto = FA27.sCodigo
--AND CC10.bMoneda =1

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Davy Vargas
-- Create date: <Create Date,,>
-- Description:	Carga los estados de cuenta por cliente
-- =============================================
CREATE PROCEDURE [dbo].[CC10_EstadodeCuentaColones]
@cliente varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	(SELECT isnull(SUM(CC10.cMonto_Documento/cTcDolar),0)
-(SELECT isnull(SUM(cMonto_Pendiente/cTcDolar),0)FROM siawin0..CC10 
WHERE sCliente =@cliente AND sTipo_Documento = ('ND') and bMoneda = 0)
-(SELECT isnull(SUM(cMonto_Pendiente/cTcDolar),0)FROM siawin0..CC10 
WHERE sCliente =@cliente AND sTipo_Documento = 'NC'and bMoneda = 0) 
AS Debito ,-- AND cMonto_Pendiente > 0
((SELECT isnull(SUM(
CC12.cMonto/cTcDolar),0)+(SELECT isnull(SUM(cMonto_Documento/cTcDolar),0) FROM siawin0..CC10 
WHERE sCliente =@cliente AND sTipo_Documento IN ('NC','ND')  AND bMoneda = 0)
FROM siawin0..CC10 INNER JOIN siawin0..CC12 ON (CC10.sNumero_Documento = CC12.sFactura) AND 
(CC10.sTipo_Documento = CC12.sTipo_Documento) AND (CC10.sCliente = CC12.sCodigo)
WHERE sCodigo =@cliente and CC12.bMoneda = 0
AND cc12.sFactura = CC10.sNumero_Documento
AND CC12.sTipo_Documento = 'FA' )) 
AS Credito,
((SELECT ISNULL(SUM(ISNULL(FA09.cMonto_Total/FA09.cTipo_Cambio,0)),0) FROM siawin0..FA09 
WHERE  FA09.bReferenciado = 0 AND FA09.bIngreso_Egreso = 0 AND FA09.bMoneda = 0
AND FA09.sCodigoCliente  = @cliente)) AS REPendientes,
 --and CC10.cMonto_Pendiente > 0 
((select isnull(SUM(cMonto_Pendiente/cTcDolar),0) from siawin0..CC10 WHERE SUBSTRING(sNumero_Documento,0,3) = 'AD' AND 
cMonto_Pendiente > 0 AND bMoneda =0 AND sCliente = @cliente) )
AS Adelantos
FROM siawin0..CC10,siawin0..CC13,siawin0..FA27
WHERE CC10.sCliente =@cliente
--AND CC10.cMonto_Pendiente > 0
AND CC10.dFecha BETWEEN '1-1-1900'
AND GETDATE()
AND CC10.sTipo_Documento <> 'RE'
And ( cc10.sTipo_Documento <> 'RP'
OR cc10.dFecha_Vencimiento > GETDATE())
AND CC10.sTipo_Documento = CC13.sTipo_Documento
AND CC10.sTipo = CC13.sTipo
AND CC10.sCodigoProyecto = FA27.sCodigo
AND CC10.bMoneda = 0)



--SOLO CON SALDO
--(SELECT isnull(SUM(CC10.cMonto_Documento),0)-(SELECT isnull(SUM(cMonto_Documento),0) FROM siawin0..CC10 
--WHERE sCliente =@cliente AND sTipo_Documento = 'NC' and bMoneda = 0) as Debito,-- AND cMonto_Pendiente > 0
--((SELECT isnull(SUM(
--CC12.cMonto),0)+(SELECT isnull(SUM(cMonto_Documento),0) FROM siawin0..CC10 
--WHERE sCliente =@cliente AND sTipo_Documento = 'NC'  AND bMoneda = 0)--AND cMonto_Pendiente > 0
--FROM siawin0..CC10 INNER JOIN siawin0..CC12 ON (CC10.sNumero_Documento = CC12.sFactura) AND 
--(CC10.sTipo_Documento = CC12.sTipo_Documento) AND (CC10.sCliente = CC12.sCodigo)
--WHERE sCodigo =@cliente and CC12.bMoneda = 0
--AND cc12.sFactura = CC10.sNumero_Documento
--AND CC12.sTipo_Documento = 'FA' )) AS Credito --and CC10.cMonto_Pendiente > 0 
--FROM siawin0..CC10,siawin0..CC13,siawin0..FA27
--WHERE CC10.sCliente =@cliente
----AND CC10.cMonto_Pendiente > 0
--AND CC10.dFecha BETWEEN '1-1-1900'
--AND GETDATE()
--AND CC10.sTipo_Documento <> 'RE'
--And ( cc10.sTipo_Documento <> 'RP'
--OR cc10.dFecha_Vencimiento > GETDATE())
--AND CC10.sTipo_Documento = CC13.sTipo_Documento
--AND CC10.sTipo = CC13.sTipo
--AND CC10.sCodigoProyecto = FA27.sCodigo
--AND CC10.bMoneda = 0)



END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Busca cliente para crear un nuevo proyecto.
CREATE PROCEDURE [dbo].[VF100_BuscarCliente]	
	@Cliente varchar(100)
AS
BEGIN
	select TOP 100 sCodigo Codigo,
	       sNombre Nombre,
		   sDireccion Direccion,
		   sTelefono Telefono,
		   sFax Fax
	  from siawin28..CC01			 
	where (sNombre like '%'+@Cliente+'%' or sCodigo like '%'+@Cliente+'%')
	  and bEstadoCliente=1	
    order by sNombre
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RECC10_DatosCliente]
@Cliente varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
SELECT sDireccion,sTelefono,sFax FROM siawin28..CC01 WHERE sCodigo = @Cliente 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Busca cliente para crear un nuevo proyecto.
CREATE PROCEDURE [dbo].[F100_BuscarCliente]	
	@Cliente varchar(100)
AS
BEGIN
	select TOP 100 sCodigo Codigo,
	       sNombre Nombre,
		   sDireccion Direccion,
		   sTelefono Telefono,
		   sFax Fax
	  from siawin28..CC01			 
	where (sNombre like '%'+@Cliente+'%' or sCodigo like '%'+@Cliente+'%')
	  and bEstadoCliente=1	
    order by sNombre
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Davy Vargas
-- Create date: <Create Date,,>
-- Description:	Clientes
-- =============================================
create PROCEDURE [dbo].[CC01_Clientes]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT sCodigo,sNombre,sCedula_Juridica,sTelefono,dFecha_Ingreso,dFecha_Modifico,bEstadoCliente  FROM siawin28..CC01 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[Fecha] [datetime] NULL,
	[Usuario] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[Instruccion] [varchar](100) COLLATE Modern_Spanish_CI_AS NULL,
	[Parametros] [varchar](8000) COLLATE Modern_Spanish_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit](
	[AuditID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [char](1) COLLATE Modern_Spanish_CI_AS NULL,
	[TableName] [varchar](128) COLLATE Modern_Spanish_CI_AS NULL,
	[PrimaryKeyField] [varchar](1000) COLLATE Modern_Spanish_CI_AS NULL,
	[PrimaryKeyValue] [varchar](1000) COLLATE Modern_Spanish_CI_AS NULL,
	[FieldName] [varchar](128) COLLATE Modern_Spanish_CI_AS NULL,
	[OldValue] [varchar](1000) COLLATE Modern_Spanish_CI_AS NULL,
	[NewValue] [varchar](1000) COLLATE Modern_Spanish_CI_AS NULL,
	[UpdateDate] [datetime] NULL,
	[UserName] [varchar](128) COLLATE Modern_Spanish_CI_AS NULL,
	[HostName] [varchar](128) COLLATE Modern_Spanish_CI_AS NULL,
	[IP] [varchar](128) COLLATE Modern_Spanish_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CED01](
	[IDEmpresa] [int] NOT NULL,
	[IDCedi] [int] NULL,
	[NombreEmpresa] [nchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Telefono] [nchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Correo] [nchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[siawin] [varchar](18) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL,
	[NEmpresa] [varchar](10) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_CED01] PRIMARY KEY CLUSTERED 
(
	[IDEmpresa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CED02](
	[IDBodega] [int] IDENTITY(1,1) NOT NULL,
	[IDCedi] [int] NULL,
	[IDEmpresa] [int] NULL,
	[NBodega] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL,
 CONSTRAINT [PK_CED02] PRIMARY KEY CLUSTERED 
(
	[IDBodega] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CED04](
	[IDEstante] [int] IDENTITY(1,1) NOT NULL,
	[IDCedi] [int] NULL,
	[IDEmpresa] [int] NULL,
	[Estante] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[Estado] [tinyint] NULL,
	[Detalle] [nchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL,
 CONSTRAINT [PK_CED04] PRIMARY KEY CLUSTERED 
(
	[IDEstante] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CED03H](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[Usuario] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Movimiento] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Canterior] [decimal](18, 2) NULL,
	[Tipo] [varchar](5) COLLATE Modern_Spanish_CI_AS NULL,
	[IDProducto] [int] NOT NULL,
	[CodigoProducto] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[IDCedi] [int] NULL,
	[IDEmpresa] [int] NULL,
	[NBodega] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[Cantidad] [decimal](18, 2) NULL,
	[Seccion] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [nchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[FechaModifico] [datetime] NULL,
	[Prioridad] [varchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[Estado] [int] NULL,
	[Detalle] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF500_BuscarRecibos]
@Filtro varchar(50),
@Cliente varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT TOP 100 sLlave,sTipo_Documento,sNumero_Documento,dFecha,cMonto_Documento,bMoneda,cTcDolar,
(CASE bMoneda when 0 then 'Colones' else 'Dolares' end) as MONEDA,
cMonto_Pendiente,SUBSTRING(CC10.sRecibo,1,50) Referencia, cc10.sObservaciones Observaciones 
 FROM siawin28..CC10 
WHERE sCliente = @Cliente AND
(sNumero_Documento LIKE '%'+@Filtro +'%' OR dFecha LIKE '%'+@Filtro +'%')  AND
 sTipo_Documento ='NC'


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF500_BuscarFacturas]
@Filtro varchar(50),
@Cliente varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT TOP 100 sLlave,sTipo_Documento,sNumero_Documento,dFecha,cMonto_Documento,bMoneda,cTcDolar,
(CASE bMoneda when 0 then 'Colones' else 'Dolares' end) as MONEDA,
cMonto_Pendiente FROM siawin28..CC10 
WHERE sCliente = @Cliente AND
(sNumero_Documento LIKE '%'+@Filtro +'%' OR dFecha LIKE '%'+@Filtro +'%')  AND
 sTipo_Documento IN ('FA','ND')


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF500](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[Documento] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[MontoUtilizado] [numeric](18, 2) NULL,
	[Saldo] [numeric](18, 2) NULL,
	[IncluidoManualmente] [bit] NULL,
 CONSTRAINT [PK_VF500] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF600_BuscarCC01]
@Filtro varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  SELECT sCodigo,sDescripcion  FROM siawin28..cc20 WHERE sCodigo LIKE '%'+@Filtro +'%' OR sDescripcion LIKE '%'+@Filtro+'%'
  
  
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF600](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[CodAsesor] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[Nombre] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Porcentaje] [decimal](18, 2) NULL,
 CONSTRAINT [PK_VF600] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF400](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[Documento] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Fecha] [datetime] NULL,
	[Monto] [numeric](18, 2) NULL,
	[Saldo] [numeric](18, 2) NULL,
	[FechaVencimiento] [datetime] NULL,
	[Tipo] [int] NULL,
	[Moneda] [int] NULL,
	[Detalle] [varchar](200) COLLATE Modern_Spanish_CI_AS NULL,
	[Recibos] [varchar](500) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienModifico] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[QuienIngreso] [varchar](30) COLLATE Modern_Spanish_CI_AS NULL,
	[dFechaIngreso] [datetime] NULL,
	[dFechaModifico] [datetime] NULL,
 CONSTRAINT [PK_VF400] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF601](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[Cobrador] [nchar](10) COLLATE Modern_Spanish_CI_AS NULL,
	[Nombre] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_VF601] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF700](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NOT NULL,
	[Usuario] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[Fecha] [datetime] NULL,
	[Detalle] [varchar](1000) COLLATE Modern_Spanish_CI_AS NULL,
	[Tipo] [varchar](5) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_VF700] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF800_BuscarPedido]
@Pedido varchar(30),
@cliente varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select TOP 100 sPedido Codigo,
	       dFecha Fecha,
	       sOrden_Compra OrdenCompra,
	       sNombre_Cliente Nombre,
	       sFactura Factura,
	       sTipoFactura Tipo    	
	  from siawin28..FA00			 
	where sPedido like '%'+@Pedido+'%'
	and sCodigo_Cliente = @cliente
	and sTipoFactura <> 'AN' AND sTipoFactura <> 'A3'
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VF800](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodProyecto] [int] NULL,
	[Movimiento] [char](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_VF800] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RDR00_Detalle]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT 
Proyecto,
ISNULL(Factura,'NULA') AS Documento,
(
SELECT (',' + isnull(FA01.sDescripcion,'')) as 'data()'
FROM siawin28..FA01,siawin28..FA00 
WHERE siawin28..FA01.sPedido = FA00.sPedido AND
FA00.sFactura = SUBSTRING(DocumentosClienteProyecto.Documento,9,25)
FOR XML PATH('')
) as Detalle,
CAST(isnull(MontoUtilizado,0)AS VARCHAR (30)) as MontoRecibo,
ISNULL(FechaDoc,'01/01/1900') AS FechaRecibo,
'' as MontoDocumento ,'01/01/1900'as FechaFactura ,
isnull(FACTURACION.MontoPendiente,0)as MontoPendiente,
FACTURACION.sObservaciones 
 FROM EuroSat0 ..
DocumentosClienteProyecto
  LEFT JOIN
 (
 SELECT (cc10.sTipo_Documento + '- '+ sNumero_Documento) AS Factura,
 isnull(CC10.cMonto_Documento,0) AS MontoDocumento,
 CC10.dFecha as FechaDoc,CC10.sLlave as Llave ,CC10.cMonto_Pendiente AS MontoPendiente,
 CC10.sObservaciones
 FROM siawin28..CC10
 WHERE sTipo_Documento IN ('RE','NC')
 ) FACTURACION
 ON FACTURACION.Llave = DocumentosClienteProyecto.Documento 
  WHERE DocumentosClienteProyecto.Documento LIKE '%RE%' OR DocumentosClienteProyecto.Documento LIKE '%NC%'
union all
 SELECT 
Proyecto,
ISNULL(Factura,'NULA') AS Documento,
(
SELECT (',' + isnull(FA01.sDescripcion,'')) as 'data()'
FROM siawin28..FA01,siawin28..FA00 
WHERE siawin28..FA01.sPedido = FA00.sPedido AND
FA00.sFactura = SUBSTRING(DocumentosClienteProyecto.Documento,9,25)
FOR XML PATH('')
) as Detalle,
'' as MontoRecibo,'01/01/1900'as FechaRecibo,
CAST(isnull(MontoDocumento,0)AS VARCHAR(30)) as MontoFactura,
ISNULL(FechaDoc,'01/01/1900') AS FechaFactura,
isnull(FACTURACION.MontoPendiente,0)as MontoPendiente,
FACTURACION.sObservaciones
 FROM EuroSat0 ..
DocumentosClienteProyecto
  LEFT JOIN
 (
 SELECT (cc10.sTipo_Documento + '- '+ sNumero_Documento) AS Factura,
 isnull(CC10.cMonto_Documento,0) AS MontoDocumento,
 CC10.dFecha as FechaDoc,CC10.sLlave as Llave ,CC10.cMonto_Pendiente AS MontoPendiente,
 CC10.sObservaciones
 FROM siawin28..CC10
 WHERE sTipo_Documento IN ('FA','ND')
 ) FACTURACION
 ON FACTURACION.Llave = DocumentosClienteProyecto.Documento 
  WHERE DocumentosClienteProyecto.Documento LIKE '%FA%' OR DocumentosClienteProyecto.Documento LIKE '%ND%'

ORDER BY Proyecto,Documento  ASC 
-- go 
 
 

-- --SELECT * FROM DocumentosClienteProyecto WHERE Proyecto = 178
 
 
-- --SELECT * FROM Bitacora WHERE Parametros LIKE '%000279FA00031947%'
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RDR00_General]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;



--select * from Proyectos 
--select * from AjustesProyecto 

SELECT
Codigo ,
Proyecto,
CC01.sCodigo AS Cliente,
CC01.sNombre AS NombreCliente,
CC01.sTelefono AS Telefono,
Nombre AS NombreProyecto,
FechaEstimadaCierre,
(CASE pr.Moneda WHEN 0 THEN 'Colones' else 'Dolares' end) as MonedaContrato,
isnull(MONTOCONTRATO.Total,0) AS MONTOCONTRATO,
(ISNULL(MONTOCONTRATOSUMADO.Total,0) - ISNULL(MONTOCONTRATORESTADO.Total,0)) AS MONTOAJUSTADO,


	(
	SELECT ('' + isnull(cc20.sDescripcion,'')) as 'data()'
	FROM EuroSat0..AsesoresProyecto,siawin28..cc20 
	WHERE 
	AsesoresProyecto.Asesor = cc20.sCodigo and
	AsesoresProyecto.Proyecto = pr.Codigo
	FOR XML PATH('')
	) as Asesores,
	Notas,
	Condiciones 
	
	
FROM siawin28..CC01 ,EuroSat0..Proyectos pr

LEFT JOIN
(
select Monto as Total,AjustesProyecto.Proyecto as Proyectos 
 FROM EuroSat0..Ajustes,EuroSat0..AjustesProyecto WHERE 
Ajustes.Codigo = AjustesProyecto.Ajuste  
and Ajustes.Tipo = 0
) MONTOCONTRATO
on MONTOCONTRATO.Proyectos = pr.Codigo 

LEFT JOIN
(
select isnull(SUM(Monto),0) as Total,AjustesProyecto.Proyecto as Proyectos 
 FROM EuroSat0..Ajustes,EuroSat0..AjustesProyecto WHERE 
Ajustes.Codigo = AjustesProyecto.Ajuste AND
Ajustes.Tipo IN (0,1)
group by AjustesProyecto.Proyecto
) MONTOCONTRATOSUMADO
on MONTOCONTRATOSUMADO.Proyectos = pr.Codigo

LEFT JOIN
(
select isnull(SUM(Monto),0) as Total,AjustesProyecto.Proyecto as Proyectos 
 FROM EuroSat0..Ajustes,EuroSat0..AjustesProyecto WHERE 
Ajustes.Codigo = AjustesProyecto.Ajuste and
Ajustes.Tipo  = 2
group by AjustesProyecto.Proyecto
) MONTOCONTRATORESTADO
on MONTOCONTRATORESTADO.Proyectos = pr.Codigo



WHERE pr.Cliente = CC01.sCodigo 
and pr.Codigo in (1,2,3)
--
order by pr.Codigo asc



--SELECT * FROM Proyectos WHERE Cliente NOT IN(SELECT sCodigo FROM siawin28..CC01 )

--SELECT * FROM EuroSat28..Proyectos WHERE Cliente = '002822'


--SELECT * FROM EuroSat28..DocumentosClienteProyecto 
--WHERE Proyecto = 222












END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RDR00_PlandePagos]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT Proyecto,FechaVencimiento,Monto,Saldo,CASE Moneda when 0 then 'Colones' else 'Dolares' end as Moneda 
FROM EuroSat0..PagosEstimados,EuroSat0..PagosEstimadosProyecto WHERE
PagosEstimadosProyecto.Pago = PagosEstimados .Codigo 
--and PagosEstimadosProyecto.Proyecto in (1,2,3)
ORDER BY Proyecto,FechaVencimiento ASC


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF800_DetallePedido]
@Pedido varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select sPedido Pedido,
	       ilinea Linea,
	       sCodigo_Producto Codigo,
	       sDescripcion Descripcion,
	       cCantidad Cantidad	      	
	  from siawin28..FA01	
     where sPedido=@Pedido 
    order by iLinea 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WMS02](
	[CODIGO] [nvarchar](255) COLLATE Modern_Spanish_CI_AS NULL,
	[CANTIDAD] [float] NULL,
	[LOCALIZACION] [nvarchar](255) COLLATE Modern_Spanish_CI_AS NULL,
	[BODEGA] [nvarchar](255) COLLATE Modern_Spanish_CI_AS NULL
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WIMResp](
	[IDDelete] [int] IDENTITY(1,1) NOT NULL,
	[IDLinea] [int] NULL,
	[CodigoProducto] [nchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[IMName] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[NImagen] [int] NULL,
	[QuienIngreso] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
	[QuienElimino] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaElimino] [datetime] NULL,
 CONSTRAINT [PK_WIMResp] PRIMARY KEY CLUSTERED 
(
	[IDDelete] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WIM](
	[IDLinea] [int] IDENTITY(1,1) NOT NULL,
	[CodigoProducto] [nchar](15) COLLATE Modern_Spanish_CI_AS NULL,
	[IMName] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[NImagen] [int] NULL,
	[QuienIngreso] [varchar](20) COLLATE Modern_Spanish_CI_AS NULL,
	[FechaIngreso] [datetime] NULL,
 CONSTRAINT [PK_WIM] PRIMARY KEY CLUSTERED 
(
	[IDLinea] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[WEB_Login]
	-- Add the parameters for the stored procedure here
	
@Usuario varchar(15),
@contrasena varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


SELECT COUNT(*) correcto FROM siawin0..DBT10 WHERE
sCodigo_Usuario = RTRIM(@Usuario) and sClave = RTRIM(@contrasena)

--SELECT COUNT(*) FROM siawin0..DBT10 WHERE
--sCodigo_Usuario = RTRIM('dvargas') and sClave = RTRIM('242424')


END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VGD02_SelectODPSICAPRO]
	
@CodContrato  varchar(50),
@CodODP  varchar(50),
@Cliente varchar(50),
@Fecha varchar(50)
	
AS
BEGIN
	SET NOCOUNT ON;
	select TOP 50 Contrato.Codigo,Contrato.CodODP,Cliente.Nombre,FPlanta   
	from BDSICAPRO..Contrato(nolock),BDSICAPRO..Cliente(nolock)
	where Contrato.CodCliente = Cliente.Codigo 
	--and Contrato.Codigo like '%'+@CodContrato+'%' 
	and Contrato.CodODP like '%'+@CodODP+'%' 
	--and Cliente.Nombre like '%'+@Cliente+'%' 
--	and FPlanta like '%'+@Fecha+'%'
	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF900_update]
@Consecutivo int,
@Ncontrato varchar(20),
@NProcess int,
@TipoEmpresa varchar(10),
@CodCliente varchar (10),
@NombreCliente varchar(75),
@Asesor varchar(50),
@SubContratos int,
@Descripcion varchar (200),
@UsuarioIngreso varchar(20),
@UsuarioModifico varchar(20),
@dFechaIngreso datetime,
@dFechaModifico datetime,
@Estado int

AS
BEGIN TRY
BEGIN TRANSACTION
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


UPDATE F900 SET
Ncontrato=@Ncontrato,
TipoEmpresa=@TipoEmpresa,
NProcess=@NProcess,
CodCliente=@CodCliente,
NombreCliente=@NombreCliente,
Asesor=@Asesor,
SubContratos=@SubContratos,
Descripcion=@Descripcion,
UsuarioIngreso=@UsuarioIngreso,
UsuarioModifico=@UsuarioModifico,
dFechaIngreso=@dFechaIngreso,
dFechaModifico=@dFechaModifico,
Estado=@Estado
WHERE
Consecutivo = @Consecutivo 


COMMIT
END TRY
BEGIN CATCH
ROLLBACK
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF800_insert]
@IDLinea int,
@CodProyecto int,
@Movimiento varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	INSERT INTO VF800 VALUES(
	@CodProyecto,
	@Movimiento)
	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF800_delete]
@IDLinea int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DELETE VF800 WHERE 
	IDLinea = @IDLinea 
	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF800_CargarMovimientos]
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select IDLinea,sPedido,dFecha,sOrden_Compra,sFactura,sTipoFactura from VF800,siawin28..FA00 where 
VF800.Movimiento = FA00.sPedido collate Modern_Spanish_CI_AS
 and VF800.CodProyecto = @CodProyecto

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RDR00_GeneralPorProyecto]
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;



--select * from Proyectos 
--select * from AjustesProyecto 
SELECT
Consecutivo Codigo,
Codigo Proyecto,
Cliente,
Proyecto NombreCliente,
CC01.sTelefono Telefono,
Nombre NombreProyecto,
FechaEstimadaCierre,
CASE Moneda
when 0 then 'Colones' else 'Dolares' end MonedaContrato,
isnull(MONTOCONTRATO.Monto,0) MONTOCONTRATO,
ISNULL(MONTOCONTRATOSUMA.Monto,0)-ISNULL(MONTOCONTRATORESTA.Monto,0) MONTOAJUSTADO,
ISNULL((
	SELECT ('' + isnull(cc20.sDescripcion,'')) as 'data()'
	FROM F600,siawin28..cc20 
	WHERE 
	F600.CodAsesor= cc20.sCodigo COLLATE Latin1_General_CS_AS_KS_WS and
	F600.CodProyecto = F100.Consecutivo 
	FOR XML PATH('')
	),'') as Asesores,
	F100.Notas,
	F100.Condiciones 
 FROM siawin28..CC01 ,F100 
 LEFT JOIN 
 (
 SELECT ISNULL(SUM(Monto),0)Monto,CodProyecto FROM F200 WHERE Tipo = 0 GROUP BY CodProyecto 
 ) MONTOCONTRATO
 ON MONTOCONTRATO.CodProyecto = F100.Consecutivo 
  LEFT JOIN 
 (
 SELECT ISNULL(SUM(Monto),0)Monto,CodProyecto FROM F200 WHERE Tipo IN(0,1) GROUP BY CodProyecto 
 ) MONTOCONTRATOSUMA
 ON MONTOCONTRATOSUMA.CodProyecto = F100.Consecutivo
   LEFT JOIN 
 (
 SELECT ISNULL(SUM(Monto),0)Monto,CodProyecto FROM F200 WHERE Tipo =2 GROUP BY CodProyecto 
 ) MONTOCONTRATORESTA
 ON MONTOCONTRATORESTA.CodProyecto = F100.Consecutivo 
 where
CC01.sCodigo = F100.Cliente COLLATE Latin1_General_CS_AS_KS_WS and 
F100.Consecutivo = @CodProyecto 
ORDER BY Consecutivo 



--SELECT * FROM Proyectos WHERE Cliente NOT IN(SELECT sCodigo FROM siawin28..CC01 )

--SELECT * FROM EuroSat28..Proyectos WHERE Cliente = '002822'


--SELECT * FROM EuroSat28..DocumentosClienteProyecto 
--WHERE Proyecto = 222












END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RDR00_DetallePorProyecto]
@Codproyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT
F500.CodProyecto Proyecto,
DOCUMENTOS.Documento,
ISNULL((
SELECT (',' + isnull(FA01.sDescripcion,'')) as 'data()'
FROM siawin28..FA01,siawin28..FA00 
WHERE siawin28..FA01.sPedido = FA00.sPedido AND
FA00.sFactura = SUBSTRING(F500.Documento,9,25) collate Modern_Spanish_CI_AS
FOR XML PATH('')
),'') as Detalle,
CAST(DOCUMENTOS.cMonto_Documento AS VARCHAR(50))MontoRecibo,
DOCUMENTOS.dFecha FechaRecibo,
'' MontoFactura,
'01-01-1900' FechaFactura,
DOCUMENTOS.sObservaciones 
FROM 
F500 
LEFT JOIN 
(
SELECT 
(sTipo_Documento + '-'+ sNumero_Documento )Documento,sLlave,cMonto_Documento,dFecha ,sObservaciones 

 FROM siawin28..CC10  
) DOCUMENTOS
ON DOCUMENTOS.sLlave = F500.Documento collate Modern_Spanish_CI_AS
WHERE (F500.Documento like '%NC%' OR F500.Documento like '%RE%' ) 
AND F500.CodProyecto = @Codproyecto

union all

SELECT
F500.CodProyecto Proyecto,
DOCUMENTOS.Documento,
(
SELECT (',' + isnull(FA01.sDescripcion,'')) as 'data()'
FROM siawin28..FA01,siawin28..FA00 
WHERE siawin28..FA01.sPedido = FA00.sPedido AND
FA00.sFactura = SUBSTRING(F500.Documento,9,25) collate Modern_Spanish_CI_AS
FOR XML PATH('')
) as Detalle,
'' MontoRecibo,'01-01-1900'FechaRecibo,
CAST(DOCUMENTOS.cMonto_Documento AS VARCHAR(50)) MontoFactura,
DOCUMENTOS.dFecha FechaFactura,
DOCUMENTOS.sObservaciones
FROM 
F500 
LEFT JOIN 
(
SELECT 
(sTipo_Documento + '-'+ sNumero_Documento )Documento,sLlave,cMonto_Documento,dFecha ,sObservaciones 

 FROM siawin28..CC10  
) DOCUMENTOS
ON DOCUMENTOS.sLlave = F500.Documento collate Modern_Spanish_CI_AS
WHERE (F500.Documento like '%FA%' OR F500.Documento like '%ND%' )
AND F500.CodProyecto = @Codproyecto
order by Proyecto,DOCUMENTOS.Documento asc


 
 

-- --SELECT * FROM DocumentosClienteProyecto WHERE Proyecto = 178
 
 
-- --SELECT * FROM Bitacora WHERE Parametros LIKE '%000279FA00031947%'
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PK01MASIVO]
	-- Add the parameters for the stored procedure here
	
	@LISTAEMPAQUE VARCHAR(50),
	@CODIGOPRODUCTO VARCHAR(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    
	DELETE FROM PK01 WHERE sNombreLista = @LISTAEMPAQUE AND sCodigo_Producto = @CODIGOPRODUCTO
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF700_insert]
@IDLinea	int	,
@CodProyecto	int	,
@Usuario	varchar(50)	,
@Fecha	datetime	,
@Detalle	varchar(1000)	,
@Tipo	varchar(5)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
INSERT INTO VF700 VALUES(
@CodProyecto		,
@Usuario	,	
@Fecha	,	
@Detalle	,	
@Tipo	)	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[VF700_DistinctTipo]
@CodProyecto	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT distinct Tipo FROM VF700 WHERE CodProyecto = @CodProyecto 	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF700_CargarNotasporTipo]
@CodProyecto	int	,
@Tipo varchar(5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT * FROM VF700 WHERE CodProyecto = @CodProyecto  and Tipo = @Tipo 	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF700_CargarNotas]
@CodProyecto	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT * FROM VF700 WHERE CodProyecto = @CodProyecto 	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF601_update]
@IDLinea	int	,
@CodProyecto	int,	
@Cobrador	nchar(10),	
@Nombre	varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

UPDATE VF601 SET
CodProyecto=@CodProyecto	,	
Cobrador=@Cobrador	,	
Nombre=@Nombre	
WHERE 
CodProyecto=@CodProyecto

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF601_insert]
@IDLinea	int	,
@CodProyecto	int,	
@Cobrador	nchar(10),	
@Nombre	varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO VF601 VALUES(
@CodProyecto	,	
@Cobrador	,	
@Nombre	)

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF601_delete]
@IDLinea	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

delete VF601 
WHERE 
IDLinea=@IDLinea



END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF601_CargarCobradores]
@CodProyecto	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT * FROM VF601 WHERE CodProyecto = @CodProyecto
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF600_update]
@IDLinea	int	,
@Nombre	varchar(50)	,
@Porcentaje	decimal(18, 2)	,
@CodAsesor	varchar(20)	,
@CodProyecto	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

update VF600 SET
Nombre=@Nombre		,
Porcentaje=@Porcentaje		,
CodAsesor=@CodAsesor		,
CodProyecto=@CodProyecto
where 	
IDLinea=@IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF600_insert]
@IDLinea	int	,
@Nombre	varchar(50)	,
@Porcentaje	decimal(18, 2)	,
@CodAsesor	varchar(20)	,
@CodProyecto	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO VF600 VALUES(
@CodProyecto	,
@CodAsesor		,
@Nombre		,
@Porcentaje
)



END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF600_delete]
@IDLinea	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DELETE VF600 WHERE
IDLinea=@IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF600_CargarAsesores]
@CodProyecto	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Select * from VF600 WHERE CodProyecto = @CodProyecto


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF301_update]
@IDLinea int,
@CodProyecto int,
@ODP varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

UPDATE VF301 SET
ODP=@ODP
WHERE
IDLinea =@IDLinea

SELECT * FROM VF301 WHERE CodProyecto = @CodProyecto 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF301_Insert]
@IDLinea int,
@CodProyecto int,
@ODP varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

insert into VF301 VALUES(
@CodProyecto,
@ODP
)

SELECT * FROM VF301 WHERE CodProyecto = @CodProyecto 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF301_delete]
@Consecutivo int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
DELETE VF301 WHERE IDLinea = @Consecutivo 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF301_CargarODP]
@CodProyecto int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	select * from VF301 WHERE CodProyecto = @CodProyecto

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF501_update]
@IDLinea	int	,
@CodProyecto	int	,
@Documento	varchar(50)	,
@MontoUtilizado	numeric(18, 2)	,
@Saldo	numeric(18, 2)	,
@IncluidoManualmente	bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

UPDATE VF500 SET
CodProyecto=@CodProyecto,
Documento=@Documento,
MontoUtilizado=@MontoUtilizado,
Saldo=@Saldo ,
IncluidoManualmente=@IncluidoManualmente
WHERE 
IDLinea=@IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF501_insert]
@IDLinea	int	,
@CodProyecto	int	,
@Documento	varchar(50)	,
@MontoUtilizado	numeric(18, 2)	,
@Saldo	numeric(18, 2)	,
@IncluidoManualmente	bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO VF500 VALUES(
@CodProyecto,
@Documento,
@MontoUtilizado,
@Saldo ,
@IncluidoManualmente) 


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF501_delete]
@IDLinea	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

delete VF500
WHERE 
IDLinea=@IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF500ActualizarReciboManual]
@IDLinea int,
@Monto varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		--Declare @Documento varchar(50) = '003765NCAD00002413'
	--	DECLARE @IDLinea int = 2672
	--	DECLARE @Monto int = 50
	declare @MontoDocumento decimal(18,2)= isnull(( SELECT isnull(cMonto_Pendiente,0) FROM VF500,siawin28..CC10 where
Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and
 Documento = (select Documento from VF500 where VF500.IDLinea  = @IDLinea)
 group by CC10.cMonto_Pendiente ),0)
 declare @MontoUtilizadoenProyectos decimal(18,2) =isnull(( SELECT isnull(SUM(MontoUtilizado),0)Utilizado FROM VF500,siawin28..CC10 where
Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and
 Documento = (select Documento from VF500 where IDLinea = @IDLinea) and IDLinea <> @IDLinea 
 group by CC10.cMonto_Documento ),0)
 
 select @MontoDocumento,@MontoUtilizadoenProyectos
Declare @montosaldo decimal(18,2) =@MontoDocumento-@MontoUtilizadoenProyectos-@Monto
select @montosaldo

BEGIN TRANSACTION
UPDATE VF500 SET
MontoUtilizado = @Monto
WHERE IDLinea = @IDLinea AND IncluidoManualmente = 'True'
COMMIT
BEGIN TRANSACTION
UPDATE VF500 SET
Saldo =@montosaldo 
WHERE IncluidoManualmente = 'True' AND
Documento IN (SELECT Documento FROM VF500 WHERE IDLinea = @IDLinea)
COMMIT
--UPDATE F500 SET
--Saldo = @MontoDocumento - @MontoUtilizadoenProyectos
--WHERE F500.Documento = (
--SELECT F500.Documento FROM F500 WHERE IDLinea = @IDLinea)


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF500_VerificarDuplicados]
@Documento Varchar(50),
@CodProyecto int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Select COUNT(*) from VF500 where Documento = @Documento and CodProyecto = @CodProyecto 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF500_update]
@IDLinea	int	,
@CodProyecto	int	,
@Documento	varchar(50)	,
@MontoUtilizado	numeric(18, 2)	,
@Saldo	numeric(18, 2)	,
@IncluidoManualmente	bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

UPDATE VF500 SET
CodProyecto=@CodProyecto,
Documento=@Documento,
MontoUtilizado=@MontoUtilizado,
Saldo=@Saldo ,
IncluidoManualmente=@IncluidoManualmente
WHERE 
IDLinea=@IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF500_MontoUtilizadoDocumentos]
@idlinea int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

declare @MontoDocumento decimal(18,2)=isnull(( SELECT isnull(cMonto_Documento,0) FROM VF500,siawin28..CC10 where
Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and
 Documento = (select Documento from VF500 where IDLinea = @idlinea )
 group by CC10.cMonto_Documento ),0)
 declare @MontoUtilizadoenProyectos decimal(18,2) = isnull(( SELECT isnull(SUM(MontoUtilizado),0)Utilizado FROM VF500,siawin28..CC10 where
Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and
 Documento =(select Documento from VF500 where IDLinea = @idlinea )
 group by CC10.cMonto_Documento ),0)
 
 select @MontoDocumento,@MontoUtilizadoenProyectos




END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF500_insert]
@IDLinea	int	,
@CodProyecto	int	,
@Documento	varchar(50)	,
@MontoUtilizado	numeric(18, 2)	,
@Saldo	numeric(18, 2)	,
@IncluidoManualmente	bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
declare @MontoDocumento decimal(18,2)= isnull(( SELECT isnull(cMonto_Documento,0) FROM VF500,siawin28..CC10 where
Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and
 Documento = @Documento
 group by CC10.cMonto_Documento ),0)
 declare @MontoUtilizadoenProyectos decimal(18,2) =isnull(( SELECT isnull(SUM(MontoUtilizado),0)Utilizado FROM VF500,siawin28..CC10 where
Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and
 Documento = @Documento 
 group by CC10.cMonto_Documento ),0)

if @IncluidoManualmente = 'false'
begin 
INSERT INTO VF500 VALUES(
@CodProyecto,
@Documento,
@MontoUtilizado,
0,
@IncluidoManualmente) 
SELECT @@IDENTITY AS 'Identity';
end
else
begin
if (@MontoDocumento - @MontoUtilizadoenProyectos)<=0
begin
INSERT INTO VF500 VALUES(
@CodProyecto,
@Documento,
0,
0,
@IncluidoManualmente) 
SELECT @@IDENTITY AS 'Identity';
end
else
begin
IF @IncluidoManualmente = 'true'
begin
INSERT INTO VF500 VALUES(
@CodProyecto,
@Documento,
0,
(@MontoDocumento) - (@MontoUtilizadoenProyectos),
@IncluidoManualmente)
SELECT @@IDENTITY AS 'Identity';
end
else
INSERT INTO VF500 VALUES(
@CodProyecto,
@Documento,
@MontoUtilizado,
0,
@IncluidoManualmente) 
SELECT @@IDENTITY AS 'Identity';
end
end


END
--IN ('000537FA00000001','000211FA00031216 ')


--select * 


--from siawin28..CC10 WHERE CC10.sNumero_Documento = '00031216  '


--INSERT INTO F500
--SELECT
--@CodProyecto,
--CASO1.LLAVE,
--CASO1.MONTO,
--CASO1.SALDO,
--'False'
-- FROM siawin28..CC10,siawin28..CC12
--INNER JOIN
--(
--SELECT CC10.sLlave LLAVE,CC10.sNumero_Documento DOC ,CC10.cMonto_Documento MONTO,
--CC10.cMonto_Pendiente SALDO FROM siawin28..CC10
--) CASO1
--ON CASO1.DOC =
--(Case 
--when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
--when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
--ELSE SUBSTRING(CC12.sRecibo,0,20) END)
--WHERE
--CC12.sFactura = CC10.sNumero_Documento AND CC12.sTipo_Documento = CC10.sTipo_Documento
--AND CC10.sLlave = @Documento



--select 
--(SELECT CC10.sLlave FROM siawin28..CC10 WHERE
--sNumero_Documento =
--(Case 
--when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
--when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
--ELSE SUBSTRING(CC12.sRecibo,0,20) END)),
--(Case 
--when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
--when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
--ELSE SUBSTRING(CC12.sRecibo,0,20) END),*
--from siawin28..CC12,siawin28..CC10 WHERE 
--CC12.sFactura = CC10.sNumero_Documento AND CC12.sTipo_Documento = CC10.sTipo_Documento 
--AND CC10.sLlave IN ('000537FA00000001','000211FA00031216 ')

--Insert INTO F500 
--select 
--(SELECT CC10.sLlave FROM siawin28..CC10 WHERE
--sNumero_Documento =
--(Case 
--when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
--when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
--ELSE SUBSTRING(CC12.sRecibo,0,20) END)),
--(Case 
--when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
--when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
--ELSE SUBSTRING(CC12.sRecibo,0,20) END),*
--from siawin28..CC12,siawin28..CC10 WHERE 
--CC12.sFactura = CC10.sNumero_Documento AND CC12.sTipo_Documento = CC10.sTipo_Documento 
--AND CC10.sLlave IN ('000537FA00000001','000211FA00031216 ')

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF500_EliminarDuplicados]
@Documento Varchar(30),
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;	
	
IF((SELECT COUNT(*) FROM VF500 WHERE Documento = @Documento AND CodProyecto = @CodProyecto AND IncluidoManualmente = 'true') >0)
BEGIN 
DELETE VF500 WHERE IDLinea in
(SELECT IDLinea FROM VF500 WHERE Documento = @Documento AND CodProyecto = @CodProyecto AND IncluidoManualmente = 'true')
SELECT 'Si' as resultado 
END
DELETE VF500 WHERE Documento in
(SELECT
case 
when SUBSTRING(CC12.sRecibo,1,1) = '+'
then  RTRIM(sCodigo)+'NC'+SUBSTRING(CC12.sRecibo,2,30)collate SQL_Latin1_General_CP1_CI_AS
when SUBSTRING(CC12.sRecibo,1,1) = '-'
then  RTRIM(sCodigo)+'NC'+SUBSTRING(CC12.sRecibo,2,30)collate SQL_Latin1_General_CP1_CI_AS
else
RTRIM(sCodigo)+'RE'+SUBSTRING(CC12.sRecibo,1,30)collate SQL_Latin1_General_CP1_CI_AS
end
sRecibo  
FROM siawin28..CC12,siawin28..CC10,VF500 
WHERE CC12.sTipo_Documento =CC10.sTipo_Documento  collate SQL_Latin1_General_CP1_CI_AS
AND CC12.sFactura = CC10.sNumero_Documento  collate SQL_Latin1_General_CP1_CI_AS
AND CC12.sCodigo = CC10.sCliente collate SQL_Latin1_General_CP1_CI_AS
and CC10.sLlave = VF500.Documento collate SQL_Latin1_General_CP1_CI_AS
and VF500.CodProyecto =''+ @CodProyecto+'' collate SQL_Latin1_General_CP1_CI_AS )
SELECT 'No' as resultado
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF500_delete]
@IDLinea	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

delete VF500
WHERE 
IDLinea=@IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF500_CargarDebitos]
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT 
VF500.IDLinea,
sTipo_Documento, 
sNumero_Documento,
--F500.Documento,
dFecha ,
cMonto_Documento,
bMoneda,
(case bmoneda when 0 then 'COL' ELSE 'DOL' END)AS MONEDA,
dFecha_Vencimiento,
--F500.CodProyecto,

VF500.MontoUtilizado,
cMonto_Pendiente --,
--F500.Saldo,
--F500.IncluidoManualmente ,
--(CASE F500.IncluidoManualmente WHEN 'True' then 'Si' else 'No' end)as MANUAL--,
--'SIAWIN1' AS BD
--, sLlave
 
--, sCliente 
,CC10.cTcDolar
FROM siawin28.dbo.CC10,VF500
WHERE CC10.sLlave = VF500.Documento collate Modern_Spanish_CI_AS AND
(sTipo_Documento ='ND' OR sTipo_Documento = 'FA')
 AND
VF500.CodProyecto = @CodProyecto



END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF500_CargarCredito]
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

SELECT 
docs.IDLinea,
docs.Documento ,
DOCUMENTOS.TipoRecibo sTipo_Documento,
DOCUMENTOS.DocumentoRecibo sNumero_Documento,
DOCUMENTOS.dfecha dFecha,CAST(
ISNULL(DOCUMENTOS.MONTO,0)AS DECIMAL(18,2)) cMonto_Documento,
documentos.monedas bMoneda,
CAST(
ISNULL(DOCUMENTOS.cMonto,0)AS DECIMAL(18,2)) MontoUtilizado,
CAST(
ISNULL(DOCUMENTOS.SALDO,0)AS DECIMAL(18,2)) cMonto_Pendiente,
docs.IncluidoManualmente,
case documentos.monedas when 0 then 'Colones' else 'Dolares' end MONEDA,
SUBSTRING (DOCUMENTOS.Obser,0,35)Referencia
FROM CEM28..VF500 DOCS
INNER JOIN
(SELECT
CASO1.SALDO,
CASO1.DocumentoRecibo,
CC12.cMonto,
ESTE.sLlave,
CASO1.TipoRecibo,
CASO1.dfecha ,
CASO1.Obser ,
CASO1.monedas,
CASO1.MONTO
 FROM siawin28..CC10 ESTE,siawin28..CC12
INNER JOIN
(
SELECT CC10.sLlave LLAVE,CC10.sNumero_Documento DocumentoRecibo ,CC10.cMonto_Documento MONTO,CC10.sTipo_Documento TipoRecibo,
CC10.cMonto_Pendiente SALDO,CC10.sRecibo Obser,CC10.dFecha dfecha,bMoneda monedas FROM siawin28..CC10 WHERE (sTipo_Documento = 'NC' OR sTipo_Documento = 'RE')
) CASO1
ON CASO1.DocumentoRecibo =
(Case 
when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
ELSE SUBSTRING(CC12.sRecibo,0,20) END)
WHERE
CC12.sFactura = ESTE.sNumero_Documento AND CC12.sTipo_Documento = ESTE.sTipo_Documento
)DOCUMENTOS
ON DOCUMENTOS.sLlave  = DOCS.Documento collate Modern_Spanish_CI_AS
And (DOCS.Documento like '%fa%' or DOCS.Documento like '%nd%')
AND DOCS.CodProyecto = @CodProyecto
union all
SELECT 
docs.IDLinea,
docs.Documento ,
DOCUMENTOS.TipoRecibo sTipo_Documento,
DOCUMENTOS.DocumentoRecibo sNumero_Documento,
DOCUMENTOS.dfecha dFecha,
DOCUMENTOS.cMonto cMonto_Documento,
documentos.monedas bMoneda,
isnull(DOCS.MontoUtilizado,0) MontoUtilizado,
CAST(
ISNULL(DOCS.SALDO,0)AS DECIMAL(18,2)) cMonto_Pendiente,
docs.IncluidoManualmente,
case documentos.monedas when 0 then 'Colones' else 'Dolares' end MONEDA,
SUBSTRING (DOCUMENTOS.Obser,0,35)Referencia
FROM CEM28..VF500 DOCS
INNER JOIN
(SELECT
CASO1.SALDO,
CASO1.DocumentoRecibo,
CC12.cMonto,
ESTE.sLlave,
CASO1.TipoRecibo,
CASO1.dfecha ,
CASO1.Obser ,
CASO1.monedas
 FROM siawin28..CC10 ESTE,siawin28..CC12
INNER JOIN
(
SELECT CC10.sLlave LLAVE,CC10.sNumero_Documento DocumentoRecibo ,CC10.cMonto_Documento MONTO,CC10.sTipo_Documento TipoRecibo,
CC10.cMonto_Pendiente SALDO,CC10.sRecibo  Obser,CC10.dFecha dfecha,bMoneda monedas FROM siawin28..CC10
) CASO1
ON CASO1.DocumentoRecibo =
(Case 
when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
ELSE SUBSTRING(CC12.sRecibo,0,20) END)
WHERE
CC12.sFactura = ESTE.sNumero_Documento AND CC12.sTipo_Documento = ESTE.sTipo_Documento
)DOCUMENTOS
ON DOCUMENTOS.sLlave  = DOCS.Documento collate Modern_Spanish_CI_AS
And (DOCS.Documento like '%nc%' and DOCS.IncluidoManualmente = 'false')
AND DOCS.CodProyecto = @CodProyecto
union all

select IDLinea,
Documento ,
sTipo_Documento,
sNumero_Documento,
dFecha,
cMonto_Documento,
bMoneda,
isnull(MontoUtilizado,0)MontoUtilizado,
Saldo cMonto_Pendiente,
IncluidoManualmente,
case bMoneda when 0 then 'Colones' else 'Dolares' end MONEDA,
SUBSTRING(sObservaciones,20,35)Referencia
from VF500,siawin28..CC10 where CodProyecto = @CodProyecto and IncluidoManualmente = 'True'
and Documento = sLlave collate Modern_Spanish_CI_AS


--SELECT 
--F500.IDLinea ,
--CC10.sTipo_Documento,
--CC10.sNumero_Documento,
--CC10.dFecha,
--CC10.cMonto_Documento,
--CC10.bMoneda,
--F500.MontoUtilizado,
--CC10.cMonto_Pendiente,
--F500.IncluidoManualmente,
--CASE CC10.bMoneda when 0 then 'Colones' else 'Dolares' end as MONEDA,
--CC10.cTcDolar
-- FROM siawin28..CC10,F500 WHERE
--CC10.sLlave = F500.Documento AND
--CC10.sTipo_Documento IN ('NC','RE')
--AND F500.CodProyecto = @CodProyecto 


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF500_Busquedaporproyecto]
@Contrato varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


    -- Insert statements for procedure here
 SELECT CodProyecto,Codigo,Contrato,Proyecto FROM VF300,VF100 
 WHERE VF100.Consecutivo = VF300.CodProyecto AND Contrato LIKE '%'+@Contrato+'%'


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF400_update]
@IDLinea	int	,
@CodProyecto	int	,
@Documento	varchar(50),	
@Fecha	datetime	,
@Monto	numeric(18, 2),	
@Saldo	numeric(18, 2),	
@FechaVencimiento	datetime,	
@Tipo	int	,
@Moneda	int	,
@Detalle	varchar(200),	
@Recibos	varchar(500),	
@QuienModifico	varchar(30),	
@QuienIngreso	varchar(30)	,
@dFechaIngreso	datetime	,
@dFechaModifico	datetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

update VF400 SET 
CodProyecto=@CodProyecto,	
--Documento=@Documento	,	
Fecha=@Fecha,
Monto=@Monto,	
--Saldo=@Saldo,	
FechaVencimiento=@FechaVencimiento	,
Tipo=@Tipo		,
Moneda=@Moneda	,
Detalle=@Detalle,		
--Recibos=@Recibos,		
QuienModifico=@QuienModifico	,
--QuienIngreso=@QuienIngreso	,	
--dFechaIngreso=@dFechaIngreso	,	
dFechaModifico=@dFechaModifico	
WHERE 
IDLinea = @IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF400_insert]
@IDLinea	int	,
@CodProyecto	int	,
@Documento	varchar(50),	
@Fecha	datetime	,
@Monto	numeric(18, 2),	
@Saldo	numeric(18, 2),	
@FechaVencimiento	datetime,	
@Tipo	int	,
@Moneda	int	,
@Detalle	varchar(200),	
@Recibos	varchar(500),	
@QuienModifico	varchar(30),	
@QuienIngreso	varchar(30)	,
@dFechaIngreso	datetime	,
@dFechaModifico	datetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

insert into VF400 VALUES(
@CodProyecto,	
@Documento	,	
@Fecha,
@Monto,	
@Saldo,	
@FechaVencimiento	,
@Tipo		,
@Moneda	,
@Detalle,		
@Recibos,		
@QuienModifico	,
@QuienIngreso	,	
@dFechaIngreso	,	
@dFechaModifico	)
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF400_delete]
@IDLinea int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DELETE VF400
where
IDLinea=@IDLinea
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF400_CargarDatos]
@Proyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 select
  IDLinea,
 VF400.CodProyecto,
 Documento,
 Fecha,
  VF400.Monto,
 case 
 when
      ((select isnull(SUM(Monto),0) from VF400 total where total.CodProyecto = VF400.CodProyecto
 and total.FechaVencimiento <= VF400.FechaVencimiento 
 )-isnull(abonos.monto,0)-isnull(manuales.monto,0) ) < VF400.Monto
 then
 0
  when
      ((select isnull(SUM(Monto),0) from VF400 total where total.CodProyecto = VF400.CodProyecto
 and total.FechaVencimiento <= VF400.FechaVencimiento 
 )-isnull(abonos.monto,0)-isnull(manuales.monto,0) ) > VF400.Monto
 then
 VF400.Monto 
 else
VF400.Monto 
 end Saldo,
 FechaVencimiento,
 VF400.Tipo, 
 VF400.Moneda,
 VF400.Detalle,
 VF400.Recibos,
 VF400.QuienIngreso,
 VF400.QuienModifico,
 VF400.dFechaIngreso,
 VF400.dFechaModifico,
 (CASE Moneda when 0 then 'Colones' else 'Dolares' end) as TipoMoneda,
CASE VF400.Tipo WHEn 0 THEN 'Efectivo' else 'Canje' end as TipoPago
  from VF400 
  left join
  (
   select isnull(sum(CC12.cMonto),0) monto,VF500.CodProyecto from VF500,siawin28..CC10,siawin28..CC12 
   where VF500.Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS
 AND CC10.sTipo_Documento = CC12.sTipo_Documento AND CC10.sNumero_Documento = CC12.sFactura 
 AND CC10.sCliente = CC12.sCodigo AND VF500.CodProyecto = @Proyecto 
 GROUP BY VF500.CodProyecto 
  ) abonos
  on abonos.CodProyecto = VF400.CodProyecto 
  left join
  (
    select isnull(SUM(CC10.cMonto_Documento),0)monto,VF500.CodProyecto  from VF500,siawin28..CC10 where 
  VF500.Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and 
  IncluidoManualmente = 'true'
  GROUP BY VF500.CodProyecto
  )manuales
  on manuales.CodProyecto = VF400.CodProyecto 
 where Vf400.CodProyecto = @Proyecto
 order by VF400.FechaVencimiento asc
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED03_UPDATE_UBICACIONMOV]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@IDProducto nvarchar(50),
@Cantidad nvarchar(25),
@CantidadInv nvarchar(25),
@Usuario varchar(50),
@Movimiento  nvarchar(50)

AS
  
DECLARE @siawin NCHAR(18);
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi);

declare  @Sql    AS VARCHAR(MAX)
declare  @Sql2    AS VARCHAR(MAX)
	
SET @Sql = 
'


DECLARE @CANTERIOR DECIMAL(18,2) = (SELECT Cantidad FROM CED03 WHERE IDProducto = '+@IDProducto + ')


UPDATE CED03 SET Cantidad='+RTRIM(@Cantidad) +' WHERE CED03.IDProducto='''+RTRIM(@IDProducto)+'''

INSERT INTO CED03H 
SELECT GETDATE(), '''+ @Usuario+''','''+@Movimiento+ '''   , @CANTERIOR, ''Resta'', * FROM CED03 WHERE CED03.IDProducto='''+RTRIM(@IDProducto)+'''

'


SET @Sql2 ='SELECT CED00.NombreCedi,CED01.NombreEmpresa,'+RTRIM(@CantidadInv)+' Cantidad,CED03.NBodega,
CED03.CodigoProducto,IN04.sDescripcion_inventario,CED03.Seccion,CED03.IDProducto 
FROM CED03,CED00,CED01,'+RTRIM(@siawin)+'.IN04
WHERE CED03.IDCedi=CED00.IDCedi
AND CED03.IDEmpresa = CED01.IDEmpresa
AND CED03.CodigoProducto COLLATE Modern_Spanish_CI_AS = IN04.sCodigo_Producto
AND CED03.IDProducto = '''+RTRIM(@IDProducto)+''''	
BEGIN TRANSACTION 
BEGIN TRY
EXECUTE(@Sql) 
commit
INSERT INTO Bitacora VALUES( GETDATE(),'ProcesoAutomatico' ,'CED03_UPDATE_UBICACIONMOV','IDCedi='+ RTRIM(@IDCedi) +',IDEmpresa=' + RTRIM(@IDEmpresa) +',IDProducto='+ RTRIM(@IDProducto) +',Cantidad='+RTRIM(@Cantidad)+',CantidadInv='+RTRIM(@CantidadInv))
EXECUTE(@Sql2) 
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CED03_Traslados] 
@CodigoProducto varchar(30),
@IDCedi int,
@IDEmpresa int,
@NBodega varchar(30),
@Cantidad decimal(18,2),
@Seccion varchar(30),
@IDProducto int,
@QuienModifico varchar(30),
@CantidadActual decimal(18,2),
@SeccionActual varchar(30),
@Estado int ,
@Detalle varchar(50)

AS
BEGIN TRANSACTION
BEGIN TRY

DECLARE @CANTERIOR DECIMAL(18,2) = (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto)
DECLARE @ESTANTEID INT =(
SELECT IDProducto FROM CED03 WHERE
CED03.CodigoProducto IN (
SELECT CED03.CodigoProducto FROM CED03 WHERE
CED03.IDProducto  = @IDProducto
) AND CED03.Seccion = @SeccionActual AND NBodega = @NBodega
)


IF @CantidadActual <= @CANTERIOR
BEGIN  --Verifica que no supere el maximo a trasladar
IF @CantidadActual = @CANTERIOR 
BEGIN 
--Si la cantidad es igual inserteme nueva ubicacion y elimine estante y genere bitacora. @IDProducto @SeccionActual

IF ISNULL((
SELECT COUNT(*) FROM CED03 WHERE
CED03.CodigoProducto IN (
SELECT CED03.CodigoProducto FROM CED03 WHERE
CED03.IDProducto  = @IDProducto
) AND CED03.Seccion = @SeccionActual AND NBodega = @NBodega

),0) = 0

BEGIN  --Inserta el registro sino existe en el estante

INSERT INTO CED03
SELECT CodigoProducto, IDCedi, IDEmpresa, NBodega, Cantidad, @SeccionActual ,
@QuienModifico , '', GETDATE(), '1900-01-01',0,@Estado, @Detalle FROM CED03 
WHERE
CED03.IDProducto = @IDProducto

DECLARE @IDSCOPE INT = (SELECT SCOPE_IDENTITY())

INSERT INTO CED03H
SELECT 
GETDATE(),
@QuienModifico,
'PC-Ingreso',
0,
'Suma',
*
FROM CED03 WHERE IDProducto = @IDSCOPE

END   --Inserta el registro sino existe en el estante

ELSE

BEGIN  --Actualiza el registro sino existe en el estante

INSERT INTO CED03H
SELECT 
GETDATE(),
@QuienModifico,
'PC-Ingreso',
Cantidad,
'Suma',
IDProducto , CodigoProducto , IDCedi, IDEmpresa, NBodega, @CantidadActual, Seccion , QuienIngreso,QuienModifico, FechaIngreso,
 FechaModifico, Prioridad , Estado , Detalle
FROM CED03 WHERE IDProducto = @ESTANTEID



UPDATE CED03 SET
CED03.Cantidad = CED03.Cantidad + @CantidadActual,
QuienModifico = @QuienModifico,
FechaModifico = getdate()
WHERE
CED03.IDProducto = @ESTANTEID



END --Actualiza el registro sino existe en el estante

--Bitacora de resta estante anterior y delete del mismo 
INSERT INTO CED03H
SELECT 
GETDATE(),
@QuienModifico,
'PC-Rebajo',
@CANTERIOR,
'Resta',*
 FROM CED03 
WHERE
CED03.IDProducto = @IDProducto
DELETE CED03 WHERE CED03.IDProducto = @IDProducto
--Bitacora de resta estante anterior y delete del mismo 

END
ELSE IF @CantidadActual < @CANTERIOR	

BEGIN 
--Si la cantidad es MENOR inserteme nueva ubicacion y ACTUALICE EL estante y genere bitacora.


IF ISNULL((
SELECT COUNT(*) FROM CED03 WHERE
CED03.CodigoProducto IN (
SELECT CED03.CodigoProducto FROM CED03 WHERE
CED03.IDProducto  = @IDProducto
) AND CED03.Seccion = @SeccionActual AND NBodega = @NBodega

),0) = 0

BEGIN -- Inserta el nuevo estante sino existe en la base de datos

INSERT INTO CED03
SELECT CodigoProducto, IDCedi, IDEmpresa, NBodega, @CantidadActual , @SeccionActual ,
@QuienModifico , '', GETDATE(), '1900-01-01',0,@Estado, @Detalle FROM CED03 
WHERE
CED03.IDProducto = @IDProducto

SET @IDSCOPE = (SELECT SCOPE_IDENTITY())

INSERT INTO CED03H
SELECT 
GETDATE(),
@QuienModifico,
'PC-Ingreso',
0,
'Suma',
*
FROM CED03 WHERE IDProducto = @IDSCOPE

END -- Inserta el nuevo estante sino existe en la base de datos
ELSE
BEGIN  --Actualice la cantidad del estante si existe


INSERT INTO CED03H
SELECT 
GETDATE(),
@QuienModifico,
'PC-Ingreso',
Cantidad  ,
'Suma', IDProducto , CodigoProducto , IDCedi, IDEmpresa, NBodega, @CantidadActual, Seccion , QuienIngreso,QuienModifico, FechaIngreso,
 FechaModifico, Prioridad , Estado , Detalle
 FROM CED03 
WHERE
CED03.IDProducto = @ESTANTEID

--SELECT TOP 2 * FROM CED03H 


UPDATE CED03 SET
CED03.Cantidad = Cantidad + @CantidadActual,
ced03.QuienModifico = @QuienModifico,
ced03.FechaModifico = GETDATE()
WHERE CED03.IDProducto = @ESTANTEID 


END --Actualice la cantidad del estante si existe

--Bitacora de resta estante anterior y delete del mismo 
INSERT INTO CED03H
SELECT 
GETDATE(),
@QuienModifico,
'PC-Rebajo',
Cantidad,
'Resta',
IDProducto , CodigoProducto , IDCedi, IDEmpresa, NBodega, @CantidadActual, Seccion , QuienIngreso,QuienModifico, FechaIngreso,
 FechaModifico, Prioridad , Estado , Detalle
 FROM CED03 
WHERE
CED03.IDProducto = @IDProducto

UPDATE CED03 SET
CED03.Cantidad = Cantidad - @CantidadActual,
ced03.QuienModifico = @QuienModifico,
ced03.FechaModifico = GETDATE()
WHERE CED03.IDProducto = @IDProducto

END

select 1

END --Verifica que no supere el maximo a trasladar

COMMIT
END TRY
BEGIN CATCH
select 0
ROLLBACK
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED01_SELECTVALIDAMOVIMIENTO]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@CodigoProducto nchar(50)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
	
SET @Sql =   
'SELECT CED00.NombreCedi,CED01.NombreEmpresa,SUM(CED03.Cantidad) Cantidad,CED03.CodigoProducto,IN04.sDescripcion_inventario
 FROM ((CED03 INNER JOIN CED00 ON CED03.IDCedi=CED00.IDCedi)
 INNER JOIN CED01 ON CED03.IDEmpresa=CED01.IDEmpresa),'+RTRIM(@siawin)+'.IN04 WHERE CED03.CodigoProducto COLLATE Modern_Spanish_CI_AS = IN04.sCodigo_Producto
 AND CED03.CodigoProducto='''+RTRIM(@CodigoProducto)+'''
 GROUP BY CED00.NombreCedi,CED01.NombreEmpresa,CED03.CodigoProducto,IN04.sDescripcion_inventario
 ORDER BY CED03.CodigoProducto ASC'
	
BEGIN TRANSACTION 
BEGIN TRY
EXECUTE (@Sql) 
--SELECT @Sql 
commit
INSERT INTO Bitacora VALUES( GETDATE(),'ProcesoAutomatico' ,'CED01_SELECTVALIDAMOVIMIENTO','IDCedi='+ RTRIM(@IDCedi) +',IDEmpresa=' + RTRIM(@IDEmpresa) +',CodigoProducto='+ RTRIM(@CodigoProducto))
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED01_SELECTVALIDACANT_MOV]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@CodigoProducto nvarchar(50),
@movimiento nchar(50)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
	
SET @Sql =   
'SELECT IN14.sCodigo_Producto,IN04.sDescripcion_Inventario,SUM(IN14.iCantidad) Cantidad
FROM '+RTRIM(@siawin)+'.IN14,'+RTRIM(@siawin)+'.IN13,'+RTRIM(@siawin)+'.IN04
WHERE IN14.sNumero_Movimiento =  '''+RTRIM(@movimiento)+''' AND IN14.sLlave = IN13.sLlave 
AND IN14.sCodigo_Producto = '''+RTRIM(@CodigoProducto)+'''
AND IN14.sCodigo_Producto = IN04.sCodigo_Producto AND IN14.sProductoCombo = CAST('''' AS VARCHAR(2)) 
GROUP BY IN14.sCodigo_Producto,IN04.sDescripcion_Inventario
ORDER BY IN14.sCodigo_Producto ASC'
	

EXECUTE (@Sql) 



--SELECT COUNT(*)--  IN14.sCodigo_Producto,IN04.sDescripcion_Inventario,SUM(IN14.iCantidad) Cantidades,ESTANTES.CantidadE
--FROM ALTEA.siawin0.dbo.IN14, ALTEA.siawin0.dbo.IN13 , ALTEA.siawin0.dbo.IN04 
--LEFT JOIN
--(
--SELECT --CED00.NombreCedi,CED01.NombreEmpresa,
--CASE WHEN CED03.CodigoProducto = 'K74894' THEN 0 ELSE   SUM(CED03.Cantidad)  END CantidadE,CED03.CodigoProducto,IN04.sDescripcion_inventario
-- FROM ((CED03 INNER JOIN CED00 ON CED03.IDCedi=CED00.IDCedi)
-- INNER JOIN CED01 ON CED03.IDEmpresa=CED01.IDEmpresa),ALTEA.siawin0.dbo.IN04 WHERE CED03.CodigoProducto COLLATE SQL_Latin1_General_CP1_CI_AS = IN04.sCodigo_Producto
-- --AND CED03.CodigoProducto='''+RTRIM(@CodigoProducto)+'''
-- GROUP BY --CED00.NombreCedi,CED01.NombreEmpresa,
-- CED03.CodigoProducto,IN04.sDescripcion_inventario
-- --ORDER BY CED03.CodigoProducto ASC
--)ESTANTES ON ESTANTES.CodigoProducto = IN04.sCodigo_Producto COLLATE SQL_Latin1_General_CP1_CI_AS
--WHERE IN14.sNumero_Movimiento =  '03017200003450' AND 
--IN14.sLlave = IN13.sLlave 
----AND IN14.sCodigo_Producto = '03017200003450'
--AND IN14.sCodigo_Producto = IN04.sCodigo_Producto AND IN14.sProductoCombo = ''
--GROUP BY IN14.sCodigo_Producto,IN04.sDescripcion_Inventario, ESTANTES.CantidadE
--HAVING SUM(IN14.iCantidad) > CantidadE
--ORDER BY IN14.sCodigo_Producto ASC

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED01_SELECTVALIDACANT_FACT]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@CodigoProducto nvarchar(50),
@factura nchar(50)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
	
SET @Sql =   
'
SELECT FA01.sCodigo_Producto,IN04.sDescripcion_Inventario,SUM(FA01.cCantidad) Cantidad
FROM '+RTRIM(@siawin)+'.FA01 INNER JOIN '+RTRIM(@siawin)+'.FA00 ON FA01.sPedido = FA00.sPedido,'+RTRIM(@siawin)+'.IN04
WHERE sFactura = '''+RTRIM(@factura)+''' 
AND FA01.sCodigo_Producto = '''+RTRIM(@CodigoProducto)+'''
AND FA01.sCodigo_Producto = IN04.sCodigo_Producto AND FA01.sProductoCombo = CAST('''' AS VARCHAR(2)) 
GROUP BY FA01.sCodigo_Producto,IN04.sDescripcion_Inventario
ORDER BY FA01.sCodigo_Producto ASC
'
	
BEGIN TRANSACTION 
BEGIN TRY
EXECUTE (@Sql) 
commit
INSERT INTO Bitacora VALUES( GETDATE(),'ProcesoAutomatico' ,'CED01_SELECTVALIDACANT_FACT','IDCedi='+ RTRIM(@IDCedi) +',IDEmpresa=' + RTRIM(@IDEmpresa) +',CodigoProducto='+ RTRIM(@CodigoProducto) +',factura='+RTRIM(@factura))
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED01_SELECTMOVIMIENTOS]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@movimiento nchar(50)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
	
SET @Sql =   
'SELECT TOP 1 IN13.sNumero_Movimiento,IN13.dFecha_Movimiento,IN13.sNumero_Documento,
IN13.sBodega_Entra,IN13.sCodigo_Proveedor,CP01.sNombre,IN13.sDetalle, IN13.sLlave FROM '+RTRIM(@siawin)+'.IN13 LEFT JOIN '+RTRIM(@siawin)+'.CP01
ON IN13.sCodigo_Proveedor = CP01.sCodigo_Proveedor WHERE sLlave = ''' + RTRIM(@movimiento) + '''
--AND bconfirmado=1  
'
	
BEGIN TRANSACTION 
BEGIN TRY
EXECUTE (@Sql) 
commit
--INSERT INTO Bitacora VALUES( GETDATE(),'ProcesoAutomatico' ,'CED01_SELECTMOVIMIENTOS','IDCedi='+ RTRIM(@IDCedi) +',IDEmpresa=' + RTRIM(@IDEmpresa) +',movimiento='+ RTRIM(@movimiento))
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED01_SELECTFACTURAS]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@Factura nchar(50)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
	
SET @Sql =   
'SELECT TOP 1 FA00.sFactura,FA00.dFecha,FA00.sNombre_Cliente,FA00.spedido,FA00.sDireccion_1,FA00.sBodega, CC20.sDescripcion Vendedor FROM '+RTRIM(@siawin)+'.FA00,
'+RTRIM(@siawin)+'.CC20 
WHERE 
CC20.sCodigo = sVendedor AND
FA00.sPedido = ''' + RTRIM(@Factura) + ''''


	
BEGIN TRANSACTION 
BEGIN TRY
EXECUTE (@Sql) 
commit
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED01_SELECTDETALLEMOVIMIENTOS]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@movimiento nchar(50)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
	
SET @Sql =   
'SELECT  TOP 100 IN14.sCodigo_Producto,IN04.sDescripcion_Inventario,IN14.iCantidad,IN13.sBodega_Entra,CP01.sNombre sProveedor,
CAST(''UNIDADES'' AS VARCHAR(11)) tipo, 1 CantImprimir
FROM '+RTRIM(@siawin)+'.IN14,'+RTRIM(@siawin)+'.IN13,('+RTRIM(@siawin)+'.IN04 LEFT JOIN '+RTRIM(@siawin)+'.CP01 ON IN04.sProveedor= CP01.sCodigo_Proveedor)
WHERE IN14.sLlave = ''' + RTRIM(@movimiento) + ''' AND IN14.sLlave = IN13.sLlave 
AND IN14.sCodigo_Producto = IN04.sCodigo_Producto AND IN14.sProductoCombo = CAST('''' AS VARCHAR(2)) ORDER BY IN14.iLinea'
	
BEGIN TRANSACTION 
BEGIN TRY
EXECUTE(@Sql) 
commit
INSERT INTO Bitacora VALUES( GETDATE(),'ProcesoAutomatico' ,'CED01_SELECTDETALLEMOVIMIENTOS','IDCedi='+ RTRIM(@IDCedi) +',IDEmpresa=' + RTRIM(@IDEmpresa) +',movimiento='+ RTRIM(@movimiento))
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED01_SELECTDETALLEFACTURAS]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@Pedido nchar(50)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
	
SET @Sql =   
'SELECT TOP 100 FA01.sCodigo_Producto,FA01.sDescripcion,FA01.cCantidad,FA01.sBodega,CP01.sNombre sProveedor,
CAST('''' AS VARCHAR(11)) tipo, 1 CantImprimir1
FROM ('+RTRIM(@siawin)+'.FA01 INNER JOIN '+RTRIM(@siawin)+'.IN04 ON FA01.sCodigo_Producto=IN04.sCodigo_Producto)  
LEFT JOIN '+RTRIM(@siawin)+'.CP01 ON IN04.sProveedor= CP01.sCodigo_Proveedor
WHERE sPedido = ''' + RTRIM(@Pedido) + ''''
	
BEGIN TRANSACTION 
BEGIN TRY
EXECUTE (@Sql) 
commit
INSERT INTO Bitacora VALUES( GETDATE(),'ProcesoAutomatico' ,'CED01_SELECTDETALLEFACTURAS','IDCedi='+ RTRIM(@IDCedi) +',IDEmpresa=' + RTRIM(@IDEmpresa) +',Pedido='+ RTRIM(@Pedido))
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED01_SELECT]
@tt int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
	BEGIN TRANSACTION 
BEGIN TRY
	
SELECT IDEmpresa,NombreEmpresa FROM CED01 where IDCedi = @tt  
commit
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED03_SELECTPRODUCTOSXESTANTE]

@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@Estante nchar(30)

AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     

declare  @Sql    AS VARCHAR(MAX)
SET @Sql =   '
SELECT IN04.[sCodigo_Producto],IN04.[sDescripcion_Inventario],(CONVERT(varchar(10), CED03.Cantidad) + CAST('' UNIDADES'' as varchar(10))) Cantidad,
CP01.sNombre, IN04.sCodigo_Barras
FROM '+RTRIM(@siawin)+'.in04,CED03,'+RTRIM(@siawin)+'.CP01 WHERE 
CP01.sCodigo_Proveedor =  in04.sProveedor 
AND IN04.sCodigo_Producto=CED03.CodigoProducto COLLATE SQL_Latin1_General_CP1_CI_AS
AND CED03.Seccion ='''+RTRIM(@Estante)+''''


BEGIN TRANSACTION
BEGIN TRY
EXECUTE (@Sql) 

COMMIT
END TRY
BEGIN CATCH
ROLLBACK
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED03_SELECTPRODUCTOSXCODIGO]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@sCodigo_Producto nchar(30)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
	
SET @Sql =   
'select top 1 sCodigo_Producto, sDescripcion_Inventario,IN04.sCodigo_Barras, 
  sProveedor , CP01.sNombre
 from '+@siawin+'.IN04,'+@siawin+'.CP01 WHERE CP01.sCodigo_Proveedor =  in04.sProveedor  
 AND sCodigo_Producto  = '''+@sCodigo_Producto+''' or IN04.sCodigo_Barras = '''+RTRIM(@sCodigo_Producto) +''''

	
BEGIN TRANSACTION 
BEGIN TRY
EXECUTE (@Sql) 
commit
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED03_SELECTPRODUCTO]

@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@sCodigo_Producto nchar(30)

AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     

declare  @Sql    AS VARCHAR(MAX)
SET @Sql =   '
SELECT IN04.[sCodigo_Producto]
      ,IN04.[sDescripcion_Inventario]
FROM '+RTRIM(@siawin)+'.in04 WHERE IN04.sCodigo_Producto ='''+RTRIM(@sCodigo_Producto)+''' ' --or IN04.sCodigo_Barras = '''+RTRIM(@sCodigo_Producto) +'''

--Se quita la busqueda de codigo de barras por error cruzado de los mismos con 2 productos diferentes.



BEGIN TRANSACTION
BEGIN TRY
EXECUTE (@Sql) 

COMMIT
END TRY

BEGIN CATCH
SELECT 'ERROR'ERROR, ERROR_LINE(),ERROR_MESSAGE() 
ROLLBACK
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED03_SELECTOPERACION]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@movimiento nchar(50),
@Usuario varchar(50)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
	
--Verifica si el movimiento es funcional para movimiento que descuentan en la bodegas asignadas 
--De momento el sistema carga disponibilidad esten o no aplicados los movimientos.

SET @Sql =   
'SELECT 
COUNT(*)
--MOVIMIENTOS.sCodigo_Movimiento,IN13.sNumero_Movimiento,
--IN13.dFecha_Movimiento,IN13.sNumero_Documento,
--IN13.sBodega_Entra,IN13.sBodega_Sale,IN13.sDetalle 
FROM '+RTRIM(@siawin)+'.IN13,
(SELECT sCodigo_Movimiento,sDescripcion FROM '+RTRIM(@siawin)+'.IN12
WHERE bOperacion = 1 OR bOperacion = 2) AS MOVIMIENTOS
WHERE MOVIMIENTOS.sCodigo_Movimiento = IN13.sCodigo_Movimiento
AND IN13.sLlave = ''' + RTRIM(@movimiento) + '''-- AND IN13.bConfirmado=1
AND IN13.sBodega_Sale 
COLLATE Modern_Spanish_CI_AS in(SELECT NBodega FROM CED03 WHERE IDCedi=RTRIM('+@IDCedi+') and IDEmpresa=RTRIM('+@IDEmpresa+') GROUP BY NBodega)'
	

EXECUTE (@Sql)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED03_SELECTMOVIMIENTOS_SALEN]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@movimiento nchar(50)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
	
SET @Sql =   
'SELECT MOVIMIENTOS.sCodigo_Movimiento,IN13.sNumero_Movimiento,
IN13.dFecha_Movimiento,IN13.sNumero_Documento,
IN13.sBodega_Entra,IN13.sBodega_Sale,IN13.sCodigo_Proveedor,
CP01.sNombre,IN13.sDetalle FROM '+RTRIM(@siawin)+'.IN13,
(SELECT sCodigo_Movimiento,sDescripcion FROM '+RTRIM(@siawin)+'.IN12
WHERE bOperacion = 1 OR bOperacion = 2) AS MOVIMIENTOS,'+RTRIM(@siawin)+'.CP01
WHERE MOVIMIENTOS.sCodigo_Movimiento = IN13.sCodigo_Movimiento
AND IN13.sNumero_Movimiento = ''' + RTRIM(@movimiento) + '''
AND IN13.sCodigo_Proveedor = CP01.sCodigo_Proveedor AND IN13.bConfirmado=1
AND IN13.sBodega_Sale 
COLLATE Modern_Spanish_CI_AS in(SELECT NBodega FROM CED03 WHERE IDCedi=RTRIM(@IDCedi) and IDEmpresa=RTRIM(@IDEmpresa) GROUP BY NBodega)'
	
BEGIN TRANSACTION 
BEGIN TRY
EXECUTE (@Sql) 
commit
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED03_SELECTMOVIMIENTOS_ENTRAN]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@movimiento nchar(50)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
	
SET @Sql =   
'SELECT MOVIMIENTOS.sCodigo_Movimiento,IN13.sNumero_Movimiento,
IN13.dFecha_Movimiento,IN13.sNumero_Documento,
IN13.sBodega_Entra,IN13.sBodega_Sale,IN13.sCodigo_Proveedor,
CP01.sNombre,IN13.sDetalle FROM '+RTRIM(@siawin)+'.IN13,
(SELECT sCodigo_Movimiento,sDescripcion FROM '+RTRIM(@siawin)+'.IN12
WHERE bOperacion = 0 OR bOperacion = 2) AS MOVIMIENTOS,'+RTRIM(@siawin)+'.CP01
WHERE MOVIMIENTOS.sCodigo_Movimiento = IN13.sCodigo_Movimiento
AND IN13.sNumero_Movimiento = ''' + RTRIM(@movimiento) + '''
AND IN13.sCodigo_Proveedor = CP01.sCodigo_Proveedor 
AND IN13.bConfirmado=1
AND IN13.sBodega_Entra COLLATE Modern_Spanish_CI_AS in(SELECT NBodega FROM CED03 WHERE IDCedi=RTRIM(@IDCedi) and IDEmpresa=RTRIM(@IDEmpresa) GROUP BY NBodega)'
	
BEGIN TRANSACTION 
BEGIN TRY
EXECUTE (@Sql) 
commit
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED03_SELECTMOV_UBICACION]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@CodigoProducto nvarchar(50)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
	
SET @Sql =   
'SELECT  TOP 500 CED00.NombreCedi,CED01.NombreEmpresa,CED03.Cantidad,CED03.NBodega,CED03.CodigoProducto,IN04.sDescripcion_inventario,CED03.Seccion,CED03.IDProducto
 FROM ((CED03 INNER JOIN CED00 ON CED03.IDCedi=CED00.IDCedi)
 INNER JOIN CED01 ON CED03.IDEmpresa=CED01.IDEmpresa),'+RTRIM(@siawin)+'.IN04 WHERE CED03.CodigoProducto COLLATE Modern_Spanish_CI_AS = IN04.sCodigo_Producto
 AND CED03.CodigoProducto='''+RTRIM(@CodigoProducto)+'''
 ORDER BY  CED03.Cantidad ASC'
 
 -- CED03.Prioridad 
	

EXECUTE (@Sql)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED03_SELECT]
@IDCedi nvarchar(50),
@IDEmpresa nvarchar(50),
@sCodigo_Producto nchar(30)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
	
SET @Sql =   
'SELECT CED03.NBodega,CED03.Seccion,CED03.Cantidad,CED01.NombreEmpresa,
CED03.CodigoProducto, IN04.sDescripcion_Inventario DescripcionInventario,
ced03.IDProducto ,RTRIM(ced03.NBodega)+ cast(''-'' as char(3))+ IN00.sDescripcion collate SQL_Latin1_General_CP1_CI_AS NombreBodega,
Estado, Detalle
FROM CED01,CED03,'+@siawin+'.in04, '+@siawin+'.IN00
WHERE CED01.IDEmpresa = CED03.IDEmpresa  
and CED03.CodigoProducto = in04.sCodigo_Producto collate SQL_Latin1_General_CP1_CI_AS
and ced03.NBodega = in00.sCodigo collate SQL_Latin1_General_CP1_CI_AS
and CED03.IDCedi ='+@IDCedi+' AND ced01.IDEmpresa = '+@IDEmpresa+' and CED03.CodigoProducto = '''+@sCodigo_Producto+''''
	
BEGIN TRANSACTION 
BEGIN TRY
EXECUTE (@Sql) 
commit
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CED03_SeleccionarProducto] 

 @IDCedi nvarchar(50),
 @IDEmpresa nvarchar(50),
 @CodigoProducto NCHAR(30)
as
    
DECLARE @siawin NCHAR(10)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)

--SET @Sql =   
--'SELECT CED03.[IDProducto] as IDProducto2
--      ,IN04.[sCodigo_Producto]
--      ,IN04.[sDescripcion_Inventario]
--      ,[NBodega]
--      ,[Cantidad]
--      ,[Seccion]
--      ,[QuienIngreso]
--      ,[QuienModifico]
--      ,[FechaIngreso]
--      ,[FechaModifico]
--FROM '+@siawin+'..in04 LEFT JOIN CED03 ON IN04.sCodigo_Producto = CED03.CodigoProducto collate Modern_Spanish_CI_AS 
--WHERE CED03.IDCedi ='+@IDCedi+' AND CED03.IDEmpresa='+@IDEmpresa+' AND IN04.sCodigo_Producto = '''+@CodigoProducto+''''

SET @Sql =   
'SELECT CED03.[IDProducto] as IDProducto2
      ,IN04.[sCodigo_Producto]
      ,IN04.[sDescripcion_Inventario]
      ,[NBodega]
      ,[Cantidad]
      ,[Seccion]
      ,[QuienIngreso]
      ,[QuienModifico]
      ,[FechaIngreso]
      ,[FechaModifico]
FROM '+@siawin+'..in04 LEFT JOIN CED03 ON IN04.sCodigo_Producto = CED03.CodigoProducto collate Modern_Spanish_CI_AS 
WHERE CED03.IDCedi ='+@IDCedi+' AND CED03.IDEmpresa='+@IDEmpresa+' AND IN04.sCodigo_Producto = '''+@CodigoProducto+''' or IN04.sCodigo_Barras = '''+@CodigoProducto + ''' )'



BEGIN TRANSACTION
BEGIN TRY
EXECUTE (@Sql) 
COMMIT
END TRY
BEGIN CATCH
ROLLBACK
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--use CEM4 

CREATE PROCEDURE [dbo].[CED03_RPT0003]
@IDCedi int,
@IDEmpresa int


AS
SELECT IN04.sCodigo_Producto, sDescripcion_Inventario,
ISNULL(WMS.SaldoEstantes,0)SaldoEstantes, ISNULL(PCGRAF.SaldoInventario ,0)SaldoInventario,
ISNULL(WMS.SaldoEstantes,0) - ISNULL(PCGRAF.SaldoInventario ,0) Diferencia
FROM siawin0..IN04 
LEFT JOIN
(
SELECT sCodigo_Producto, SUM(IN11.iSaldo_Mes+ IN11.iSaldo_Mes_Anterior)SaldoInventario FROM siawin0..IN11  
WHERE 
--sCodigo_Producto = 'K35747'AND 
sCodigo_Bodega in 
(SELECT NBodega COLLATE SQL_Latin1_General_CP1_CI_AS FROM CED02 WHERE IDCEDI = 1 AND IDEmpresa = 3)
group by sCodigo_Producto
)PCGRAF ON PCGRAF.sCodigo_Producto = IN04.sCodigo_Producto
LEFT JOIN 
(
SELECT CodigoProducto, SUM(Cantidad) SaldoEstantes FROM CED03 WHERE
--CodigoProducto = 'K35747' and
IDCEDI = 1 AND IDEmpresa = 3
group by CodigoProducto
)WMS ON WMS.CodigoProducto = IN04.sCodigo_Producto  COLLATE SQL_Latin1_General_CP1_CI_AS

WHERE 
----IN04.sCodigo_Producto = 'K35747' AND
WMS.SaldoEstantes <> PCGRAF.SaldoInventario 
and (WMS.SaldoEstantes - PCGRAF.SaldoInventario) <> 0

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--USE cem4 



CREATE PROCEDURE [dbo].[CED03_RPT0002]
@IDCedi int, 
@IDEmpresa int,
@CodigoProducto varchar(30),
@DescripcionInventario varchar(75)
as


SELECT 
Fecha,
Usuario,
Movimiento,
case when Movimiento = 'PC-Rebajo' theN  canterior 
when SUBSTRING(Movimiento,1,1) = 'M' OR SUBSTRING(Movimiento,1,1) = 'P' theN  Cantidad 
else canterior end CantidadAnterior, 


--Canterior  CantidadAnterior, 

case  when Movimiento = 'PC-Ajuste' OR SUBSTRING(Movimiento,1,1) = 'M'  or SUBSTRING(Movimiento,1,1) = 'V' then -canterior else  
case when Movimiento = 'PC-Rebajo' then - Cantidad  
when SUBSTRING(Movimiento,1,1) = 'P' theN  Canterior
else Cantidad end 
end --ajuste
CantidaActual, 
 --Cantidad CantidaActual,
 
 case when Movimiento = 'PC-Rebajo' then - Cantidad  else Cantidad end
 +
case  when Movimiento = 'PC-Ajuste' or SUBSTRING(Movimiento,1,1) = 'M'  or SUBSTRING(Movimiento,1,1) = 'V' then -canterior else 
case when Movimiento = 'PC-Rebajo' theN  canterior else canterior end
end

Referencia
 , 
 Seccion Estante,
 CED03H.NBodega Bodega,
 CED03H.CodigoProducto,
 CED01.NombreEmpresa,
 CED00.NombreCedi,
 @DescripcionInventario DescripcionInventario,
 IN00.sDescripcion NombreBodega
  
 FROM CED03H
 ,CED01 , CED00, siawin0..IN00 
 WHERE 
 CED03H.NBodega = IN00.sCodigo collate SQL_Latin1_General_CP1_CI_AS AND --VER
 CED03H.IDEmpresa = CED01.IDEmpresa AND 
 CED03H.IDCedi = CED01.IDCedi AND 
 CED03H.IDCedi = CED00.IDCedi AND
 CED03H.CodigoProducto = @CodigoProducto AND
 CED03H.IDCedi = @IDCedi AND
 CED03H.IDEmpresa = @IDEmpresa
 
 ORDER BY CED03H.Fecha asc
 
 --SELECT * FROM CED03 
 
--truncate table CED03H




--SELECT TOP 0 * INTO CED03H FROM CED03

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CED03_RPT0001] 

 @IDCedi nvarchar(50),
 @IDEmpresa nvarchar(50),
 @Estante nvarchar(20)
as
    
DECLARE @siawin NCHAR(20)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)

--Genera un reporte por empresa de los productos que se encuentran en los estantes.
SET @Sql =   
'
SELECT NombreCedi,NombreEmpresa,ced03.NBodega,
sCodigo_Producto sCodigoProducto, sDescripcion_Inventario sDescripcionInventario ,
Seccion, Cantidad 
FROM CED03, CED02, CED01, CED00,'+@siawin + '.IN04
WHERE 
CED03.NBodega = CED02.NBodega AND
CED02.IDEmpresa = CED01.IDEmpresa AND
CED01.IDCedi = CED00.IDCedi AND
CED03.CodigoProducto = IN04.sCodigo_Producto COLLATE  SQL_Latin1_General_CP1_CI_AS 
AND CED01.IDEmpresa = '+ @IDEmpresa + '
AND CED01.IDCedi = '+@IDCedi + ' '

IF @Estante <> ''
BEGIN
	SET @Sql = @Sql + 'AND CED03.Seccion = '''+@Estante+''' '
END

SET @Sql = @Sql + 'ORDER BY NombreEmpresa, sCodigo_Producto,Seccion  ASC '

BEGIN TRANSACTION
BEGIN TRY
EXECUTE (@Sql) 
COMMIT
END TRY
BEGIN CATCH
SELECT 'ERROR'ERROR, ERROR_LINE(), ERROR_MESSAGE()
ROLLBACK
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[CED03_ReimprimirTransaccionParcial]
 @Movimiento varchar(50) ,
 @IDEmpresa varchar(50) ,
 @IDCedi varchar(50) ,
 @Tipo varchar(30),
 @Fecha varchar(30),
 @Accion varchar(20)
 as

--DECLARE @Movimiento varchar(50) = '0303017200003450'
--DECLARE @IDEmpresa varchar(50) = '3'
--DECLARE @IDCedi varchar(50) = '1'
--DECLARE @Tipo varchar(30) = 'Movimiento'


IF RTRIM(@Tipo) = 'Movimiento'
BEGIN
SET @Tipo = 'M'
END 
ELSE
BEGIN
SET @Tipo = 'V'
END

DECLARE @Sql    AS VARCHAR(MAX) =''
DECLARE @siawin varchar(35) ='' SET @siawin = (SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi) 
DECLARE @Cedi varchar(75)= (SELECT CED00.NombreCedi FROM CED01, CED00 WHERE CED01.IDCedi = CED00.IDCedi AND IDEmpresa=@IDEmpresa AND CED01.IDCedi=@IDCedi) 
DECLARE @Empresa varchar(75)= (SELECT NombreEmpresa FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi) 


IF @Accion = 'SELECT'
BEGIN
	SET @Sql = '
	DECLARE @TABLA TABLE (Cantidad decimal(18,2),NBodega varchar(10), CodigoProducto varchar(20), sDescripcion_Inventario varchar(100), Seccion varchar(30), IDProducto int, Movimiento varchar(20),Fecha varchar(25))

	INSERT INTO @TABLA 
	SELECT Canterior, NBodega, CodigoProducto,IN04.sDescripcion_Inventario, CED03H.Seccion, CED03H.IDProducto, CED03H.Movimiento, CED03H.Fecha
	FROM 
		CED03H (NOLOCK), CED00(NOLOCK), CED01(NOLOCK), '+@siawin + '.IN04 
	WHERE 
	CED03H.CodigoProducto = IN04.sCodigo_Producto COLLATE SQL_Latin1_General_CP1_CI_AS AND
	CED00.IDCedi = ced01.IDCedi AND
	CED01.IDEmpresa = CED03H.IDEmpresa AND
	CED01.IDCedi = CED03H.IDCedI AND
	CED03H.Movimiento ='''+ RTRIM(@Tipo)+'''  + '''+ @Movimiento + ''' AND CED03H.Fecha = ''' + @Fecha + '''

	SELECT '''+@Cedi+'''NombreCedi,'''+@Empresa+ ''' NombreEmpresa, * FROM @TABLA 
	'
	
	--SELECT (@Sql)
	EXEC (@Sql)

END
ELSE IF @Accion = 'CONTADOR'
BEGIN	
		SELECT COUNT(*) Total FROM CED03H (NOLOCK) 
			WHERE CED03H.Movimiento = RTRIM(@Tipo)+ RTRIM(@Movimiento)
END
ELSE IF @Accion = 'DATOS'
BEGIN	
		SELECT *, 'false' Seleccione FROM
		(
			SELECT Fecha, Movimiento FROM CED03H
				WHERE CED03H.Movimiento = RTRIM(@Tipo)+ RTRIM(@Movimiento)
			GROUP BY Fecha,Movimiento
		)MOV
END




GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--USE cem4 



CREATE PROCEDURE [dbo].[CED03_ReimprimirTransaccion]
 @Movimiento varchar(50) ,
 @IDEmpresa varchar(50) ,
 @IDCedi varchar(50) ,
 @Tipo varchar(30) 
 as

--DECLARE @Movimiento varchar(50) = '0303017200003450'
--DECLARE @IDEmpresa varchar(50) = '3'
--DECLARE @IDCedi varchar(50) = '1'
--DECLARE @Tipo varchar(30) = 'Movimiento'


IF RTRIM(@Tipo) = 'Movimiento'
BEGIN
SET @Tipo = 'M'
END 
ELSE
BEGIN
SET @Tipo = 'V'
END

DECLARE @Sql    AS VARCHAR(MAX) =''
DECLARE @siawin varchar(35) ='' SET @siawin = (SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi) 
DECLARE @Cedi varchar(75)= (SELECT CED00.NombreCedi FROM CED01, CED00 WHERE CED01.IDCedi = CED00.IDCedi AND IDEmpresa=@IDEmpresa AND CED01.IDCedi=@IDCedi) 
DECLARE @Empresa varchar(75)= (SELECT NombreEmpresa FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi) 



SET @Sql = '
DECLARE @TABLA TABLE (Cantidad decimal(18,2),NBodega varchar(10), CodigoProducto varchar(20), sDescripcion_Inventario varchar(100), Seccion varchar(30), IDProducto int )

INSERT INTO @TABLA 
SELECT Canterior, NBodega, CodigoProducto,IN04.sDescripcion_Inventario, CED03H.Seccion, CED03H.IDProducto FROM CED03H (NOLOCK), CED00(NOLOCK), CED01(NOLOCK), '+@siawin + '.IN04 WHERE 
CED03H.CodigoProducto = IN04.sCodigo_Producto COLLATE SQL_Latin1_General_CP1_CI_AS AND
CED00.IDCedi = ced01.IDCedi AND
CED01.IDEmpresa = CED03H.IDEmpresa AND
CED01.IDCedi = CED03H.IDCedI AND
CED03H.Movimiento IN ('''+ RTRIM(@Tipo)+'''  + '''+ @Movimiento + ''', ''P''  + '''+ @Movimiento + ''')

SELECT '''+@Cedi+'''NombreCedi,'''+@Empresa+ ''' NombreEmpresa, * FROM @TABLA 
ORDER BY SECCION ASC
'

--SELECT (@Sql)
EXEC (@Sql)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CED03_PISO] 
@IDCedi varchar(35),
@IDEmpresa varchar(35),
@Usuario varchar(35) ,
@Movimiento varchar(35)

AS
--Declarados



--Eventos
DECLARE @Sql    AS VARCHAR(MAX) =''

DECLARE @siawin varchar(35) = ''
SET @siawin = (SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi) 
DECLARE @Cedi varchar(75)= (SELECT CED00.NombreCedi FROM CED01, CED00 WHERE CED01.IDCedi = CED00.IDCedi AND IDEmpresa=@IDEmpresa AND CED01.IDCedi=@IDCedi) 
DECLARE @Empresa varchar(75)= (SELECT NombreEmpresa FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi) 


SET @Sql = '
--BEGIN TRANSACTION
--BEGIN TRY

DECLARE @Producto varchar(20) = ''''
DECLARE @Bodega varchar(20)
DECLARE @Tipo varchar(20)
DECLARE @Parar int =0

DECLARE @TABLA TABLE (Cantidad decimal(18,2),NBodega varchar(10), CodigoProducto varchar(20),
 sDescripcion_Inventario varchar(100), Seccion varchar(30), IDProducto int )

DECLARE ListaID 
CURSOR FOR 

SELECT sCodigo_Producto, 
CASE 
WHEN (SELECT bOperacion FROM '+@siawin+'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 0 then sBodega_Entra 
WHEN (SELECT bOperacion FROM '+@siawin+'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 1 then sBodega_Sale 
WHEN (SELECT bOperacion FROM '+@siawin+'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 2 then sBodega_Entra 
END Bodega,
(SELECT bOperacion FROM '+@siawin+'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento)Tipo
FROM '+@siawin+'.IN14, '+@siawin+'.IN13 WHERE in14.sLlave = IN13.sLlave AND IN13.sLlave = '''+@Movimiento +''' 
GROUP BY sCodigo_Producto, IN13.sCodigo_Movimiento,IN13.sBodega_Entra,IN13.sBodega_Sale ORDER BY sCodigo_Producto ASC


OPEN ListaID  
FETCH NEXT FROM ListaID INTO @Producto,@Bodega,@Tipo  

WHILE @@fetch_status = 0  
BEGIN 
IF (SELECT COUNT(*) FROM CED03 WHERE CodigoProducto = @Producto AND Seccion = ''PISO'' AND NBodega = @Bodega)  = 0
BEGIN

INSERT INTO CED03 
SELECT IN14.sCodigo_Producto,'''+@IDCedi+''' , '''+@IDEmpresa+''',@Bodega, SUM(IN14.iCantidad),''PISO'','''+@Usuario+''',
 '''', GETDATE(), ''1900-01-01'',0,0,'''' FROM '+@siawin+'.IN14,'+@siawin+'.IN13,'+@siawin+'.IN04  WHERE 
IN04.sCodigo_Producto = IN14.sCodigo_Producto AND
IN13.sLLave = IN14.sLLave AND
IN14.sLlave = '''+@Movimiento+''' and IN14.sCodigo_Producto = @Producto 
GROUP BY IN14.sCodigo_Producto,IN13.sBodega_Entra

DECLARE @ID INT = (SELECT SCOPE_IDENTITY())

INSERT INTO CED03H
SELECT GETDATE(),'''+@Usuario+''' ,''M''+ '''+@Movimiento+''',0,''Suma'',* FROM CED03 WHERE IDProducto = @ID


END
ELSE
BEGIN 


INSERT INTO CED03H
SELECT GETDATE(),'''+@Usuario+''' ,''M''+'''+@Movimiento+''',

(SELECT CANTIDAD FROM (SELECT SUM(IN14.iCantidad)CANTIDAD ,IN14.sCodigo_Producto FROM '+@siawin+'.IN14,'
+@siawin+'.IN13,'+@siawin+'.IN04  WHERE 
IN04.sCodigo_Producto = IN14.sCodigo_Producto AND
IN13.sLLave = IN14.sLLave AND
IN14.sLlave = '''+@Movimiento+''' and IN14.sCodigo_Producto = @Producto 
GROUP BY IN14.sCodigo_Producto,IN13.sBodega_Entra)
VISTA WHERE VISTA.sCodigo_Producto = @Producto 
AND Seccion = ''PISO'' )

,''Suma'',* FROM CED03 
WHERE CodigoProducto = @Producto 
AND Seccion = ''PISO'' AND NBodega = @Bodega 

UPDATE CED03 SET
CED03.Cantidad = CED03.Cantidad + VISTA.CANTIDAD,
CED03.QuienModifico = '''+@Usuario+''' ,
CED03.FechaModifico = GETDATE()
FROM 
(SELECT IN14.sCodigo_Producto,IN13.sBodega_Entra, SUM(IN14.iCantidad)CANTIDAD FROM '+@siawin+'.IN14,'
+@siawin+'.IN13,'+@siawin+'.IN04  WHERE 
IN04.sCodigo_Producto = IN14.sCodigo_Producto AND
IN13.sLLave = IN14.sLLave AND
IN14.sLlave = '''+@Movimiento+''' and IN14.sCodigo_Producto = @Producto 
GROUP BY IN14.sCodigo_Producto,IN13.sBodega_Entra)
VISTA WHERE VISTA.sCodigo_Producto = @Producto 
AND VISTA.sCodigo_Producto = CED03.CodigoProducto  COLLATE SQL_Latin1_General_CP1_CI_AS
AND Seccion = ''PISO''  and NBodega = @Bodega




END 



INSERT INTO @TABLA 
SELECT  SUM(IN14.iCantidad),IN13.sBodega_Entra,IN14.sCodigo_Producto,IN04.sDescripcion_Inventario,''PISO'',@ID 
FROM '+@siawin+'.IN14,'+@siawin+'.IN13,'+@siawin+'.IN04  WHERE 
IN04.sCodigo_Producto = IN14.sCodigo_Producto AND
IN13.sLLave = IN14.sLLave AND
IN14.sLlave = '''+@Movimiento+''' and IN14.sCodigo_Producto = @Producto 
GROUP BY IN13.sBodega_Entra,IN14.sCodigo_Producto,IN04.sDescripcion_Inventario


FETCH NEXT FROM ListaID INTO @Producto,@Bodega,@Tipo 

END



CLOSE ListaID  
DEALLOCATE ListaID 

INSERT INTO CED05 VALUES( '''+ RTRIM(@IDCedi) + ''',''' + RTRIM(@IDEmpresa) +''',''' + RTRIM(@Movimiento) +''',''' + RTRIM('Movimiento') +''',''' + RTRIM(@Usuario) +''',GETDATE())

select * from @TABLA 

--ROLLBACK
--END TRY
--BEGIN CATCH
--ROLLBACK SELECT ''ERROR'' ERROR, ERROR_LINE(), ERROR_MESSAGE()
--END CATCH

'
    
--SELECT (@Sql)
EXEC (@Sql)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CED03_Movimientos]

@IDCedi nvarchar(5),
@IDEmpresa nvarchar(5),
@sNumero_Movimiento nvarchar(50),
@sNumero_Documento nvarchar(50),
@bConfirmado nvarchar(50),
@dFecha_Movimiento nvarchar(50)

as 

DECLARE @siawin NCHAR(18)
SET @siawin = (SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)

BEGIN TRY
SET @Sql = '
select TOP 100 sNumero_Movimiento,sNumero_Documento,bConfirmado,dFecha_Movimiento, IN13.sLlave,
(
SELECT Count(*) Transaccion FROM CED05 WHERE IDCedi = '+@IDCedi+'  and IDEmpresa = '+@IDEmpresa+' AND Tipo = ''Movimiento''
and Transaccion = in13.sLLave  collate SQL_Latin1_General_CP1_CI_AS
group by Transaccion 
)Procesado
from ' + RTRIM(@siawin) + '.IN13
where 
sNumero_Movimiento like ''' +@sNumero_Movimiento+ '%'' and 
sNumero_Documento like ''' +@sNumero_Documento+ '%'' and 
bConfirmado like ''' +@bConfirmado+ '%'' and 
dFecha_Movimiento like ''' +@dFecha_Movimiento+ '%'' 
order by dFecha_Movimiento desc
'
  
 --select @Sql
 EXECUTE (@Sql)
  
  END TRY
  BEGIN CATCH
  SELECT ERROR_LINE(), ERROR_MESSAGE()
  END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CED03_MOVAutoPISO] 
@IDCedi varchar(35),
@IDEmpresa varchar(35),
@Usuario varchar(35) ,
@Movimiento varchar(35)

AS
--Declarados



--Eventos
DECLARE @Sql    AS VARCHAR(MAX) =''

DECLARE @siawin varchar(35) = ''
SET @siawin = (SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi) 
DECLARE @Cedi varchar(75)= (SELECT CED00.NombreCedi FROM CED01, CED00 WHERE CED01.IDCedi = CED00.IDCedi AND IDEmpresa=@IDEmpresa AND CED01.IDCedi=@IDCedi) 
DECLARE @Empresa varchar(75)= (SELECT NombreEmpresa FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi) 


SET @Sql = '
--BEGIN TRANSACTION
--BEGIN TRY

DECLARE @Producto varchar(20) = ''''
DECLARE @Bodega varchar(20)
DECLARE @Tipo varchar(20)
DECLARE @Parar int =0

DECLARE @TABLA TABLE (Cantidad decimal(18,2),NBodega varchar(10), CodigoProducto varchar(20),
 sDescripcion_Inventario varchar(100), Seccion varchar(30), IDProducto int )

DECLARE ListaID 
CURSOR FOR 

SELECT sCodigo_Producto, 
CASE 
WHEN (SELECT bOperacion FROM '+@siawin+'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 0 then sBodega_Sale 
WHEN (SELECT bOperacion FROM '+@siawin+'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 1 then sBodega_Entra 
WHEN (SELECT bOperacion FROM '+@siawin+'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 2 then sBodega_Entra 
END Bodega,
(SELECT bOperacion FROM '+@siawin+'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento)Tipo
FROM '+@siawin+'.IN14, '+@siawin+'.IN13 WHERE in14.sLlave = IN13.sLlave AND IN13.sLlave = '''+@Movimiento +''' 
GROUP BY sCodigo_Producto, IN13.sCodigo_Movimiento,IN13.sBodega_Entra,IN13.sBodega_Sale ORDER BY sCodigo_Producto ASC


OPEN ListaID  
FETCH NEXT FROM ListaID INTO @Producto,@Bodega,@Tipo  

WHILE @@fetch_status = 0  
BEGIN 
IF (SELECT COUNT(*) FROM CED03 WHERE CodigoProducto = @Producto AND Seccion = ''PISO'' AND NBodega = @Bodega)  = 0
BEGIN

INSERT INTO CED03 
SELECT IN14.sCodigo_Producto,'''+@IDCedi+''' , '''+@IDEmpresa+''',@Bodega, SUM(IN14.iCantidad),''PISO'','''+@Usuario+''',
 '''', GETDATE(), ''1900-01-01'',0,0,'''' FROM '+@siawin+'.IN14,'+@siawin+'.IN13,'+@siawin+'.IN04  WHERE 
IN04.sCodigo_Producto = IN14.sCodigo_Producto AND
IN13.sLLave = IN14.sLLave AND
IN14.sLlave = '''+@Movimiento+''' and IN14.sCodigo_Producto = @Producto 
GROUP BY IN14.sCodigo_Producto,IN13.sBodega_Entra

DECLARE @ID INT = (SELECT SCOPE_IDENTITY())

INSERT INTO CED03H
SELECT GETDATE(),'''+@Usuario+''' ,''P''+ '''+@Movimiento+''',0,''Suma'',* FROM CED03 WHERE IDProducto = @ID


END
ELSE
BEGIN 


INSERT INTO CED03H
SELECT GETDATE(),'''+@Usuario+''' ,''P''+'''+@Movimiento+''',

(SELECT CANTIDAD FROM (SELECT SUM(IN14.iCantidad)CANTIDAD ,IN14.sCodigo_Producto FROM '+@siawin+'.IN14,'
+@siawin+'.IN13,'+@siawin+'.IN04  WHERE 
IN04.sCodigo_Producto = IN14.sCodigo_Producto AND
IN13.sLLave = IN14.sLLave AND
IN14.sLlave = '''+@Movimiento+''' and IN14.sCodigo_Producto = @Producto 
GROUP BY IN14.sCodigo_Producto,IN13.sBodega_Entra)
VISTA WHERE VISTA.sCodigo_Producto = @Producto 
AND Seccion = ''PISO'' )

,''Suma'',* FROM CED03 
WHERE CodigoProducto = @Producto 
AND Seccion = ''PISO'' AND NBodega = @Bodega 

UPDATE CED03 SET
CED03.Cantidad = CED03.Cantidad + VISTA.CANTIDAD,
CED03.QuienModifico = '''+@Usuario+''' ,
CED03.FechaModifico = GETDATE()
FROM 
(SELECT IN14.sCodigo_Producto,IN13.sBodega_Entra, SUM(IN14.iCantidad)CANTIDAD FROM '+@siawin+'.IN14,'
+@siawin+'.IN13,'+@siawin+'.IN04  WHERE 
IN04.sCodigo_Producto = IN14.sCodigo_Producto AND
IN13.sLLave = IN14.sLLave AND
IN14.sLlave = '''+@Movimiento+''' and IN14.sCodigo_Producto = @Producto 
GROUP BY IN14.sCodigo_Producto,IN13.sBodega_Entra)
VISTA WHERE VISTA.sCodigo_Producto = @Producto 
AND VISTA.sCodigo_Producto = CED03.CodigoProducto  COLLATE SQL_Latin1_General_CP1_CI_AS
AND Seccion = ''PISO''  and NBodega = @Bodega




END 



INSERT INTO @TABLA 
SELECT  SUM(IN14.iCantidad),IN13.sBodega_Entra,IN14.sCodigo_Producto,IN04.sDescripcion_Inventario,''PISO'',@ID 
FROM '+@siawin+'.IN14,'+@siawin+'.IN13,'+@siawin+'.IN04  WHERE 
IN04.sCodigo_Producto = IN14.sCodigo_Producto AND
IN13.sLLave = IN14.sLLave AND
IN14.sLlave = '''+@Movimiento+''' and IN14.sCodigo_Producto = @Producto 
GROUP BY IN13.sBodega_Entra,IN14.sCodigo_Producto,IN04.sDescripcion_Inventario


FETCH NEXT FROM ListaID INTO @Producto,@Bodega,@Tipo 

END



CLOSE ListaID  
DEALLOCATE ListaID 

INSERT INTO CED05 VALUES( '''+ RTRIM(@IDCedi) + ''',''' + RTRIM(@IDEmpresa) +''',''' + RTRIM(@Movimiento) +''',''' + RTRIM('Movimiento') +''',''' + RTRIM(@Usuario) +''',GETDATE())

--select * from @TABLA 

--ROLLBACK
--END TRY
--BEGIN CATCH
--ROLLBACK SELECT ''ERROR'' ERROR, ERROR_LINE(), ERROR_MESSAGE()
--END CATCH

'
    
--SELECT (@Sql)
EXEC (@Sql)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--USE cem4 

CREATE PROCEDURE [dbo].[CED03_MOVAuto]
--Parametros
@IDCedi varchar(35),
@IDEmpresa varchar(35),
@Usuario varchar(35),
@Movimiento varchar(35) 
as

DECLARE @siawin varchar(35) = ''
SET @siawin = (SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi) 
DECLARE @Cedi varchar(75)= (SELECT CED00.NombreCedi FROM CED01, CED00 WHERE CED01.IDCedi = CED00.IDCedi AND IDEmpresa=@IDEmpresa AND CED01.IDCedi=@IDCedi) 
DECLARE @Empresa varchar(75)= (SELECT NombreEmpresa FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi) 



DECLARE @Sql    AS VARCHAR(MAX) =''

SET @Sql = 
'
DECLARE @TABLA TABLE (Cantidad decimal(18,2),NBodega varchar(10), CodigoProducto varchar(20), sDescripcion_Inventario varchar(100), Seccion varchar(30), IDProducto int )
DECLARE @Parar int =0
DECLARE @Producto varchar(20)
DECLARE @Bodega varchar(20)
DECLARE @BodegaSuma varchar(20)
DECLARE @Tipo varchar(20)
DECLARE @Interno int = 0


SET @Interno = ISNULL((
SELECT 
--sNumero_Movimiento , 
case when 
(Select sCodUbicacion  from '+@siawin +'.in00 where IN00.sCodigo = (CASE 
WHEN (SELECT bOperacion FROM '+@siawin +'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 0 then sBodega_Entra 
WHEN (SELECT bOperacion FROM '+@siawin +'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 1 then sBodega_Sale 
WHEN (SELECT bOperacion FROM '+@siawin +'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 2 then sBodega_Sale 
END)) =
(Select sCodUbicacion  from '+@siawin +'.in00 where IN00.sCodigo = (CASE 
WHEN (SELECT bOperacion FROM '+@siawin +'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 0 then sBodega_Sale 
WHEN (SELECT bOperacion FROM '+@siawin +'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 1 then sBodega_Entra 
WHEN (SELECT bOperacion FROM '+@siawin +'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 2 then sBodega_Entra 
END)) then ''1'' else ''0'' end BodegaSuma
--,(SELECT bOperacion FROM '+@siawin +'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento)Tipo
FROM '+@siawin +'.IN13 WHERE IN13.sLlave = '''+@Movimiento +'''
GROUP BY  sNumero_Movimiento,IN13.sCodigo_Movimiento,IN13.sBodega_Entra,IN13.sBodega_Sale-- ORDER BY sNumero_Movimiento ASC
),0)


DECLARE ListaID 
CURSOR FOR 

SELECT IN14.sCodigo_Producto, 
CASE 
WHEN (SELECT bOperacion FROM '+@siawin+'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 0 then sBodega_Entra 
WHEN (SELECT bOperacion FROM '+@siawin+'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 1 then sBodega_Sale 
WHEN (SELECT bOperacion FROM '+@siawin+'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento) = 2 then sBodega_Sale 
END Bodega,
(SELECT bOperacion FROM '+@siawin+'.IN12 where IN12.sCodigo_Movimiento = in13.sCodigo_Movimiento)Tipo
FROM '+@siawin+'.IN14, '+@siawin+'.IN13,'+@siawin+'.IN04 WHERE 
IN04.bRebaja_Saldos = 1 AND 
IN14.sCodigo_Producto = IN04.sCodigo_Producto AND
in14.sLlave = IN13.sLlave AND IN13.sLlave = '''+@Movimiento +''' 
GROUP BY IN14.sCodigo_Producto, IN13.sCodigo_Movimiento,IN13.sBodega_Entra,IN13.sBodega_Sale ORDER BY IN14.sCodigo_Producto ASC


OPEN ListaID  
FETCH NEXT FROM ListaID INTO  @Producto,@Bodega,@Tipo
WHILE @@fetch_status = 0  
BEGIN 
DECLARE @CANTIDADMOV DECIMAL(18,2) = (
SELECT  SUM(iCantidad) FROM '+@siawin+'.IN14,'+@siawin+'.IN13 WHERE IN13.sLlave =  '''+@Movimiento +'''  and 
sCodigo_Producto = @Producto AND  in14.sLlave = IN13.sLlave AND 
(CASE WHEN @Tipo = 0 THEN  sBodega_Entra WHEN @Tipo = 1 THEN  sBodega_Sale WHEN @Tipo = 2 THEN  sBodega_Sale END) = @Bodega 
group BY sCodigo_Producto)

if @Parar = 0 --PARAR
BEGIN
DECLARE @IDProducto int
DECLARE ListaRack CURSOR FOR SELECT IDProducto FROM CED03 WHERE  Estado = ''0'' and  CodigoProducto = @Producto AND NBodega = @Bodega  ORDER BY Cantidad ASC OPEN ListaRack  FETCH NEXT FROM ListaRack INTO @IDProducto 
WHILE @@fetch_status = 0  
BEGIN  
IF @CANTIDADMOV > (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto )
BEGIN
INSERT INTO @TABLA 
SELECT  Cantidad, NBodega, IN04.sCodigo_Producto, IN04.sDescripcion_Inventario, CED03.Seccion , IDProducto FROM CED03, '+@siawin+'.IN04 WHERE 
CED03.CodigoProducto = IN04.sCodigo_Producto collate SQL_Latin1_General_CP1_CI_AS AND
IDProducto = @IDProducto 
SET @CANTIDADMOV = @CANTIDADMOV - (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto )
INSERT INTO CED03H SELECT GETDATE(),'''+@Usuario+''',''M'' + '''+@Movimiento + ''', CED03.Cantidad,''Resta'', * FROM CED03 WHERE CED03.IDProducto=@IDProducto
DELETE CED03 
WHERE 
IDProducto = @IDProducto
END
ELSE IF @CANTIDADMOV = (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto )
BEGIN
INSERT INTO @TABLA 
SELECT Cantidad , NBodega, IN04.sCodigo_Producto, IN04.sDescripcion_Inventario, CED03.Seccion , IDProducto FROM CED03, '+@siawin+'.IN04 WHERE 
CED03.CodigoProducto = IN04.sCodigo_Producto collate SQL_Latin1_General_CP1_CI_AS AND
IDProducto = @IDProducto
SET @CANTIDADMOV = @CANTIDADMOV - (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto )
INSERT INTO CED03H SELECT GETDATE(),'''+@Usuario+''',''M'' + '''+ @Movimiento+''', CED03.Cantidad,''Resta'', * FROM CED03 WHERE CED03.IDProducto=@IDProducto
DELETE CED03 
WHERE 
IDProducto = @IDProducto
END
ELSE IF @CANTIDADMOV > 0 AND @CANTIDADMOV < (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto )
BEGIN
INSERT INTO @TABLA 
SELECT @CANTIDADMOV , NBodega, IN04.sCodigo_Producto, IN04.sDescripcion_Inventario, CED03.Seccion , IDProducto FROM CED03, '+@siawin+'.IN04 WHERE 
CED03.CodigoProducto = IN04.sCodigo_Producto collate SQL_Latin1_General_CP1_CI_AS AND
IDProducto = @IDProducto 
INSERT INTO CED03H SELECT GETDATE(),'''+@Usuario+''',''M''+'''+ @Movimiento+''', @CANTIDADMOV,''Resta'', * FROM CED03 WHERE CED03.IDProducto=@IDProducto
UPDATE CED03 SET
Cantidad =Cantidad - @CANTIDADMOV,
QuienModifico = '''+@Usuario+''',
FechaModifico = GETDATE()
WHERE 
IDProducto = @IDProducto
SET @CANTIDADMOV = 0;
END
FETCH NEXT FROM ListaRack INTO @IDProducto 
end
CLOSE ListaRack  
DEALLOCATE ListaRack 
IF @CANTIDADMOV > 0
BEGIN
SET @Parar = 1;
END --PARAR
ELSE
FETCH NEXT FROM ListaID INTO  @Producto,@Bodega,@Tipo 
end --Cursor
end
CLOSE ListaID  
DEALLOCATE ListaID 
IF @Parar > 0
BEGIN
SELECT ''ERROR: El producto ''+ @Producto + '' no tiene suficiente saldo disponible para generar el alisto.'',''ERROR'' ERROR
END
ELSE
BEGIN
IF @Interno > 0
BEGIN
EXEC CED03_MOVAutoPISO '''+@IDCedi+''', '''+@IDEmpresa+''','''+@Usuario+''','''+@Movimiento+'''
END
INSERT INTO CED05 VALUES( '''+ RTRIM(@IDCedi) + ''',''' + RTRIM(@IDEmpresa) +''',''' + RTRIM(@Movimiento) +''',''' + RTRIM('Movimiento') +''',''' + RTRIM(@Usuario) +''',GETDATE())
select '''+@Cedi+'''NombreCedi,'''+@Empresa+ ''' NombreEmpresa, * from @TABLA
 ORDER BY SECCION ASC
END
'

EXEC (@Sql)

--SELECT @Sql

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CED03_Facturas]

@IDCedi nvarchar(5),
@IDEmpresa nvarchar(5),
@sFactura nvarchar(50),
@sNombre_Cliente nvarchar(50),
@spedido nvarchar(50),
@dFecha nvarchar(50)

AS

DECLARE @siawin NCHAR(18)
SET @siawin = (SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)

BEGIN TRY
--SET @Sql = '
-- select TOP 20 sFactura,sNombre_Cliente,spedido,dFecha from '
-- + RTRIM(@siawin) + '.fa00 where 
--  sfactura <> '''' AND 
--  sFactura like '''+@sFactura + '''+  ''%'' and 
--  sNombre_Cliente like '''+@sNombre_Cliente + ''' + ''%'' and 
--  spedido like  ''' + @spedido + '''+ ''%'' and dFecha like ''' + @dFecha + ''' +''%''
  
--  ORDER BY DFECHA DESC
--  '

SET @Sql = '


SELECT * FROM (
 select TOP 250 sFactura,sNombre_Cliente,FA00.spedido,dFecha, 
 ISNULL(PROCESADO.Transaccion, '''')Transaccion, ISNULL(CEDI.Total,0)Total,
 ISNULL(DEVOLUCION.sNumero_Documento,'''')Devolucion   from 
'+ RTRIM(@siawin) + '.fa00
 LEFT JOIN
 (
  SELECT Transaccion FROM CED05 (NOLOCK) WHERE IDCEDI = '''+@IDCedi + ''' AND IDEmpresa = '''+@IDEmpresa+'''
 and Tipo = ''Facturas''
 
 )PROCESADO ON PROCESADO.Transaccion = FA00.sPedido COLLATE SQL_Latin1_General_CP1_CI_AS 
 LEFT JOIN
 (
SELECT fa01.sPedido , COUNT(*)Total FROM  '+ RTRIM(@siawin) + '.fa01 where fa01.sBodega in
 (SELECT NBodega  COLLATE SQL_Latin1_General_CP1_CI_AS  FROM CED02 (NOLOCK)  WHERE IDCEDI =  '''+@IDCedi + ''' AND IDEmpresa = '''+@IDEmpresa+''')
 group by sPedido 
 )CEDI on CEDI.sPedido = fa00.sPedido 
   LEFT JOIN
 (
 SELECT sCodigo_Cliente, sNumero_Documento  FROM '+ RTRIM(@siawin) + '.IN13 WHERE IN13.sCodigo_Movimiento = ''05''
 ) 
 DEVOLUCION ON DEVOLUCION.sCodigo_Cliente = FA00.sCodigo_Cliente AND DEVOLUCION.sNumero_Documento = FA00.sPedido 
 where 
  (sfactura <> '''' OR sTipoFactura = ''AP'') AND 
  sFactura like  '''+@sFactura + '''+  ''%'' and 
  sNombre_Cliente like '''+@sNombre_Cliente + ''' + ''%'' and 
  FA00.spedido like  ''' + @spedido + '''+ ''%'' and dFecha like ''' + @dFecha + ''' +''%''
  

  ORDER BY DFECHA DESC
  )VISTA 
  WHERE VISTA.Total > 0
  ORDER BY DFECHA DESC


  '
  
--  SET @Sql = '
  
--SELECT * FROM (
-- select TOP 100 sFactura,sNombre_Cliente,FA00.spedido,dFecha, 
-- ISNULL(PROCESADO.Transaccion, '''')Transaccion  from 
-- '+ RTRIM(@siawin) + '.fa00
-- LEFT JOIN
-- (
--  SELECT Transaccion FROM CED05 (NOLOCK) WHERE IDCEDI = '''+@IDCedi + ''' AND IDEmpresa = '''+@IDEmpresa+'''
-- and Tipo = ''Facturas''
 
-- )PROCESADO ON PROCESADO.Transaccion = FA00.sPedido COLLATE SQL_Latin1_General_CP1_CI_AS 
 
-- where 
--  sfactura <> '''' AND 
--  sFactura like '''+@sFactura + '''+  ''%'' and 
--  sNombre_Cliente like '''+@sNombre_Cliente + ''' + ''%'' and 
--  FA00.spedido like  ''' + @spedido + '''+ ''%'' and dFecha like ''' + @dFecha + ''' +''%''
--  ORDER BY DFECHA DESC
--  )VISTA 
 
--  ORDER BY DFECHA DESC
--'
  
 --   SET @Sql = '
 --select TOP 20 sFactura,sNombre_Cliente,spedido,dFecha from '
 --+ RTRIM(@siawin) + '.fa00 where 
 -- sfactura <> '''' AND 
 -- sFactura like '''+@sFactura + '''+  ''%'' and 
 -- sNombre_Cliente like '''+@sNombre_Cliente + ''' + ''%'' and 
 -- spedido like  ''' + @spedido + '''+ ''%'' and dFecha like ''' + @dFecha + ''' +''%''
  
 -- ORDER BY DFECHA DESC
 -- '
  
 --select @Sql
 EXECUTE (@Sql)
  
  END TRY
  BEGIN CATCH
  SELECT ERROR_LINE(), ERROR_MESSAGE()
  END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CED03_FACAuto] 

@IDCedi varchar(35) ,
@IDEmpresa varchar(35),
@Usuario varchar(35),
@Movimiento varchar(35) 


AS

--Parametros
--DECLARE @IDCedi varchar(35) = 1
--DECLARE @IDEmpresa varchar(35)= 3
DECLARE @siawin varchar(35) =''
--DECLARE @Usuario varchar(35) ='dvargas'
--DECLARE @Movimiento varchar(35) ='20138545'
--SELECT * FROM  ALTEA.siawin0.DBO.FA01 WHERE sPedido = '20138545'

--Declarados

DECLARE @Sql    AS VARCHAR(MAX) =''
SET @siawin = (SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi) 
DECLARE @Cedi varchar(75)= (SELECT CED00.NombreCedi FROM CED01, CED00 WHERE CED01.IDCedi = CED00.IDCedi AND IDEmpresa=@IDEmpresa AND CED01.IDCedi=@IDCedi) 
DECLARE @Empresa varchar(75)= (SELECT NombreEmpresa FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi) 



SET @Sql = 
'
DECLARE @TABLA TABLE (Cantidad decimal(18,2),NBodega varchar(10), CodigoProducto varchar(20), sDescripcion_Inventario varchar(100), Seccion varchar(30), IDProducto int )
DECLARE @Parar int =0

--Eventos

--SELECT * FROM CED02 

DECLARE @Producto varchar(20) 
DECLARE @Bodega varchar(20) 
--SELECT sCodigo_Producto FROM '+@siawin+'.IN14 WHERE sLlave = '''+@Movimiento+''' ORDER BY sCodigo_Producto ASC
DECLARE ListaID 
CURSOR FOR 
SELECT IN04.sCodigo_Producto, FA01.sBodega FROM '+@siawin+'.FA01, '+@siawin+'.IN04 WHERE 
IN04.bRebaja_Saldos = 1 AND IN04.sCodigo_Producto = FA01.sCodigo_Producto AND sPedido = '''+@Movimiento+''' and 
 sBodega in (SELECT NBodega collate SQL_Latin1_General_CP1_CI_AS FROM CED02 WHERE IDCedi = '''+@IDCedi+''' AND IDEmpresa = '''+@IDEmpresa+''' )  
GROUP BY IN04.sCodigo_Producto, FA01.sBodega ORDER BY IN04.sCodigo_Producto ASC
OPEN ListaID  
FETCH NEXT FROM ListaID INTO @Producto  , @Bodega
WHILE @@fetch_status = 0  
BEGIN 
DECLARE @CANTIDADMOV DECIMAL(18,2) = (
SELECT  SUM(fa01.cCantidad) FROM  '+@siawin+'.FA01 WHERE sPedido = '''+@Movimiento+''' and sCodigo_Producto = @Producto 
and sBodega in (@Bodega )   
)
--SELECT @Producto , @CANTIDADMOV

if @Parar = 0 --PARAR
BEGIN

DECLARE @IDProducto int
-----------------------------------------------------------------------
----------------------------------------------------------------------
DECLARE ListaRack CURSOR FOR SELECT IDProducto FROM CED03 WHERE  Estado = ''0'' and CodigoProducto = @Producto 
and CED03.NBodega in (@Bodega )  
ORDER BY Cantidad ASC OPEN ListaRack  FETCH NEXT FROM ListaRack INTO @IDProducto 
WHILE @@fetch_status = 0  

BEGIN  --Cursor
--SELECT @CANTIDADMOV ,@IDProducto, (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto )
 --SELECT @IDProducto, * FROM CED03 WHERE CodigoProducto = @Producto ORDER BY Cantidad ASC 
 
 
IF @CANTIDADMOV > (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto
and NBodega in (SELECT NBodega collate SQL_Latin1_General_CP1_CI_AS FROM CED02 WHERE IDCedi = '''+ @IDCedi+''' AND IDEmpresa = '''+@IDEmpresa+''' )
)
BEGIN

INSERT INTO @TABLA 
SELECT  Cantidad, NBodega, IN04.sCodigo_Producto, IN04.sDescripcion_Inventario, CED03.Seccion , IDProducto FROM CED03, '+@siawin+'.IN04 WHERE 
CED03.CodigoProducto = IN04.sCodigo_Producto collate SQL_Latin1_General_CP1_CI_AS AND
IDProducto = @IDProducto 
SET @CANTIDADMOV = @CANTIDADMOV - (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto )


INSERT INTO CED03H SELECT GETDATE(),'''+@Usuario+''',''V''+ '''+@Movimiento+''', CED03.Cantidad,''Resta'', * FROM CED03 WHERE CED03.IDProducto=@IDProducto

DELETE CED03 
WHERE 
IDProducto = @IDProducto

END
ELSE IF @CANTIDADMOV = (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto )
BEGIN

INSERT INTO @TABLA 
SELECT Cantidad , NBodega, IN04.sCodigo_Producto, IN04.sDescripcion_Inventario, CED03.Seccion , IDProducto FROM CED03, '+@siawin+'.IN04 WHERE 
CED03.CodigoProducto = IN04.sCodigo_Producto collate SQL_Latin1_General_CP1_CI_AS AND
IDProducto = @IDProducto

 
SET @CANTIDADMOV = @CANTIDADMOV - (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto )


INSERT INTO CED03H SELECT GETDATE(),'''+@Usuario+''',''V''+ '''+@Movimiento+''', CED03.Cantidad,''Resta'', * FROM CED03 WHERE CED03.IDProducto=@IDProducto

DELETE CED03 
WHERE 
IDProducto = @IDProducto

END
ELSE IF @CANTIDADMOV > 0 AND @CANTIDADMOV < (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto )
BEGIN

INSERT INTO @TABLA 
SELECT @CANTIDADMOV , NBodega, IN04.sCodigo_Producto, IN04.sDescripcion_Inventario, CED03.Seccion , IDProducto FROM CED03, '+@siawin+'.IN04 WHERE 
CED03.CodigoProducto = IN04.sCodigo_Producto collate SQL_Latin1_General_CP1_CI_AS AND
IDProducto = @IDProducto 

INSERT INTO CED03H SELECT GETDATE(),'''+@Usuario+''',''V''+ '''+@Movimiento+''', @CANTIDADMOV,''Resta'', * FROM CED03 WHERE CED03.IDProducto=@IDProducto


UPDATE CED03 SET
Cantidad =Cantidad - @CANTIDADMOV,
QuienModifico = '''+@Usuario+''',
FechaModifico = GETDATE()
WHERE 
IDProducto = @IDProducto

SET @CANTIDADMOV = 0; -- @CANTIDADMOV - (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto )





END



FETCH NEXT FROM ListaRack INTO @IDProducto 
end
CLOSE ListaRack  
DEALLOCATE ListaRack 
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------


--Si el movimiento no cubre las existencias entonces devuelve error
--SELECT @CANTIDADMOV 
IF @CANTIDADMOV > 0
BEGIN
SET @Parar = 1;
--SELECT ''ERROR: El producto ''+ @Producto + '' no tiene suficiente saldo disponible para generar el alisto.''
END --PARAR
ELSE


FETCH NEXT FROM ListaID INTO @Producto , @Bodega
end --Cursor


end
CLOSE ListaID  
DEALLOCATE ListaID 

IF @Parar > 0
BEGIN
SELECT ''ERROR: El producto ''+ @Producto + '' no tiene suficiente saldo disponible para generar el alisto.'',''ERROR'' ERROR
END
ELSE
BEGIN

INSERT INTO CED05 VALUES( '''+ RTRIM(@IDCedi) + ''',''' + RTRIM(@IDEmpresa) +''',''' + RTRIM(@Movimiento) +''',''' + RTRIM('Facturas') +''',''' + RTRIM(@Usuario) +''',GETDATE())
select '''+@Cedi+'''NombreCedi,'''+@Empresa+ ''' NombreEmpresa, * from @TABLA 
ORDER BY SECCION ASC
END
'

--SELECT (@Sql)
EXEC (@Sql)

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED03_DELETE_UBICACIONMOV]
@CodigoProducto nvarchar(50),
@Usuario nvarchar(50),
@Movimiento  nvarchar(50)

AS
 
declare  @Sql    AS VARCHAR(MAX)
	
SET @Sql =   
'


INSERT INTO CED03H SELECT GETDATE(),'''+@Usuario+ ''','+ ' '''+@Movimiento+ ''','+'CED03.Cantidad,''Resta'', * FROM CED03 WHERE CED03.IDProducto='''+RTRIM(@CodigoProducto)+'''

DELETE FROM CED03 WHERE CED03.IDProducto='''+RTRIM(@CodigoProducto)+'''

'

--SELECT * FROM CED03H FROM CED03 

--TRUNCATE TABLE CED03H

BEGIN TRANSACTION 
BEGIN TRY
EXECUTE (@Sql) 
commit
INSERT INTO Bitacora VALUES( GETDATE(),'ProcesoAutomatico' ,'CED03_DELETE_UBICACIONMOV',',IDProducto='+ RTRIM(@CodigoProducto))
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CED03_BuscarProducto] 

 @IDCedi nvarchar(50),
 @IDEmpresa nvarchar(50),
 @codigo nvarchar(50),
 @Descripcion nvarchar(50)
as
    
DECLARE @siawin NCHAR(20)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)

--Genera un reporte por empresa de los productos que se encuentran en los estantes.
IF RTRIM(@Descripcion) = '9999999999'
BEGIN 
SET @Sql =   
'select top 100
                    sCodigo_Producto,
                    sDescripcion_Inventario,
                    sAlias,
                    bMoneda,
                    cCosto_Nor,
                    cPrecio_Publico,
                    sProveedor ,
                    CP01.sNombre,
                    IN01.sDescripcion,
                    IN04.sCodigo_Barras
                    from '+ @siawin + ' .IN04,'+ @siawin + '.CP01,'+ @siawin + '.IN01
                    WHERE CP01.sCodigo_Proveedor =  in04.sProveedor  AND 
                    IN04.sGrupo = IN01.sGrupo AND
                    sCodigo_Producto = '''+ @codigo +''''
                    
END
ELSE
BEGIN
SET @Sql =   
'select top 100
                    sCodigo_Producto,
                    sDescripcion_Inventario,
                    sAlias,
                    bMoneda,
                    cCosto_Nor,
                    cPrecio_Publico,
                    sProveedor ,
                    CP01.sNombre,
                    IN01.sDescripcion,
                    IN04.sCodigo_Barras
                    from '+ @siawin + ' .IN04,'+ @siawin + '.CP01,'+ @siawin + '.IN01
                    WHERE CP01.sCodigo_Proveedor =  in04.sProveedor  AND 
                    IN04.sGrupo = IN01.sGrupo AND
                    sCodigo_Producto LIKE '''+ RTRIM(@codigo) +'''+''%'''
                    +' AND
                    sDescripcion_Inventario LIKE '''+ RTRIM(@Descripcion) +'''+''%'''
END

BEGIN TRANSACTION
BEGIN TRY
EXECUTE (@Sql) 
--SELECT @Sql
COMMIT
END TRY
BEGIN CATCH
ROLLBACK
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*
* Procedimiento para ejecutar el alisto parcial de los productos para enviar
* Autor: Jose Rodriguez Vindas
* Fecha: 24-03-2015
* Modulo: Modulo de entregas 
*/
CREATE PROCEDURE [dbo].[CED03_AlistoParcial]
	@nBodega varchar(5),
	@Requerido decimal(13,2),
	@CodigoProducto varchar(20),
	@sdescripcion_inventario varchar(60),
	@Cantidad decimal(13,2),
	@Definitivo decimal(13,2),
	@IDProducto varchar(10),
	@IDCedi int,
	@IDEmpresa int,
	@Estante varchar(12),
	@Usuario varchar(50),
	@Factura varchar(50),
	@Tipo varchar(20)
AS

IF @Tipo = 'SELECT'
BEGIN
	SELECT Estantes.CodigoProducto, sdescripcion_inventario, IDCedi,IDEmpresa,NBodega,Cantidad,Estante,Definitivo,IDProducto, @Requerido Requerido FROM 
	(
		SELECT RTRIM(CodigoProducto) CodigoProducto, IDCedi,IDEmpresa,NBodega,Cantidad,RTRIM(Seccion) Estante,0 Definitivo, IDProducto
			FROM CED03 WHERE IDCedi = @IDCedi AND IDEmpresa = @IDEmpresa AND CodigoProducto = @CodigoProducto
	)Estantes
	LEFT JOIN
	(
		SELECT sCodigo_Producto, RTRIM(sDescripcion_Inventario) sdescripcion_inventario FROM siawin0..IN04
	)Prod ON Prod.sCodigo_Producto = Estantes.CodigoProducto collate SQL_Latin1_General_CP1_CI_AS
END
ELSE IF @Tipo = 'ALISTO'
BEGIN

	DECLARE @siawin varchar(35) =''

	--Declarados
	DECLARE @Sql    AS VARCHAR(MAX) = ''
	SET @siawin = (SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi) 
	DECLARE @Cedi varchar(75)= (SELECT CED00.NombreCedi FROM CED01, CED00 WHERE CED01.IDCedi = CED00.IDCedi AND IDEmpresa=@IDEmpresa AND CED01.IDCedi=@IDCedi) 
	DECLARE @Empresa varchar(75)= (SELECT NombreEmpresa FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)
	
	DECLARE @TABLA TABLE (Cantidad decimal(18,2),NBodega varchar(10), CodigoProducto varchar(20), sDescripcion_Inventario varchar(100), Seccion varchar(30), IDProducto int )
	DECLARE @Parar int =0

	--Eventos

	--SELECT * FROM CED02 

	DECLARE @Producto varchar(20)
	DECLARE @IDProducto_ int
	DECLARE @CANTIDADMOV DECIMAL(18,2)
	DECLARE @Factura_ varchar(20)


	DECLARE ListaID 
	CURSOR FOR
	SELECT CodigoProducto, Definitivo, IDProducto, Factura FROM CED03_TEMP 
		WHERE Factura = @Factura AND IDCedi = @IDCedi AND IDEmpresa = @IDEmpresa
	GROUP BY CodigoProducto, Definitivo, IDProducto, Factura

	OPEN ListaID  
	FETCH NEXT FROM ListaID INTO @Producto,@CANTIDADMOV,@IDProducto_,@Factura_
	WHILE @@fetch_status = 0  
	BEGIN

		IF @Parar = 0 --PARAR
		BEGIN
		 
			IF @CANTIDADMOV > (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto_)
			BEGIN

				INSERT INTO @TABLA 
				SELECT  Definitivo, nBodega, CodigoProducto, sdescripcion_inventario, Estante, IDProducto FROM CED03_TEMP WHERE 
				IDProducto = @IDProducto_ AND CodigoProducto = @Producto AND Factura = @Factura_
				 
				SET @CANTIDADMOV = @CANTIDADMOV - (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto_ )


				INSERT INTO CED03H SELECT GETDATE(),@Usuario,'V'+ @Factura_, CED03.Cantidad,'Resta', * FROM CED03 WHERE CED03.IDProducto=@IDProducto_

				DELETE CED03 
				WHERE 
				IDProducto = @IDProducto_

			END
			ELSE IF @CANTIDADMOV = (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto_ )
			BEGIN

				INSERT INTO @TABLA 
				SELECT  Definitivo, nBodega, CodigoProducto, sdescripcion_inventario, Estante, IDProducto FROM CED03_TEMP WHERE 
				IDProducto = @IDProducto_ AND CodigoProducto = @Producto AND Factura = @Factura_
				 
				SET @CANTIDADMOV = @CANTIDADMOV - (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto_ )
				INSERT INTO CED03H SELECT GETDATE(),@Usuario,'V'+ @Factura_, CED03.Cantidad,'Resta', * FROM CED03 WHERE CED03.IDProducto=@IDProducto_

				DELETE CED03 
				WHERE IDProducto = @IDProducto_

			END
			ELSE IF @CANTIDADMOV > 0 AND @CANTIDADMOV < (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto_ )
			BEGIN
			
				INSERT INTO @TABLA 
				SELECT  Definitivo, nBodega, CodigoProducto, sdescripcion_inventario, Estante, IDProducto FROM CED03_TEMP WHERE 
				IDProducto = @IDProducto_ AND CodigoProducto = @Producto AND Factura = @Factura_

				INSERT INTO CED03H SELECT GETDATE(),@Usuario,'V'+ @Factura_, @CANTIDADMOV,'Resta', * FROM CED03 WHERE CED03.IDProducto=@IDProducto_				
				
				UPDATE CED03 SET
				Cantidad =Cantidad - @CANTIDADMOV,
				QuienModifico = @Usuario,
				FechaModifico = GETDATE()
				WHERE 
				IDProducto = @IDProducto_

				SET @CANTIDADMOV = 0; -- @CANTIDADMOV - (SELECT Cantidad FROM CED03 WHERE IDProducto = @IDProducto_ )

			END

		END
		-------------------------------------------------------------------------------------
		-------------------------------------------------------------------------------------
		
		--Si el movimiento no cubre las existencias entonces devuelve error
		--SELECT @CANTIDADMOV 
		IF @CANTIDADMOV > 0
		BEGIN
			SET @Parar = 1;
			--SELECT ''ERROR: El producto ''+ @Producto + '' no tiene suficiente saldo disponible para generar el alisto.''
		END --PARAR
	FETCH NEXT FROM ListaID INTO @Producto,@CANTIDADMOV,@IDProducto_,@Factura_
	END --Cursor

	CLOSE ListaID  
	DEALLOCATE ListaID 

	IF @Parar > 0
	BEGIN
		SELECT 'ERROR: El producto '+ @Producto + ' no tiene suficiente saldo disponible para generar el alisto.','ERROR' ERROR
	END
	ELSE
	BEGIN
		INSERT INTO CED05 VALUES(RTRIM(@IDCedi),RTRIM(@IDEmpresa),RTRIM(@Factura_),RTRIM('Facturas'),RTRIM(@Usuario),GETDATE())
		select @Cedi NombreCedi,@Empresa NombreEmpresa, * from @TABLA
	END	
	
	DELETE FROM CED03_TEMP
END
IF @Tipo = 'TABLA_TEMP'
BEGIN
	INSERT INTO CED03_TEMP
		VALUES(@nBodega,@Requerido,@CodigoProducto,@sdescripcion_inventario,@Cantidad,@Definitivo,@IDProducto,@IDCedi,@IDEmpresa,@Estante,@Usuario,@Factura)
	
	SELECT 'EXITO' Estado
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CED00_SELECT]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
SELECT IDCedi,NombreCedi FROM CED00 


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CED00_Acceso] 
@username varchar(30)
as
BEGIN
SELECT DBT10.sClave FROM DB01, siawin0..dbt10 WHERE 
db01.sUsuarioPcgraf = dbt10.sCodigo_Usuario COLLATE SQL_Latin1_General_CP1_CI_AS and
sUsuarioPcgraf = @username
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F300_update]
@IDLinea int,
@CodProyecto int,
@Contrato varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

UPDATE F300 SET
Contrato=@Contrato
WHERE
IDLinea =@IDLinea

SELECT * FROM F300 WHERE CodProyecto = @CodProyecto 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F300_Insert]
@IDLinea int,
@CodProyecto int,
@Contrato varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

insert into F300 VALUES(
@CodProyecto,
@Contrato
)

SELECT * FROM F300 WHERE CodProyecto = @CodProyecto 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F300_delete]
@Consecutivo int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
DELETE F300 WHERE IDLinea = @Consecutivo 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F300_CargarContratos]
@CodProyecto int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	select * from F300 WHERE CodProyecto = @CodProyecto

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Davy Vargas
-- Create date: <Create Date,,>
-- Description:	Ingresa la un nuevo registro sobre la tabla.
-- =============================================
CREATE PROCEDURE [dbo].[F200_update]
@IDLinea int,
@CodProyecto int,
@Ajuste varchar(50),
@Tipo int,
@Fecha datetime,
@Monto decimal (18,2),
@Moneda int,
@Descripcion varchar(200),
@IngresadoPor varchar(30),
@ModificadoPor varchar(30),
@FechaModificacion datetime

AS
BEGIN 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
UPDATE F200 SET
Ajuste=@Ajuste,
Tipo=@Tipo,	
Fecha=@Fecha,
Monto=@Monto,
Moneda=@Moneda,
Descripcion=@Descripcion,
IngresadoPor=@IngresadoPor,
ModificadoPor=@ModificadoPor,
FechaModificacion=@FechaModificacion
WHERE 
IDLinea = @IDLinea 

--SELECT *,(CASE Tipo WHEN
--	0 THEN 'MontoInicial'
--	when 1 then 'Suma'
--	when 2 then 'Resta' end) TipoNombre,
--	(Case Moneda when 
--	0 then 'Colones' 
--	when 1 then 'Dolares' end) TipoMoneda from F200(NOLOCK) 
--	WHERE CodProyecto = @CodProyecto 


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Davy Vargas
-- Create date: <Create Date,,>
-- Description:	Ingresa la un nuevo registro sobre la tabla.
-- =============================================
CREATE PROCEDURE [dbo].[F200_insert]
@IDLinea int,
@CodProyecto int,
@Ajuste varchar(50),
@Tipo int,
@Fecha datetime,
@Monto decimal (18,2),
@Moneda int,
@Descripcion varchar(200),
@IngresadoPor varchar(30),
@ModificadoPor varchar(30),
@FechaModificacion datetime

AS
BEGIN 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
	INSERT INTO F200 VALUES(
	@CodProyecto,
	@Ajuste,
@Tipo,	
@Fecha,
@Monto,
@Moneda,
@Descripcion,
@IngresadoPor,
@ModificadoPor,
@FechaModificacion)

--SELECT *,(CASE Tipo WHEN
--	0 THEN 'MontoInicial'
--	when 1 then 'Suma'
--	when 2 then 'Resta' end) TipoNombre,
--	(Case Moneda when 
--	0 then 'Colones' 
--	when 1 then 'Dolares' end) TipoMoneda from F200(NOLOCK) 
--	WHERE CodProyecto = @CodProyecto 


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[F200_delete]
@Consecutivo int

AS
BEGIN TRY
BEGIN TRANSACTION


	SET NOCOUNT ON;
DELETE F200 WHERE
IDLinea= @Consecutivo

COMMIT TRANSACTION
END TRY
BEGIN CATCH 
ROLLBACK
SELECT ERROR_LINE(),ERROR_MESSAGE()
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Carga en el grid 
CREATE PROCEDURE [dbo].[F200_CargarAjustes] 
@Proyecto VARCHAR(50)

AS
BEGIN

	SET NOCOUNT ON;

	SELECT *,(CASE Tipo WHEN
	0 THEN 'MontoInicial'
	when 1 then 'Suma'
	when 2 then 'Resta' end) TipoNombre,
	(Case Moneda when 
	0 then 'Colones' 
	when 1 then 'Dolares' end) TipoMoneda from F200(NOLOCK) 
	WHERE CodProyecto = @Proyecto 
	
	
	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[F100_update]
@Consecutivo int,
@Nomenclatura varchar(30),
@Codigo varchar(30),
@Proyecto varchar(200),
@Nombre varchar(50),
@Cliente varchar(10),
@Notas varchar(2000),
@MostrarTablaAvance int,
@Moneda int,
@Condiciones varchar(2000),
@FechaEstimadaCierre date,
@TipoCambio decimal(18,2),
@sQuienIngreso varchar(20),
@sQuienModifico VARCHAR(20),
@dFechaIngreso datetime,
@dFechaModifico datetime

AS
BEGIN TRY
BEGIN TRANSACTION

	SET NOCOUNT ON;
update F100 SET
Proyecto=@Proyecto,
Nombre=@Nombre,
Cliente=@Cliente,
Notas=@Notas,
MostrarTablaAvance=@MostrarTablaAvance,
Moneda=@Moneda,
Condiciones=@Condiciones,
FechaEstimadaCierre=@FechaEstimadaCierre,
TipoCambio=@TipoCambio,
sQuienIngreso=@sQuienIngreso,
sQuienModifico=@sQuienModifico,
dFechaIngreso=@dFechaIngreso,
dFechaModifico=@dFechaModifico
WHERE
Codigo=@Codigo AND
Consecutivo=@Consecutivo

COMMIT TRANSACTION
END TRY
BEGIN CATCH 
ROLLBACK
SELECT ERROR_LINE(),ERROR_MESSAGE()
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F100_TrasferirProyectos]
@CodProyecto int

AS
BEGIN TRY
BEGIN TRANSACTION
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @CONSECUTIVO INT = (SELECT MAX(Consecutivo)+1 FROM F100)
declare @nombreproyecto varchar(50)
SELECT @nombreproyecto=ltrim(str(year(GETDATE()))) + '-' + ltrim(str(isnull(max(case CHARINDEX('-',Codigo,1) when 0 then 0 else SUBSTRING(Codigo,CHARINDEX('-',Codigo,1)+1,LEN(Codigo)) end),0)+1)) 
	  from F100 where substring(Codigo,1,4)=year(getdate())

--@CodProyecto

--F100
INSERT INTO F100
SELECT
@CONSECUTIVO,
Nomenclatura,
@nombreproyecto,
Proyecto,
Nombre,
Cliente,
Notas,
MostrarTablaAvance,
Moneda,
Condiciones,
FechaEstimadaCierre,
TipoCambio,
sQuienIngreso,
sQuienModifico,
dFechaIngreso,
dFechaModifico 
FROM VF100 WHERE Consecutivo = @CodProyecto
--F200
INSERT INTO F200
SELECT
@CONSECUTIVO,
Ajuste,
Tipo,
Fecha,
Monto,
Moneda,
Descripcion,
IngresadoPor,
ModificadoPor,
FechaModificacion
FROM VF200 WHERE CodProyecto = @CodProyecto
--F300
INSERT INTO F300
SELECT
@CONSECUTIVO,
Contrato 
FROM VF300 WHERE CodProyecto = @CodProyecto
--F400
INSERT INTO F400
SELECT 
@CONSECUTIVO,
Documento,
Fecha,
Monto,
Saldo,
FechaVencimiento,
Tipo,
Moneda,
Detalle,
Recibos,
QuienModifico,
QuienIngreso,
dFechaIngreso,
dFechaModifico
FROM VF400 WHERE CodProyecto = @CodProyecto
--F500
INSERT INTO F500
SELECT 
@CONSECUTIVO,
Documento,
MontoUtilizado,
Saldo,
IncluidoManualmente 
FROM VF500 WHERE CodProyecto = @CodProyecto 
--F600
INSERT INTO F600
SELECT 
@CONSECUTIVO,
CodAsesor,
Nombre,
Porcentaje 
FROM VF600 WHERE CodProyecto = @CodProyecto
--F700
INSERT INTO F700
SELECT 
@CONSECUTIVO,
Usuario,
Fecha,
Detalle,
Tipo 
FROM VF700 WHERE CodProyecto = @CodProyecto
--F800
INSERT INTO F800
SELECT 
@CONSECUTIVO,
Movimiento FROM VF800 WHERE CodProyecto = @CodProyecto

--F601
INSERT INTO F601
SELECT 
@CONSECUTIVO,
Cobrador,
Nombre FROM VF601 WHERE CodProyecto = @CodProyecto 


--F301
INSERT INTO F301
SELECT 
@CONSECUTIVO,
ODP FROM VF301 WHERE CodProyecto = @CodProyecto 


DELETE VF100 WHERE Consecutivo = @CodProyecto
DELETE VF200 WHERE CodProyecto = @CodProyecto
DELETE VF300 WHERE CodProyecto = @CodProyecto
DELETE VF301 WHERE CodProyecto = @CodProyecto
DELETE VF400 WHERE CodProyecto = @CodProyecto
DELETE VF500 WHERE CodProyecto = @CodProyecto
DELETE VF600 WHERE CodProyecto = @CodProyecto
DELETE VF601 WHERE CodProyecto = @CodProyecto
DELETE VF700 WHERE CodProyecto = @CodProyecto
DELETE VF800 WHERE CodProyecto = @CodProyecto



COMMIT
END TRY
BEGIN CATCH 
ROLLBACK
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F100_TablaAvance]
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT Fecha,CASE TIPO  WHEN '0' THEN 'Monto Inicial' 
WHEN '1' THEN 'Suma' else 'Resta' end as Tipo,Cast('' as varchar(20)) as Numero,
F200.Monto , '' Saldo
FROM F200 WHERE CodProyecto = @CodProyecto 

union all

select CC10.dFecha Fecha,
CC10.sTipo_Documento Tipo,
cast(CC10.sNumero_Documento as Varchar(20))Numero,
CC10.cMonto_Documento Monto,
Cast(CC10.cMonto_Pendiente as varchar(20)) Saldo from F500,siawin28..CC10 where 
F500.Documento = CC10.sLlave collate Modern_Spanish_CI_AS  and CodProyecto = @CodProyecto and sTipo_Documento in ('FA','ND')
ORDER BY Fecha ASC




END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[F100_insert]
@Consecutivo int,
@Nomenclatura varchar(30),
@Codigo varchar(30),
@Proyecto varchar(200),
@Nombre varchar(50),
@Cliente varchar(10),
@Notas varchar(2000),
@MostrarTablaAvance int,
@Moneda int,
@Condiciones varchar(2000),
@FechaEstimadaCierre date,
@TipoCambio decimal(18,2),
@sQuienIngreso varchar(20),
@sQuienModifico VARCHAR(20),
@dFechaIngreso datetime,
@dFechaModifico datetime

AS
BEGIN TRY
BEGIN TRANSACTION

	SET NOCOUNT ON;
declare @nombreproyecto varchar(50)
SELECT @nombreproyecto=ltrim(str(year(GETDATE()))) + '-' + ltrim(str(isnull(max(case CHARINDEX('-',Codigo,1) when 0 then 0 else SUBSTRING(Codigo,CHARINDEX('-',Codigo,1)+1,LEN(Codigo)) end),0)+1)) 
	  from F100 where substring(Codigo,1,4)=year(getdate())
DECLARE @NumeroProyecto int 
SELECT @NumeroProyecto = (SELECT isnull(MAX(Consecutivo),0)+1 from F100)
INSERT INTO F100 VALUES(
@NumeroProyecto,
'',
@nombreproyecto,
@Proyecto,
@Nombre,
@Cliente,
@Notas,
@MostrarTablaAvance,
@Moneda,
@Condiciones,
@FechaEstimadaCierre,
@TipoCambio,
@sQuienIngreso,
@sQuienModifico,
@dFechaIngreso,
@dFechaModifico)

SELECT @NumeroProyecto,@nombreproyecto
COMMIT TRANSACTION
END TRY
BEGIN CATCH 
ROLLBACK
SELECT ERROR_LINE(),ERROR_MESSAGE()
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F100_DetalleGeneral]
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


SELECT 
F100.Consecutivo ,
Codigo Codigo,
Proyecto Nombre,
F100.Moneda,
ISNULL(MONTOPROYECTO.Monto,0) MontoInicial,
ISNULL(MONTOPROYECTO.Monto,0)+ ISNULL(MONTOAJUSTADOSUMA.Monto,0)-ISNULL(MONTOAJUSTADORESTA.Monto,0)MontoAjustado,
ISNULL(MONTOPROYECTO.Monto,0)+ ISNULL(MONTOAJUSTADOSUMA.Monto,0)-ISNULL(MONTOAJUSTADORESTA.Monto,0)-ISNULL(TOTALABONADO.MONTO,0) MontoAbonado,

ISNULL(MONTOPROYECTO.Monto,0)+ ISNULL(MONTOAJUSTADOSUMA.Monto,0)-ISNULL(MONTOAJUSTADORESTA.Monto,0)-ISNULL(FACTURADO.MONTO,0) MontoFacturado
FROM F100 
LEFT JOIN 
(
SELECT Monto,CodProyecto FROM F200 WHERE Tipo = 0 
)MONTOPROYECTO
ON MONTOPROYECTO.CodProyecto = F100.Consecutivo 

LEFT JOIN 
(
SELECT Monto,CodProyecto FROM F200 WHERE Tipo = 1
)MONTOAJUSTADOSUMA
ON MONTOAJUSTADOSUMA.CodProyecto = F100.Consecutivo 
LEFT JOIN 
(
SELECT Monto,CodProyecto FROM F200 WHERE Tipo = 2
)MONTOAJUSTADORESTA
ON MONTOAJUSTADORESTA.CodProyecto = F100.Consecutivo 

LEFT JOIN
(
SELECT SUM(MontoUtilizado)MONTO,CodProyecto FROM F500 WHERE (Documento LIKE '%FA%' OR Documento LIKE '%ND%')
GROUP BY CodProyecto
)FACTURADO
ON FACTURADO.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
SELECT SUM(cMonto)MONTO,F500.CodProyecto FROM F500, siawin28..CC10,siawin28..CC12 WHERE
F500.Documento = CC10.sLlave collate Modern_Spanish_CI_AS
AND CC10.sNumero_Documento = CC12.sFactura
AND CC10.sTipo_Documento = CC12.sTipo_Documento
AND CC10.sCliente = CC12.sCodigo 
AND SUBSTRING(CC12.sRecibo,1,1) <> '-'
GROUP BY F500.CodProyecto
)TOTALABONADO
ON TOTALABONADO.CodProyecto = F100.Consecutivo
where F100.Consecutivo = @CodProyecto


-- SELECT cMonto Total,F500.CodProyecto,CC12.sRecibo 
--FROM siawin28..CC12,siawin28..CC10,F500 
--WHERE CC12.sTipo_Documento =CC10.sTipo_Documento
--AND CC12.sFactura =CC10.sNumero_Documento
--AND CC12.sCodigo = CC10.sCliente
--AND CC10.sLlave = F500.Documento
--and F500.CodProyecto = 1 
--and substring(CC12.sRecibo,1,1) <> '-'


-- SELECT cMonto Total,F500.CodProyecto,CC12.sRecibo 
--FROM siawin28..CC12,siawin28..CC10,F500 
--WHERE CC12.sTipo_Documento =CC10.sTipo_Documento
--AND CC12.sFactura =CC10.sNumero_Documento
--AND CC12.sCodigo = CC10.sCliente
--AND CC10.sLlave = F500.Documento
--and F500.CodProyecto = 1 
--and substring(CC12.sRecibo,1,1) <> '-'

-- SELECT cMonto Total,F500.CodProyecto,CC12.sRecibo 
--FROM siawin28..CC12,siawin28..CC10,F500 
--WHERE CC12.sTipo_Documento =CC10.sTipo_Documento
--AND CC12.sFactura =CC10.sNumero_Documento
--AND CC12.sCodigo = CC10.sCliente
--AND CC10.sLlave = F500.Documento
--and F500.CodProyecto = 1 
--and substring(CC12.sRecibo,1,1) <> '-'




END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F100_BuscarProyecto]
@Filtro varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @MFiltro varchar(100) =  REPLACE(@Filtro,'*','%')
	
	SELECT top 100 Consecutivo,
	Codigo,
	Proyecto,
	Nombre 	
	 FROM F100 WHERE Codigo LIKE '%'+ @MFiltro + '%' or Proyecto like '%'+ @MFiltro
	+ '%' or Cliente like '%'+@MFiltro+'%'

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F000_update]
@IDLinea int,
@Perfil int,
@UsuarioIngreso varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

update F000 set
Perfil = @Perfil,
QuienModifico = @UsuarioIngreso ,
dFechaModifico = GETDATE()
where IDLinea = @IDLinea

    
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F000_Seguridad]
@Usuario varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


select Opcion,Estado from F000,F001 where
F000.Modulo = F001.Modulo and
F000.Perfil = F001.Perfil and
F000.Usuario =@Usuario 


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F000_PerfilesCreados]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

select * from F001 where Opcion = 'F10'
    
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F000_insert]
@Usuario Varchar(50),
@Perfil int,
@UsuarioIngreso Varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO F000 VALUES(
@Usuario,
@Perfil,
'EuroSat',
@UsuarioIngreso ,
'',
GETDATE(),
'01-01-1900')
    
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F000_delete]
@IDLinea int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE F000 WHERE IDLinea = @IDLinea 

    
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F000_BuscarUsuario]
@Usuario varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    select F000.IDLinea,Usuario,DBT10.sNombre,F000.Perfil,Modulo,DESCRIPCION.Descripcion  from  siawin0..DBT10, F000 
left join
(
select Perfil,Descripcion from F001 where Opcion = 'F10'
)DESCRIPCION
ON DESCRIPCION.Perfil = F000.Perfil 
where sCodigo_Usuario = Usuario collate Modern_Spanish_CI_AS
and (Usuario like '%'+@Usuario+'%' or DBT10.sNombre like '%'+@Usuario+'%')


    
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--drop table EN04
--CREATE TABLE EN04
--(
--	IdLinea int identity,
--	Consecutivo varchar(10),
--	sPedido varchar(20),
--	CodigoProducto varchar(20),
--	Recibido varchar(1),
--	Hora varchar(20),
--	Transportista varchar(50),
--	Fecha datetime,
--	NumDesp int,
--	QuienIngreso varchar(50),
--	QuienModifico varchar(50),
--	FechaIngreso datetime,
--	FechaModifico datetime
--)

--GO

--drop table EN04_Reprogramado
--CREATE TABLE EN04_Reprogramado
--(
--	IDLinea int Identity,
--	Consecutivo varchar(10),
--	ConsecutivoAntiguo varchar(10),
--	sPedido varchar(15),
--	CodigoProd varchar(20),
--	FechaReprogramado datetime
--)

--GO

CREATE PROCEDURE [dbo].[EN04_DATOS]
	@IdLinea int,
	@Consecutivo varchar(10),
	@sPedido varchar(20),
	@CodigoProducto varchar(20),
	@Recibido varchar(1),
	@Hora varchar(20),
	@Transportista varchar(200),
	@Fecha datetime,
	@Fecha2 datetime,	
	@Usuario varchar(50),
	@sLugar varchar(20),
	@Consecutivo2 varchar(10),
	@Tipo int
AS 

IF @Tipo = 1 --busqueda
BEGIN
	SELECT Vista.Consecutivo,Vista.sPedido,Vista.Pedido,Vista.sLugar,Fac.sNombre_Cliente,FAC.Nom_Vendedor,FAC.cCantidad, FAC.sCodigo_Producto,FAC.sDescripcion,ISNULL(Vista1.Hora,'') Hora, 
		ISNULL(Transportista,'') Transportista, ISNULL(Fecha,'') Fecha, 'false' Seleccione, ISNULL(Recibido,'false') Recibido,ISNULL(NumDesp,'') NumDesp, ISNULL(Vista1.IdLinea,'') IdLinea,Vista.dFecha,
		CASE WHEN ISNULL(Vista1.Consecutivo,'') = '' then '0' ELSE '1' END Enviado,Fac.iLinea, ISNULL(Vista2.ConsecutivoAntiguo,'') ConsecutivoAntiguo,ISNULL(Reprogramado,'0') Reprogramado, 
		Vista1.Consecutivo ConsecEnviado,Vista.Ruta, Vista.IDLinea IDEN01, Vista.Notas
	FROM
	(
		SELECT Consecutivo,sPedido, sLugar, sAsignado, Pedido, dFecha,Ruta, EN01.IDLinea, Notas FROM EN01 WHERE dFecha BETWEEN @Fecha AND @Fecha2 and Tipo_Entrega = 'Tienda'
	)Vista
	INNER JOIN
	(
			SELECT * FROM 
			(
				SELECT FA01.iLinea, FA00.sPedido,FA00.sNombre_Cliente,FA00.sDireccion_1, FA00.sDireccion_2, FA00.dFecha, FA00.dVencimiento,FA00.sTelefono,FA00.sVendedor,
					FA01.sCodigo_Producto,FA01.sDescripcion,FA01.cCantidad,FA00.sFactura NumFactura,FA00.sCodigo_Cliente
				FROM siawin0..FA00, siawin0..FA01
				WHERE FA00.sPedido = FA01.sPedido AND FA01.sBodega IN ('01', '11')
			)Factura
			INNER JOIN
			(
				SELECT sCodigo, sDescripcion Nom_Vendedor FROM siawin0..cc20
			)Vendedor ON Vendedor.sCodigo = Factura.sVendedor
	)Fac ON Fac.sPedido = Vista.sPedido collate SQL_Latin1_General_CP1_CI_AS
	LEFT JOIN
	(
		SELECT Consecutivo, sPedido, CodigoProducto, Hora,Transportista, Fecha, 'false' Seleccione, CASE WHEN Recibido = '1' THEN 'true' ELSE 'false' END Recibido, NumDesp,IdLinea 
			FROM EN04		
	)Vista1 ON Vista1.sPedido = Vista.sPedido AND Vista1.CodigoProducto = Fac.sCodigo_Producto COLLATE SQL_Latin1_General_CP1_CI_AS
	LEFT JOIN
	(
		SELECT ConsecutivoAntiguo, sPedido, CodigoProd,'1' Reprogramado
			FROM EN04_Reprogramado		
	)Vista2 ON Vista2.sPedido = Vista.sPedido AND Vista2.CodigoProd = Fac.sCodigo_Producto COLLATE SQL_Latin1_General_CP1_CI_AS AND Vista2.ConsecutivoAntiguo = Vista.Consecutivo
	ORDER BY Vista.Consecutivo
END
ELSE IF @Tipo = 2
BEGIN
	INSERT INTO EN04 VALUES(@Consecutivo,@sPedido,@CodigoProducto,@Recibido,@Hora,@Transportista,@Fecha,
		(SELECT ISNULL(MAX(NumDesp),0) FROM EN04 WHERE Consecutivo = @Consecutivo AND sPedido = @sPedido) + 1,@Usuario,'',GETDATE(),'1900-01-01')
	UPDATE EN01 SET cEstado = 3 WHERE Consecutivo = @Consecutivo AND sPedido = @sPedido
	SELECT 'Exito' Resultado
END
ELSE IF @Tipo = 3 --Consulta en caso de hacer una reprogramacion, y trae el consecutivo de la 
BEGIN
	IF (SELECT COUNT(*) Cantidad FROM EN01 WHERE dFecha = @Fecha AND Tipo_Entrega = 'Tienda') > 0
	BEGIN
		SELECT TOP 1 Consecutivo, 'Existe' Estado, COUNT(*) Cantidad FROM EN01 
			WHERE dFecha = @Fecha AND Tipo_Entrega = 'Tienda'
		GROUP BY Consecutivo
	END
	ELSE
	BEGIN		
		UPDATE EN00 SET Consecutivo = Consecutivo + 1, FechaUltimaGeneracion = GETDATE()
		SELECT (Consecutivo) Consecutivo, 'Nuevo' Estado, 0 Cantidad FROM EN00
	END
END
ELSE IF @Tipo = 4 --Elimina una entrega a tienda
BEGIN
	DELETE FROM EN01 WHERE Consecutivo = @Consecutivo AND sPedido = @sPedido AND dFecha = @Fecha AND Tipo_Entrega = 'Tienda'
	DELETE FROM EN04_Reprogramado WHERE Consecutivo = @Consecutivo AND sPedido = @sPedido AND FechaReprogramado = @Fecha
	SELECT 'Exito' Resultado
END
ELSE IF @Tipo = 5 --Actualiza la reprogramacion
BEGIN
	IF (SELECT COUNT(*) FROM EN01 WHERE Consecutivo = @Consecutivo AND sPedido = @sPedido AND dFecha = @Fecha) = 0
	BEGIN
		INSERT INTO EN01
			SELECT @Consecutivo,1,Pedido,@Fecha,@Hora,sCliente,@sLugar,@Transportista,cEstado,UsuarioDigita,EmpresaTransportista,'Tienda',@sPedido,@Usuario,'',GETDATE(),'1900-01-01','',1
				FROM EN01 WHERE sPedido = @sPedido AND dFecha = @Fecha2 AND Consecutivo = @Consecutivo2
	END
	INSERT INTO EN04_Reprogramado VALUES (@Consecutivo,@Consecutivo2,@sPedido,@CodigoProducto,@Fecha)		
	SELECT 'Exito' Resultado
END
ELSE IF @Tipo = 6
BEGIN
	UPDATE EN01 SET sLugar = @sLugar, Ruta = @Consecutivo2, QuienModifico = @Usuario, FechaModifico = GETDATE()--, Notas = @Transportista
		WHERE Consecutivo = @Consecutivo AND sPedido = @sPedido
	SELECT 'Exito' Resultado
END
ELSE IF @Tipo = 7 --Consulta en caso de hacer una reprogramacion, y trae el consecutivo de la 
BEGIN
	IF (SELECT COUNT(*) Cantidad FROM EN01 WHERE dFecha = @Fecha AND Tipo_Entrega = 'Traslados') > 0
	BEGIN
		SELECT TOP 1 Consecutivo, 'Existe' Estado, COUNT(*) Cantidad FROM EN01 
			WHERE dFecha = @Fecha AND Tipo_Entrega = 'Traslados'
		GROUP BY Consecutivo
	END
	ELSE
	BEGIN		
		UPDATE EN00 SET Consecutivo = Consecutivo + 1, FechaUltimaGeneracion = GETDATE()
		SELECT (Consecutivo) Consecutivo, 'Nuevo' Estado, 0 Cantidad FROM EN00
	END
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----SP EN03_DATOS-----------------
CREATE PROCEDURE [dbo].[EN03_Datos]
	@IDEntrega int,
	@Categoria varchar(100),
	@Subcategoria varchar(500),
	@Subcategoria2 varchar(500),
	@user varchar(50),
	@TIPO VARCHAR(20)
AS
	IF @TIPO = 'INSERTAR'
		BEGIN
			IF (SELECT COUNT(*) FROM EN03 WHERE IDEntrega = @IDEntrega AND Categoria = @Categoria) = 0
				BEGIN
					INSERT INTO EN03 VALUES (@IDEntrega,@Categoria,@Subcategoria,@Subcategoria2,@user,GETDATE(),'','1900-01-01')
				END
			ELSE
				BEGIN
					UPDATE EN03 SET Subcategoria = @Subcategoria, Subcategoria2 = @Subcategoria2, QuienModifico = @user, FechaModifico = GETDATE()
						WHERE IDEntrega = @IDEntrega AND Categoria = @Categoria
				END
		END
	IF @TIPO = 'SELECCIONAR'
		BEGIN
			SELECT 	IDEntrega,Categoria,Subcategoria,Subcategoria2 FROM EN03 WHERE EN03.IDEntrega = @IDEntrega
		END
	IF @TIPO = 'ELIMINAR'
		BEGIN
			DELETE FROM EN03 WHERE EN03.IDEntrega = @IDEntrega
		END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----SP EN02_DATOS-----------------
CREATE PROCEDURE [dbo].[EN02_Datos]
	@IDLinea int,
	@IDEntrega int, --IDLinea de la tabla EN01
	@FechaIndica varchar(2),
	@RecibioCompraCompleta varchar(2),
	@Pendiente varchar(200),
	@BuenEstado varchar(2),
	@Detalle1 varchar(200),
	@InstalacionMuebles varchar(2),
	@Duracion varchar(50),
	@Instalacion varchar(50),
	@Detalle2 varchar(200),
	@ServicioPrestado varchar(2),
	@Comentario varchar(800),
	@Sugerencias varchar(800),
	@Recibido varchar(80),
	@Usuario varchar(50),
	@Tipo varchar(1)
AS
SET ANSI_WARNINGS OFF;

	IF @Tipo = '1'
		BEGIN
			INSERT INTO EN02 (IDEntrega, FechaIndica, RecibioCompraCompleta, Pendiente, BuenEstado, Detalle1, InstalacionMuebles, Duracion, Instalacion, Detalle2, ServicioPrestado,
					 Comentario, Sugerencias, Recibido, QuienIngreso,FechaIngreso)
			 VALUES (@IDEntrega,@FechaIndica,@RecibioCompraCompleta,@Pendiente,@BuenEstado,@Detalle1,@InstalacionMuebles,@Duracion,@Instalacion,@Detalle2,@ServicioPrestado,
					@Comentario,@Sugerencias,@Recibido,@Usuario,GETDATE())
		END
	ELSE IF @Tipo = '2'
		BEGIN
			UPDATE EN02 SET FechaIndica = @FechaIndica,RecibioCompraCompleta = @RecibioCompraCompleta,Pendiente = @Pendiente,BuenEstado = @BuenEstado,
				Detalle1 = @Detalle1,InstalacionMuebles = @InstalacionMuebles,Duracion = @Duracion,Instalacion = @Instalacion,Detalle2 = @Detalle2,ServicioPrestado = @ServicioPrestado,
					Comentario = @Comentario,Sugerencias = @Sugerencias,Recibido = @Recibido,QuienModifico = @Usuario,FechaModifico = GETDATE()
				WHERE IDLinea = @IDLinea AND IDEntrega = @IDEntrega
		END
	ELSE IF @Tipo = '3'
		BEGIN
			DELETE FROM EN02 WHERE IDLinea = @IDLinea AND IDEntrega = @IDEntrega
		END
	ELSE IF @Tipo = '4'
		BEGIN
			SELECT  IDLinea,IDEntrega, FechaIndica, RecibioCompraCompleta, Pendiente, BuenEstado, Detalle1, InstalacionMuebles, Duracion, Instalacion, Detalle2, ServicioPrestado,
					 Comentario, Sugerencias, Recibido
			FROM EN02
			WHERE IDEntrega = @IDEntrega
		END
	ELSE IF @Tipo = '5'
		BEGIN
			SELECT * FROM (
				SELECT Consecutivo, IDLinea FROM EN01 WHERE EN01.Consecutivo = @IDEntrega
			)EN01
			LEFT JOIN
			(
				SELECT  IDLinea,IDEntrega, FechaIndica, RecibioCompraCompleta, Pendiente, BuenEstado, Detalle1, InstalacionMuebles, Duracion, Instalacion, Detalle2, ServicioPrestado,
						 Comentario, Sugerencias, Recibido
				FROM EN02
			)EN02 ON EN02.IDEntrega = EN01.IDLinea
		END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EN01P_Datos]
	@IDLinea int,
	@IDEntrega int,
	@sPedido varchar(200),
	@CodigoProducto varchar(20),
	@Cantidad decimal(13,2),
	@Despachado  decimal(13,2),
	@Usuario varchar(50),
	@Tipo varchar (20),
	@Consecutivos varchar(10),
	@Enviado varchar(5)
AS

IF @Tipo = 'INSERTAR'
BEGIN
	INSERT INTO EN01P
		SELECT @IDEntrega,@sPedido,sCodigo_Producto,cCantidad,
			ISNULL((SELECT SUM(Despachado) FROM EN01P WHERE sPedido = @sPedido AND CodigoProducto = sCodigo_Producto COLLATE Modern_Spanish_CI_AS GROUP BY CodigoProducto),0),
			0,@Enviado,@Usuario,'',GETDATE(),'1900-01-01' 
			FROM siawin0..FA01 where sPedido = @sPedido
END
IF @Tipo = 'DESPACHAR'
BEGIN
	UPDATE EN01P SET Despachado = @Despachado, FechaModifico = GETDATE(), QuienModifico = @Usuario 
		WHERE IDEntrega = @IDEntrega AND CodigoProducto = @CodigoProducto
	INSERT INTO EN05 VALUES (@IDEntrega,@CodigoProducto,@Despachado,@sPedido,GETDATE(),@Usuario,'',GETDATE(),'1900-01-01')
	IF (SELECT (Cantidad - Despachado) FROM EN01P WHERE IDEntrega = @IDEntrega AND CodigoProducto = @CodigoProducto) = 0
	BEGIN
		UPDATE EN01P SET Enviado = 'true' WHERE IDEntrega = @IDEntrega AND CodigoProducto = @CodigoProducto
	END
END
IF @Tipo = 'DETALLE'
BEGIN
	SELECT Vista.IDLinea IDLineaEN01,Vista4.IDLinea,Vista4.IDEntrega,Vista.sPedido,Vista4.CodigoProducto, Vista3.sDescripcion_Inventario,Vista4.Cantidad,ISNULL(Vista4.Despachado,0) Despachado, 
		ISNULL(VISTA2.Cantidad,0) Total_Desp,Consecutivo,Pedido, (Vista4.Cantidad - Vista4.Despachado) Pendiente, ISNULL(Definitivo,0) Definitivo, ISNULL(Enviado,'false') Enviado
	FROM
	(
		SELECT * FROM EN01 WHERE Consecutivo = @Consecutivos
		
	)Vista
	INNER JOIN
	(
		SELECT IDLinea,IDEntrega,sPedido,CodigoProducto,Cantidad,Despachado, Definitivo,Enviado FROM EN01P
	)Vista4 ON Vista4.IDEntrega = Vista.IDLinea
	LEFT JOIN
	(
		SELECT IDEntrega,Cantidad,sPedido, CodigoProducto FROM EN05
	)VISTA2 ON VISTA2.IDEntrega = Vista.IDEntrega AND VISTA2.CodigoProducto = Vista4.CodigoProducto
	INNER JOIN
	(
		SELECT sCodigo_Producto, sDescripcion_Inventario FROM siawin0..IN04
	)Vista3 ON Vista3.sCodigo_Producto = Vista4.CodigoProducto collate SQL_Latin1_General_CP1_CI_AS
	ORDER BY sPedido ASC
END
IF @Tipo = 'DETALLE_1'
BEGIN
	SELECT '0' IDLineaEN01,'0' IDLinea, '0' IDEntrega, sPedido, sCodigo_Producto CodigoProducto,sDescripcion_Inventario, Cantidad,0 Despachado, 
		0 Total_Desp, @Consecutivos Consecutivo, Pedido, Cantidad Pendiente, 0 Definitivo, 'false' Enviado
	FROM
	(
		SELECT FA01.sPedido, FA00.sFactura Pedido,sCodigo_Producto Codigo_Producto, cCantidad Cantidad
		FROM siawin0..FA01, siawin0..FA00
			WHERE FA00.sPedido = FA01.sPedido AND FA01.sPedido COLLATE SQL_Latin1_General_CP1_CI_AS IN ((SELECT * FROM dbo.fnSplitString(@sPedido,',')))	
	)Vista 
	INNER JOIN
	(
		SELECT sCodigo_Producto, sDescripcion_Inventario FROM siawin0..IN04
	)Vista2 ON Vista2.sCodigo_Producto = Vista.Codigo_Producto
	ORDER BY sPedido ASC	
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE DB08_BLOQUEOS
@usuario varchar(50),
@nombreFormulario varchar(80),
@IdentificadorForm varchar(20),
@accion varchar(20),
@nombreMaquina varchar(20)
AS
SET ANSI_WARNINGS OFF;
BEGIN TRANSACTION
BEGIN TRY

IF @accion = 'BLOQUEAR'
BEGIN
	--SI NO EXISTE EL USUARIO EN LA TABLA SE CREA PARA CREAR DESPUES EL BLOQUEO.
	IF (SELECT COUNT(*) FROM DB08 WHERE NombreUsuario = @usuario AND NombreFormulario = @nombreFormulario AND NombreMaquina = @nombreMaquina) = 0
	BEGIN
		INSERT INTO DB08 VALUES (@usuario,0,@nombreFormulario,@IdentificadorForm,1,GETDATE(),@nombreMaquina)
	END
	--SI SE DESEA BUSCAR SIN IMPORTAR UN IDENTIFICADOR EXTRA DEL FORMULARIO (EN CASO DE INGRESAR UN REGISTRO)
	IF @IdentificadorForm = ''
	BEGIN
		--VERIFICA QUE NINGUN USUARIO TENGA LA PANTALLA BLOQUEADA Y SI ES ASI SOLO ACTUALIZA LA HORA DE ULTIMA CONEXION.
		IF (SELECT COUNT(*) FROM DB08 WHERE bloqueado = 1 AND NombreFormulario = @nombreFormulario) = 0
		BEGIN
			UPDATE DB08 SET Bloqueado = 1, Identificadorformulario = @IdentificadorForm, UltimaConexion = GETDATE(),Activo = 1, NombreMaquina = @nombreMaquina
				WHERE NombreUsuario = @usuario AND NombreFormulario = @nombreFormulario AND NombreMaquina = @nombreMaquina
		END
		ELSE
		BEGIN
			UPDATE DB08 SET UltimaConexion = GETDATE(),Activo = 1
				WHERE NombreUsuario = @usuario AND NombreFormulario = @nombreFormulario AND NombreMaquina = @nombreMaquina
		END
	END
	ELSE
	BEGIN
		--VERIFICA QUE NINGUN USUARIO TENGA LA PANTALLA BLOQUEADA Y SI ES ASI SOLO ACTUALIZA LA HORA DE ULTIMA CONEXION.
		IF (SELECT COUNT(*) FROM DB08 WHERE bloqueado = 1 AND NombreFormulario = @nombreFormulario AND Identificadorformulario = @IdentificadorForm) = 0
		BEGIN
			UPDATE DB08 SET Bloqueado = 1, Identificadorformulario = @IdentificadorForm,UltimaConexion = GETDATE(), Activo = 1, NombreMaquina = @nombreMaquina
				WHERE NombreUsuario = @usuario AND NombreFormulario = @nombreFormulario AND NombreMaquina = @nombreMaquina
		END
		ELSE
		BEGIN
			UPDATE DB08 SET UltimaConexion = GETDATE(),Activo = 1
				WHERE NombreUsuario = @usuario AND NombreFormulario = @nombreFormulario AND NombreMaquina = @nombreMaquina
		END
	END
	
	IF @IdentificadorForm = ''
	BEGIN
		--HACE LA CONSULTA FINAL QUE ENTREGA AL USUARIO RESULTADOS
		SELECT '' ERROR,NombreUsuario BloqueadoPor, Identificadorformulario IDForm, NombreMaquina Maquina
			FROM DB08 WHERE NombreFormulario = @nombreFormulario AND Bloqueado = 1
	END
	ELSE
	BEGIN
		--HACE LA CONSULTA FINAL QUE ENTREGA AL USUARIO RESULTADOS
		SELECT '' ERROR,NombreUsuario BloqueadoPor, Identificadorformulario IDForm, NombreMaquina Maquina
			FROM DB08 WHERE NombreFormulario = @nombreFormulario AND Bloqueado = 1 AND Identificadorformulario = @IdentificadorForm
	END
	
END
ELSE IF @accion = 'DESBLOQUEO' --ELIMINA EL BLOQUEO DE UNA PANTALLA PARA SER ACCESADA POR UL USUARIO DIFERENTE
BEGIN
	UPDATE DB08 SET Bloqueado = 0, UltimaConexion = GETDATE(), Activo = 0 WHERE NombreUsuario = @usuario AND NombreFormulario = @nombreFormulario AND NombreMaquina = @nombreMaquina
	SELECT '' ERROR
END
COMMIT
END TRY
BEGIN CATCH
ROLLBACK
SELECT 'ERROR'ERROR, ERROR_LINE(), ERROR_MESSAGE()
END CATCH


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EN01_FacturasSinAsignar]
	@IDCedi nvarchar(10),
	@IDEmpresa nvarchar(10),
	@FechaInicio varchar(10),
	@FechaFinal varchar(20)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)
DECLARE @Factura varchar(1) = ''
DECLARE @Bodega varchar(2) = '01'

SET @Sql =
	'SELECT Pedido, Factura, Cliente, Asesor,Fecha FROM
	(
		SELECT FA00.sPedido Pedido, sFactura Factura, sNombre_Cliente Cliente, sVendedor, dFecha Fecha 
			FROM '+@siawin+'.FA00, '+@siawin+'.FA01
			WHERE FA01.sPedido = FA00.sPedido AND FA00.sPedido collate SQL_Latin1_General_CP1_CI_AS NOT IN (SELECT sPedido FROM EN01) 
			AND dFecha BETWEEN ''' + @FechaInicio + ''' AND ''' + @FechaFinal + ''' AND sFactura <> ''' + @Factura + ''' AND FA01.sBodega = ''' + @Bodega + ''' 
			GROUP BY FA00.sPedido, sFactura, sNombre_Cliente, sVendedor, dFecha
	)Factura
	INNER JOIN
	(
		SELECT sCodigo, sDescripcion Asesor FROM '+@siawin+'.cc20
	)Vendedor ON Vendedor.sCodigo = Factura.sVendedor '

EXECUTE (@Sql) 



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----SP EN01_DOCUMENTOS-----------------
CREATE PROCEDURE [dbo].[EN01_Documentos]
@IDEntrega int, --IDLinea de la entrega
@archivo  NVARCHAR(MAX),
@nombreArchivo varchar(200),
@extension varchar(5),
@Tipo varchar(1)
AS
SET ANSI_WARNINGS OFF;

	IF @Tipo = '1'
		BEGIN
			INSERT INTO EN01_Documento VALUES (@IDEntrega,CONVERT(varbinary(MAX),@archivo), @nombreArchivo,@extension)
		END
	ELSE IF @Tipo = '2'
		BEGIN
			UPDATE EN01_Documento SET archivo = CONVERT(varbinary(MAX),@archivo), nombreArchivo = @nombreArchivo, extension = @extension WHERE IDEntrega = @IDEntrega
		END
	ELSE IF @Tipo = '3'
		BEGIN
			DELETE FROM EN01_Documento WHERE IDEntrega = @IDEntrega
		END
	ELSE IF @Tipo = '4'
		BEGIN
			SELECT IDEntrega,archivo,nombreArchivo,extension FROM EN01_Documento WHERE IDEntrega = @IDEntrega
		END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[DB06_update]
	-- Add the parameters for the stored procedure here
	@IDLinea int,
           @Usuario char(20),
           @Consecutivo nchar(20),
           @UsuarioIngreso nchar(20),
           @UsuarioModifico nchar(20),
           @FechaIngreso datetime,
           @FechaModifico datetime,
           @CActual nchar(20),
           @Modulo nchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
update DB06 set 
           Usuario=@Usuario,
           Consecutivo=@Consecutivo, 
           UsuarioIngreso=@UsuarioIngreso,
           UsuarioModifico=@UsuarioModifico,
           FechaIngreso=@FechaIngreso, 
           FechaModifico=@FechaModifico, 
           CActual=@CActual, 
           Modulo=@Modulo where IDLinea = @IDLinea

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[DB06_SelectModuloConsecutivoedit]
	@Usuario char(20),
	@Modulo  char(30)
	
	AS
BEGIN
	SET NOCOUNT ON;

SELECT * FROM DB06 WHERE Consecutivo=@Usuario AND Modulo = @Modulo


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DB06_SelectModuloConsecutivo]
	@Usuario char(20),
	@Modulo  char(30)
	
	AS
BEGIN
	SET NOCOUNT ON;

SELECT * FROM DB06 WHERE Usuario=@Usuario AND Modulo = @Modulo


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DB06_insert]
	-- Add the parameters for the stored procedure here
           @Usuario char(20),
           @Consecutivo nchar(20),
           @UsuarioIngreso nchar(20),
           @UsuarioModifico nchar(20),
           @FechaIngreso datetime,
           @FechaModifico datetime,
           @CActual nchar(20),
           @Modulo nchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
INSERT INTO DB06 VALUES(
           @Usuario,
           @Consecutivo, 
           @UsuarioIngreso,
           @UsuarioModifico,
           @FechaIngreso, 
           @FechaModifico, 
           @CActual, 
           @Modulo)

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[DB06_delete]
	-- Add the parameters for the stored procedure here
	@IDLinea int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
delete DB06 where IDLinea = @IDLinea

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CP01_BuscarProveedor]
@sCodigo_Proveedor varchar(10),
@sNombre varchar(10),
@sCedulaJuridica varchar(10),
@Tipo varchar(10),
@UsuarioIngreso varchar(30),
@MesAbastecimiento int,
@MesTransito DECIMAL(18,2),
@Estado DECIMAL(18,2)

as 

IF RTRIM(@Tipo) = 'BUSCAR'
BEGIN 

SELECT TOP 50 sCodigo_Proveedor, sNombre , sCedulaJuridica  FROM siawin0..CP01 
WHERE 
sCodigo_Proveedor LIKE  @sCodigo_Proveedor + '%' AND
sNombre LIKE  @sNombre + '%' AND
sCedulaJuridica LIKE  @sCedulaJuridica + '%' 

END
ELSE IF RTRIM(@Tipo) = 'INSERT'
BEGIN 

if( SELECT COUNT(*) FROM RT01 where CodigoProveedor = @sCodigo_Proveedor) =0
begin
INSERT INTO RT01 VALUES(
@sCodigo_Proveedor , @sNombre, @UsuarioIngreso, GETDATE(), @MesAbastecimiento,@MesTransito, 0)
 end
 else
 begin
UPDATE RT01 SET
Estado  = 1 
where 
CodigoProveedor = @sCodigo_Proveedor
 end

--SELECT * FROM RT01 

END 

ELSE IF RTRIM(@Tipo) = 'UPDATE'
BEGIN 

UPDATE RT01 SET
MesAbastecimiento =  @MesAbastecimiento,
MesTransito = @MesTransito
where 
CodigoProveedor = @sCodigo_Proveedor

END 
ELSE IF RTRIM(@Tipo) = 'DELETE'
BEGIN 

UPDATE RT01 SET
Estado = 0 
where 
CodigoProveedor = @sCodigo_Proveedor

--DELETE RT01 WHERE CodigoProveedor = @sCodigo_Proveedor

END 
ELSE IF RTRIM(@Tipo) = 'SELECT'
BEGIN 

SELECT CodigoProveedor, NombreProveedor, MesTransito, MesAbastecimiento FROM RT01
WHERE Estado = 1
 GROUP BY CodigoProveedor, NombreProveedor ,MesTransito, MesAbastecimiento

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[CED05_Transaccion]
@Movimiento nchar(50),
@IDCedi nchar(50),
@IDEmpresa nchar(50),
@Tipo nchar(50)


AS
declare  @Sql    AS VARCHAR(MAX)
SET @Sql =   
' 
IF SUBSTRING(''' + RTRIM(@Movimiento) + ''',1,2) = ''50''
BEGIN
SELECT CASE WHEN COUNT(*) >= 2 THEN 1 ELSE 0 END FROM CED05 WHERE Transaccion = ''' + RTRIM(@Movimiento) + ''' AND IDCedi = '''+RTRIM(@IDCedi)+ ''' AND IDEmpresa = '''+
RTRIM(@IDEmpresa)+ ''' AND Tipo = '''+RTRIM(@Tipo) + ''' 
END

ELSE

BEGIN
SELECT COUNT(*) FROM CED05 WHERE Transaccion = ''' + RTRIM(@Movimiento) + ''' AND IDCedi = '''+RTRIM(@IDCedi)+ ''' AND IDEmpresa = '''+
RTRIM(@IDEmpresa)+ ''' AND Tipo = '''+RTRIM(@Tipo) + ''' 
END
' 

EXEC (@Sql)


SELECT * FROM CED05

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CED05_FacturasProcesadas]
@Tipo varchar(20),
@IDCedi nvarchar(10),
@IDEmpresa nvarchar(10),
@FechaDesde nvarchar(20),
@FechaHasta varchar(20)
AS

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@IDEmpresa AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)


IF (SELECT COUNT(*) FROM CEM0.sys.tables WHERE name = 'EN01') > 0
BEGIN
	SET @Sql = 'SELECT RTRIM(Factura.sPedido) NumPedido, RTRIM(sFactura) NumFactura, RTRIM(sNombre_Cliente) Cliente, RTRIM(NombreCedi) Cedi, RTRIM(NombreEmpresa) Empresa,
	RTRIM(FechaIngreso) Fecha, RTRIM(QuienIngreso) Usuario, ''' + @FechaDesde + ''' Fecha2,''' + @FechaHasta + ''' Fecha3, Asesor, Chofer, LugarEntrega, Notas, Consecutivo,
	ISNULL(Duracion,0)Duracion, ISNULL(CostoDuracion,0)CostoDuracion, ISNULL(Distancia,0)Distancia, ISNULL(CostoDistancia,0)CostoDistancia, ISNULL(CostoFlete,0) CostoFlete, Sin_Problemas, CEDI, Tienda, Proveedor, CodigosProductos, Cliente, Observaciones ' 
END
ELSE
BEGIN
	SET @Sql = 'SELECT RTRIM(Factura.sPedido) NumPedido, RTRIM(sFactura) NumFactura, RTRIM(sNombre_Cliente) Cliente, RTRIM(NombreCedi) Cedi, RTRIM(NombreEmpresa) Empresa,
	RTRIM(FechaIngreso) Fecha, RTRIM(QuienIngreso) Usuario, ''' + @FechaDesde + ''' Fecha2,''' + @FechaHasta + ''' Fecha3, Asesor '  
END

SET @Sql = @Sql +
	'FROM 
	(
		SELECT CED05.IDCedi,CED05.IDEmpresa, IDAlisto, CED05.QuienIngreso, Tipo, Transaccion, CED00.NombreCedi, CED01.NombreEmpresa,CED05.FechaIngreso
			FROM CED05, CED00, CED01
			WHERE CED00.IDCedi = CED05.IDCedi AND 
				  CED01.IDEmpresa = CED05.IDEmpresa AND 
				  Tipo = ''' + @Tipo +''' AND CED05.IDCedi = ' + @IDCedi + ' AND CED05.IDEmpresa = ' + @IDEmpresa + ' AND
				  CED05.FechaIngreso BETWEEN ''' + @FechaDesde + ''' AND ''' + @FechaHasta + ' 23:59:59''
	)Alisto
	LEFT JOIN
	(
		SELECT sPedido, sFactura,sNombre_Cliente,sVendedor FROM '+@siawin+'.FA00
	)Factura ON Factura.sPedido = Alisto.Transaccion COLLATE SQL_Latin1_General_CP1_CI_AS
	LEFT JOIN
	(
		SELECT sCodigo, sDescripcion Asesor FROM '+@siawin+'.cc20
	)Vendedor ON Vendedor.sCodigo = Factura.sVendedor '

IF (SELECT COUNT(*) FROM CEM0.sys.tables WHERE name = 'EN01') > 0
BEGIN
SET @Sql = @Sql +
	'
	LEFT JOIN
	(
		SELECT Chofer, LugarEntrega, Notas, Consecutivo, sPedido, IDLinea, ISNULL(Duracion, 0) Duracion, ISNULL(CostoDuracion, 0) CostoDuracion, ISNULL(Distancia, 0) Distancia, 
			ISNULL(CostoDistancia, 0) CostoDistancia, ISNULL(CostoFlete, 0) CostoFlete, ISNULL(Sin_Problemas, '+'''X'''+') Sin_Problemas, CEDI, Tienda, Proveedor, CodigosProductos, Cliente, Observaciones
		FROM
		(
			SELECT sAsignado Chofer, sLugar LugarEntrega, Consecutivo, sPedido, IDLinea,
			CASE WHEN Tipo_Entrega = '+ '''Cliente''' + ' THEN '+'''ENTREGA EN SITIO'''+' WHEN Tipo_Entrega = '+'''Tienda'''+' THEN '+'''RETIRAN EN TIENDA'''+' END Notas FROM EN01
		)Entregas
		LEFT JOIN
		(
			SELECT IDEntrega, Duracion, (CAST((CASE WHEN Duracion = '''' THEN 0 ELSE Duracion END) AS DECIMAL(13,2)) * 0.25) CostoDuracion, Instalacion Distancia, 
				(CAST(CASE WHEN Instalacion = '''' THEN 0 ELSE Instalacion END AS DECIMAL(13,2)) * 1.76) CostoDistancia, 
				((CAST((CASE WHEN Duracion = '''' THEN 0 ELSE Duracion END) AS DECIMAL(13,2)) * 0.25) + (CAST(CASE WHEN Instalacion = '''' THEN 0 ELSE Instalacion END AS DECIMAL(13,2)) * 1.76)) CostoFlete  
			FROM EN02
		)Costos ON Costos.IDEntrega = Entregas.IDLinea
		LEFT JOIN
		(
			SELECT Vista1.IDEntrega, CASE WHEN Problemas > 0 THEN '+''' '''+' ELSE '+'''X'''+' END Sin_Problemas, CEDI, Tienda, Proveedor, CodigosProductos, Cliente, Observaciones
			FROM
			(
				SELECT COUNT(*) Problemas, IDEntrega FROM EN03 GROUP BY IDEntrega
			)Vista1
			LEFT JOIN
			(
				SELECT '+'''X'''+' CEDI, IDEntrega  FROM EN03 WHERE Categoria = '+'''CEDI'''+' AND Subcategoria <> ''' + '-1' + '''
			)Vista2 ON Vista2.IDEntrega = Vista1.IDEntrega
			LEFT JOIN
			(
				SELECT '+'''X'''+' Tienda, IDEntrega  FROM EN03 WHERE Categoria = '+'''Tienda'''+' AND Subcategoria <> ''' + '-1' + '''
			)Vista3 ON Vista3.IDEntrega = Vista1.IDEntrega
			LEFT JOIN
			(	
				SELECT '+'''X'''+' Proveedor, IDEntrega  FROM EN03 WHERE Categoria = '+'''Proveedor'''+' AND Subcategoria <> ''' + '-1' + '''
			)Vista4 ON Vista4.IDEntrega = Vista1.IDEntrega
			LEFT JOIN
			(
				SELECT '+'''X'''+' Cliente, IDEntrega FROM EN03 WHERE Categoria = '+'''Cliente'''+' AND Subcategoria <> ''' + '-1' + '''
			)Vista5 ON Vista5.IDEntrega = Vista1.IDEntrega
			LEFT JOIN
			(
				SELECT Subcategoria2 Observaciones, IDEntrega FROM EN03 WHERE Categoria = '+'''Cliente'''+' 
			)Vista6 ON Vista6.IDEntrega = Vista1.IDEntrega
			LEFT JOIN
			(	
				SELECT Subcategoria2 CodigosProductos, IDEntrega  FROM EN03 WHERE Categoria = '+'''Proveedor'''+'
			)Vista7 ON Vista7.IDEntrega = Vista1.IDEntrega
		)Calidad ON Calidad.IDEntrega = Entregas.IDLinea
	)Entregas ON Entregas.sPedido = Alisto.Transaccion COLLATE SQL_Latin1_General_CP1_CI_AS	'
END
	
BEGIN TRANSACTION 
BEGIN TRY
EXECUTE (@Sql) 
commit
END TRY
BEGIN CATCH
rollback
SELECT ERROR_MESSAGE();
END CATCH
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT * FROM siawin0..IN00 
CREATE procedure [dbo].[CED04_SELECT] 
@IDCedi nvarchar(50)
--@Empresas int
AS

BEGIN
	SET NOCOUNT ON;
	
BEGIN TRANSACTION
BEGIN TRY

SELECT RTRIM(Estante) Estante
FROM CED04
WHERE CED04.IDCedi =@IDCedi

COMMIT
END TRY
BEGIN CATCH
ROLLBACK
SELECT ERROR_MESSAGE();
END CATCH

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT * FROM siawin0..IN00 
CREATE procedure [dbo].[CED02_SELECT] 
@IDCedi nvarchar(50),
@Empresas int
as
begin

DECLARE @siawin NCHAR(18)
SET @siawin=(SELECT siawin FROM CED01 WHERE IDEmpresa=@Empresas AND IDCedi=@IDCedi)     
declare  @Sql    AS VARCHAR(MAX)

SET @Sql =   
'SELECT RTRIM(NBodega)+ cast(''-'' as char(3))+ IN00.sDescripcion collate SQL_Latin1_General_CP1_CI_AS NombreBodega ,IDBodega,RTRIM(NBodega) NBodega
FROM CED02,'+@siawin+'.IN00 
WHERE CED02.NBodega = IN00.sCodigo  collate SQL_Latin1_General_CP1_CI_AS AND
CED02.IDCedi ='+@IDCedi+' AND (CED02.IDEmpresa='+CAST(@Empresas AS nvarchar(50))+')'

print @Sql

BEGIN TRANSACTION
BEGIN TRY
EXECUTE (@Sql) 
COMMIT
END TRY
BEGIN CATCH
ROLLBACK
END CATCH
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE DB09_DATOS
@NombreUsuario varchar(50),
@Accion varchar(20),
@Descripcion varchar(200),
@Formulario varchar(100),
@Fecha datetime,
@TIPO varchar(10)
AS
SET ANSI_WARNINGS OFF;
BEGIN TRANSACTION
BEGIN TRY
	IF @TIPO = 'INSERTAR'
	BEGIN
		INSERT INTO DB09 VALUES (@NombreUsuario,@Accion,@Descripcion,@Formulario,@Fecha)
		SELECT '' ERROR
	END
	ELSE
	BEGIN
		SELECT * FROM DB09 WHERE Formulario = @Formulario
	END
COMMIT
END TRY
BEGIN CATCH
ROLLBACK
SELECT 'ERROR'ERROR, ERROR_LINE(), ERROR_MESSAGE()
END CATCH
	
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE EN00_Version
AS
	SELECT VersionSistema FROM EN00

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE EN00_Configuracion
	@IDLinea int,
	@Fecha varchar(20),
	@Fecha2 varchar(20),
	@EntregaTienda int,
	@EntregaSitio int,
	@TempSale int,
	@Usuario varchar(50),
	@TIPO INT
AS
IF @TIPO = 1
BEGIN
	IF (SELECT COUNT(*) FROM EN00_Config WHERE Fecha = @Fecha) = 0
	BEGIN
		INSERT INTO EN00_Config VALUES (@Fecha,@EntregaTienda,@EntregaSitio,@TempSale,@Usuario,'',GETDATE(),'1900-01-01')
	END
	ELSE
	BEGIN
		UPDATE EN00_Config SET EntregaSitio = @EntregaSitio, EntregaTienda = @EntregaTienda, TempSale = @TempSale, QuienModifico = @Usuario, FechaModifico = GETDATE()
			WHERE Fecha = @Fecha
	END
	SELECT 'EXITO'
END
ELSE IF @TIPO = 2
BEGIN
	SELECT Fecha,EntregaTienda,EntregaSitio,TempSale FROM EN00_Config WHERE Fecha BETWEEN @Fecha AND @Fecha2
END
ELSE IF @TIPO = 3
BEGIN
SELECT ISNULL(Cantidad,0)Cantidad,ISNULL(dFecha,@Fecha) dFecha,ISNULL(EntregaTienda,-1)EntregaTienda,ISNULL(Fecha,@Fecha) Fecha FROM
(
	SELECT COUNT(*) Cantidad,dFecha 
		FROM EN01
		WHERE dFecha = @Fecha AND Tipo_Entrega = 'Tienda'
	GROUP BY EN01.dFecha
)VISTA
LEFT JOIN
(
	SELECT EN00.EntregaTienda,EN00.Fecha FROM EN00_Config EN00
)VISTA1 ON VISTA1.Fecha = VISTA.dFecha
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DB071_SelectModuloConsecutivo]
	AS
BEGIN
	SET NOCOUNT ON;

SELECT DISTINCT MODULO FROM DB07 



END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DB07_SelectModuloConsecutivo]
	AS
BEGIN
	SET NOCOUNT ON;

SELECT * FROM DB07 



END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GD03_update]
	@ID char(3),
	@Departamento char(40),
	@FechaIngreso datetime,
	@QuienIngreso char (20),
	@FechaModifico datetime,
	@QuienModifico char(20)
AS
BEGIN
	SET NOCOUNT ON;
	
	
	UPDATE GD03 SET
     Departamento=@Departamento,
     FechaIngreso=@FechaIngreso,
     QuienIngreso=@QuienIngreso,
     FechaModifico=@FechaModifico,
     QuienModifico=@QuienModifico
WHERE ID =@ID
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GD03_insert]
	@ID char(3),
	@Departamento char(40),
	@FechaIngreso datetime,
	@QuienIngreso char (20),
	@FechaModifico datetime,
	@QuienModifico char(20)
AS
BEGIN
	SET NOCOUNT ON;
	
	
	insert INTO GD03 VALUES(
	 @ID,
     @Departamento,
     @FechaIngreso,
     @QuienIngreso,
     @FechaModifico,
     @QuienModifico
)
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GD03_delete]
	@ID char(3)
AS
BEGIN
	SET NOCOUNT ON;
	
	
	DELETE GD03 WHERE ID =@ID
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[FA00_Busqueda]
@Pedido varchar(50),
@Cliente varchar(50),
@Tipo varchar(20),
@FacturaPrin varchar(50),
@Fecha varchar(40)
AS

	IF @Tipo = 'BUSQUEDA'
		BEGIN
			SELECT TOP 100 sPedido Pedido, sNombre_Cliente Cliente, dFecha,dVencimiento, sFactura NumFactura
				FROM siawin0..FA00 WHERE FA00.bEstado = 1 AND sFactura LIKE @Pedido + '%' AND sNombre_Cliente LIKE @Cliente + '%' AND sFactura <> '' AND dFecha LIKE @Fecha + '%'
				ORDER BY FA00.dFecha DESC
		END
	ELSE IF @Tipo = 'DETALLE'
		BEGIN			
			SELECT * FROM (
				SELECT FA00.sPedido,FA00.sNombre_Cliente,FA00.sDireccion_1, FA00.sDireccion_2, FA00.dFecha, FA00.dVencimiento,FA00.sTelefono,FA00.sVendedor,
						FA01.sCodigo_Producto,FA01.sDescripcion,FA01.cCantidad,FA00.sFactura NumFactura,FA00.sCodigo_Cliente
					FROM siawin0..FA00, siawin0..FA01
					WHERE FA00.sPedido = FA01.sPedido AND FA00.sPedido collate SQL_Latin1_General_CP1_CI_AS IN ((SELECT * FROM dbo.fnSplitString(@Pedido,',')))		
			)Factura
			INNER JOIN
			(
				SELECT sCodigo, sDescripcion Nom_Vendedor FROM siawin0..cc20
			)Vendedor ON Vendedor.sCodigo = Factura.sVendedor
			
		END
	ELSE IF @Tipo = 'REPORTE'
		BEGIN
			SELECT TOP 1 * FROM (
				SELECT EN01.IDLinea, EN01.dFecha Fecha, EN01.sCliente NombreCliente, EN01.Pedido, EN01.sLugar Lugar, FA00.sTelefono Tel, FA00.sFactura, FA00.sVendedor,EN01.Notas,EN01.Ruta
					FROM EN01, siawin0..FA00
					WHERE EN01.sPedido = FA00.sPedido COLLATE SQL_Latin1_General_CP1_CI_AS AND EN01.IDLinea = @Pedido
				)Factura
				INNER JOIN
				(
					SELECT sCodigo, sDescripcion Asesor FROM siawin0..cc20
				)Vendedor ON Vendedor.sCodigo = Factura.sVendedor
		END
	ELSE IF @Tipo = 'BUSQUEDA_SELECCION'
		BEGIN
			SELECT TOP 100 sPedido Pedido, sNombre_Cliente Cliente, dFecha,dVencimiento, sFactura NumFactura, 'false' Seleccionar
				FROM siawin0..FA00 WHERE FA00.bEstado = 1 AND sFactura LIKE @Pedido + '%' AND sFactura <> '' AND sFactura <> @FacturaPrin
		END
	ELSE IF @Tipo = 'SELECCION'
		BEGIN
			SELECT TOP 100 sPedido Pedido, sNombre_Cliente Cliente, dFecha,dVencimiento, sFactura NumFactura, 'false' Seleccionar
				FROM siawin0..FA00 WHERE FA00.bEstado = 1 AND sFactura collate SQL_Latin1_General_CP1_CI_AS IN ((SELECT * FROM dbo.fnSplitString(@Pedido,',')))
					 AND sCodigo_Cliente LIKE @Cliente + '%' AND sFactura <> '' AND sFactura <> @FacturaPrin
		END
	ELSE IF (@Tipo = 'CONSECUTIVO')
		BEGIN
			BEGIN TRANSACTION
			BEGIN TRY				
					--UPDATE EN00 SET Consecutivo = Consecutivo + 1, UsuarioGenero = @user, FechaUltimaGeneracion = GETDATE()
					SELECT (Consecutivo + 1) Consecutivo FROM EN00
				COMMIT
			END TRY
			BEGIN CATCH
				ROLLBACK
			END CATCH			
		END
	ELSE IF (@Tipo = 'CONSECUTIVO_1')
		BEGIN
			BEGIN TRANSACTION
			BEGIN TRY				
					UPDATE EN00 SET Consecutivo = Consecutivo + 1, FechaUltimaGeneracion = GETDATE()
					SELECT Consecutivo FROM EN00
				COMMIT
			END TRY
			BEGIN CATCH
				ROLLBACK
			END CATCH			
		END
	ELSE IF @Tipo = 'DETALLE_TOTAL'
		BEGIN			
			SELECT FA00.sFactura NumFactura,FA01.sCodigo_Producto,FA01.sDescripcion,FA01.cCantidad
					FROM siawin0..FA00, siawin0..FA01
					WHERE FA00.sPedido = FA01.sPedido AND FA00.sPedido collate SQL_Latin1_General_CP1_CI_AS IN ((SELECT * FROM dbo.fnSplitString(@Pedido,',')))
		END
	ELSE IF @Tipo = 'REPORTE_GENERAL'
		BEGIN
			SELECT * FROM (
				SELECT EN01.IDLinea, EN01.dFecha Fecha, EN01.sCliente NombreCliente, EN01.Pedido, EN01.sLugar Lugar, FA00.sTelefono Tel, FA00.sFactura, FA00.sVendedor,EN01.Notas,EN01.Ruta
					FROM EN01, siawin0..FA00
					WHERE EN01.sPedido = FA00.sPedido COLLATE SQL_Latin1_General_CP1_CI_AS AND EN01.Consecutivo = @Pedido
				)Factura
				INNER JOIN
				(
					SELECT sCodigo, sDescripcion Asesor FROM siawin0..cc20
				)Vendedor ON Vendedor.sCodigo = Factura.sVendedor
		END
	ELSE IF @Tipo = 'REPORTE_LISTA'
		BEGIN
				SELECT Consecutivo,Pedido,sCliente,sLugar,sHora,sFactura,Vendedor.Asesor,Ruta,dFecha,Tipo_Entrega,Notas collate Modern_Spanish_CI_AS Detalle,Estado FROM 
				(
					SELECT EN01.Consecutivo, EN01.Pedido, EN01.sCliente,EN01.sLugar,EN01.sHora,FA00.sFactura, FA00.sVendedor,EN01.Ruta, EN01.dFecha, EN01.Tipo_Entrega, EN01.Notas,
						CASE WHEN EN01.cEstado = 0 THEN 'Pendiente' WHEN EN01.cEstado = 1 THEN 'Aplicado' WHEN EN01.cEstado = 2 THEN 'En Ruta' ELSE 'Entregado' END Estado
						FROM EN01, siawin0..FA00
						WHERE EN01.sPedido = FA00.sPedido COLLATE SQL_Latin1_General_CP1_CI_AS AND EN01.dFecha = @Fecha
				)Factura
				LEFT JOIN
				(
					SELECT sCodigo, sDescripcion Asesor FROM siawin0..cc20
				)Vendedor ON Vendedor.sCodigo = Factura.sVendedor
				UNION 
					SELECT EN01.Consecutivo, EN01.Pedido, EN01.UsuarioDigita,EN01.sLugar,EN01.sHora,IN13.sNumero_Movimiento, '' Asesor,EN01.Ruta, EN01.dFecha, EN01.Tipo_Entrega, IN13.sDetalle,
						CASE WHEN EN01.cEstado = 0 THEN 'Pendiente' WHEN EN01.cEstado = 1 THEN 'Aplicado' WHEN EN01.cEstado = 2 THEN 'En Ruta' ELSE 'Entregado' END Estado
						FROM EN01, siawin0..IN13
						WHERE EN01.sPedido = IN13.sNumero_Movimiento COLLATE SQL_Latin1_General_CP1_CI_AS AND EN01.dFecha = @Fecha
		END
	ELSE IF @Tipo = 'REPORTE_GENERAL_1'
		BEGIN
			SELECT * FROM (
				SELECT EN01.IDLinea, EN01.dFecha Fecha, EN01.sCliente NombreCliente, EN01.Pedido, EN01.sLugar Lugar, FA00.sTelefono Tel, FA00.sFactura, FA00.sVendedor,EN01.Notas,EN01.Ruta,EN01.Consecutivo
					FROM EN01, siawin0..FA00
					WHERE EN01.sPedido = FA00.sPedido COLLATE SQL_Latin1_General_CP1_CI_AS AND EN01.Consecutivo IN (SELECT * FROM fnSplitString(@Pedido,',')) AND Tipo_Entrega = 'Tienda'
				)Factura
				INNER JOIN
				(
					SELECT sCodigo, sDescripcion Asesor FROM siawin0..cc20
				)Vendedor ON Vendedor.sCodigo = Factura.sVendedor
		END
		ELSE IF @Tipo = 'BUSQUEDA_TRAS'
		BEGIN
			SELECT TOP 100 sNumero_Movimiento,sNumero_Documento,sCodigo_Movimiento,sBodega_Sale,sBodega_Entra,sDetalle,bConfirmado 
				FROM siawin0..IN13 WHERE sNumero_Movimiento LIKE @Pedido + '%' AND sNumero_Documento LIKE @Cliente + '%' AND sCodigo_Movimiento = '03'
		END
	ELSE IF @Tipo = 'FAC_BUSCAR'
		BEGIN
			SELECT top 100 Consecutivo, Pedido NumFactura, sPedido, sCliente Cliente, CONVERT(VARCHAR(10),dFecha,103) dFecha, dFecha FechaCal, Tipo_Entrega TipoEntrega, sHora Horario
				FROM EN01
				WHERE Pedido LIKE @FacturaPrin + '%' AND sPedido LIKE @Pedido + '%' AND sCliente LIKE @Cliente + '%' AND dFecha LIKE @Fecha + '%'
		END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F902_SiguienteContrato]
@TipoEmpresa varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
Declare @ConsecutivoS int = (select MAX(Consecutivo)+1 from F902 where TipoEmpresa = 'eh')
select
(SELECT  SUBSTRING(Convert(Char(10), GETDATE() , 101),1,2))+' - '+
(SELECT  SUBSTRING(Convert(Char(10), GETDATE() , 101),4,2)) +' - '+
cast(@Consecutivos AS VARCHAR(50)) +' - '+
SUBSTRING(LEFT(GETDATE(),12),10,11)



END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F900_update]
@Consecutivo int,
@Ncontrato varchar(20),
@NProcess int,
@TipoEmpresa varchar(10),
@CodCliente varchar (10),
@NombreCliente varchar(75),
@Asesor varchar(50),
@SubContratos int,
@Descripcion varchar (200),
@UsuarioIngreso varchar(20),
@UsuarioModifico varchar(20),
@dFechaIngreso datetime,
@dFechaModifico datetime,
@Estado int

AS
BEGIN TRY
BEGIN TRANSACTION
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


UPDATE F900 SET
Ncontrato=@Ncontrato,
TipoEmpresa=@TipoEmpresa,
NProcess=@NProcess,
CodCliente=@CodCliente,
NombreCliente=@NombreCliente,
Asesor=@Asesor,
SubContratos=@SubContratos,
Descripcion=@Descripcion,
UsuarioIngreso=@UsuarioIngreso,
UsuarioModifico=@UsuarioModifico,
dFechaIngreso=@dFechaIngreso,
dFechaModifico=@dFechaModifico,
Estado=@Estado
WHERE
Consecutivo = @Consecutivo 


COMMIT
END TRY
BEGIN CATCH
ROLLBACK
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F900_TipoEmpresaUsuario]
@Usuario varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select Distinct RTRIM(TipoEmpresa) TipoEmpresa, Estado from F903 
WHERE Usuario = @Usuario 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F900_SubContratos]
@NContrato varchar(20),
@TipoEmpresa varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

select * from F901 where NContrato = @NContrato and TipoEmpresa = @TipoEmpresa ORDER
BY SubContrato ASC

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F900_insert]
@Consecutivo int,
@Ncontrato varchar(20),
@NProcess int,
@TipoEmpresa varchar(10),
@CodCliente varchar (10),
@NombreCliente varchar(75),
@Asesor varchar(50),
@SubContratos int,
@Descripcion varchar (200),
@UsuarioIngreso varchar(20),
@UsuarioModifico varchar(20),
@dFechaIngreso datetime,
@dFechaModifico datetime,
@Estado int

AS
BEGIN TRY
BEGIN TRANSACTION
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Declare @ConsecutivoS int = (select MAX(Consecutivo)+1 from F902 where TipoEmpresa = @TipoEmpresa)
DECLARE @NCONTRATOASIGNADO VARCHAR(20) =(SELECT(CAST((SELECT  SUBSTRING(Convert(Char(2), GETDATE() , 101),1,2))AS VARCHAR(2))+ '-'+
CAST(RTRIM((SELECT  SUBSTRING(Convert(Char(10), GETDATE() , 101),4,2)))AS VARCHAR(2))+ '-'+
CAST(@ConsecutivoS AS VARCHAR(10)) + '-'+CAST((SELECT (SUBSTRING(LEFT(GETDATE(),12),10,11)))AS VARCHAR(2)) 
))


--Declare @ConsecutivoS int = (select MAX(Consecutivo)+1 from F902 where TipoEmpresa = 'EH')
--DECLARE @NCONTRATOASIGNADO VARCHAR(20) =(SELECT(CAST((SELECT  SUBSTRING(Convert(Char(2), GETDATE() , 101),1,2))AS VARCHAR(2))+ '-'+
--CAST(RTRIM((SELECT  SUBSTRING(Convert(Char(10), GETDATE() , 101),4,2)))AS VARCHAR(2))+ '-'+
--CAST(@ConsecutivoS AS VARCHAR(10)) + '-'+CAST((SELECT (SUBSTRING(LEFT(GETDATE(),12),10,11)))AS VARCHAR(2)) 
--))
-- (SELECT isnull(MAX(SubContrato),0) FROM F901 WHERE NContrato = 
--@NCONTRATOASIGNADO )



INSERT INTO F900 VALUES(
@NCONTRATOASIGNADO,
@TipoEmpresa,
@NProcess,
@CodCliente,
@NombreCliente,
@Asesor,
@SubContratos,
@Descripcion,
@UsuarioIngreso,
@UsuarioModifico,
@dFechaIngreso,
@dFechaModifico,
@Estado)
UPDATE F902 SET
Consecutivo = @ConsecutivoS 
WHERE TipoEmpresa = @TipoEmpresa


--Declare @ConsecutivoS int = (select MAX(Consecutivo)+1 from F902 where TipoEmpresa = 'EH')
--DECLARE @NCONTRATOASIGNADO VARCHAR(20) =(SELECT(CAST((SELECT  SUBSTRING(Convert(Char(2), GETDATE() , 101),1,2))AS VARCHAR(2))+ '-'+
--CAST(RTRIM((SELECT  SUBSTRING(Convert(Char(10), GETDATE() , 101),4,2)))AS VARCHAR(2))+ '-'+
--CAST(@ConsecutivoS AS VARCHAR(10)) + '-'+CAST((SELECT (SUBSTRING(LEFT(GETDATE(),12),10,11)))AS VARCHAR(2)) 
--))

--SELECT * FROM F901 

DECLARE @LINEA INT =
(SELECT isnull(MAX(SubContrato),0) FROM F901 WHERE NContrato = 
@NCONTRATOASIGNADO )

--SELECT * FROM F901 

WHILE @LINEA < @SubContratos 
BEGIN 
INSERT INTO F901 values(
@NCONTRATOASIGNADO,
@NProcess,
@TipoEmpresa,
@LINEA+1,
@Estado)
SET @LINEA = @LINEA + 1
end

SELECT(SELECT @NCONTRATOASIGNADO)
COMMIT

END TRY
BEGIN CATCH
select ERROR_LINE(),ERROR_MESSAGE();
ROLLBACK
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F800_insert]
@IDLinea int,
@CodProyecto int,
@Movimiento varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	INSERT INTO F800 VALUES(
	@CodProyecto,
	@Movimiento)
	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--drop table EN04
--CREATE TABLE EN04
--(
--	IdLinea int identity,
--	Consecutivo varchar(10),
--	sPedido varchar(20),
--	CodigoProducto varchar(20),
--	Recibido varchar(1),
--	Hora varchar(20),
--	Transportista varchar(50),
--	Fecha datetime,
--	NumDesp int,
--	QuienIngreso varchar(50),
--	QuienModifico varchar(50),
--	FechaIngreso datetime,
--	FechaModifico datetime
--)

--GO

--drop table EN04_Reprogramado
--CREATE TABLE EN04_Reprogramado
--(
--	IDLinea int Identity,
--	Consecutivo varchar(10),
--	ConsecutivoAntiguo varchar(10),
--	sPedido varchar(15),
--	CodigoProd varchar(20),
--	FechaReprogramado datetime
--)

--GO

CREATE PROCEDURE [dbo].[Entregas_Tienda]
	@IdLinea int,
	@Consecutivo varchar(10),
	@sPedido varchar(20),
	@CodigoProducto varchar(20),
	@Cantidad decimal(13,2),
	@Hora varchar(20),
	@Transportista varchar(50),
	@Fecha datetime,
	@Fecha2 datetime,	
	@Usuario varchar(50),
	@sLugar varchar(20),
	@Consecutivo2 varchar(10),
	@Definitivo decimal(13,2),
	@Tipo int
AS 

IF @Tipo = 1 --busqueda
BEGIN	
	SELECT Cantidad,CodigoProducto,sdescripcion_Inventario,Despachado,Pendiente,IDLinea,Definitivo,Pedido,Vista.sPedido, IDEN01,IDEntrega,sLugar,
		sNombre_Cliente,Nom_Vendedor, sAsignado,dFecha,Ruta,Hora,Consecutivo,Enviado,'false' Seleccione
	FROM
	(
		SELECT IDEN01,Pedido,Entrega.sPedido,sLugar,sNombre_Cliente, sAsignado, dFecha, Ruta,Hora,Consecutivo,Nom_Vendedor  FROM
		(
			SELECT IDLinea IDEN01,Pedido,sPedido,sLugar, sCliente sNombre_Cliente, sAsignado, dFecha, Ruta, sHora Hora,Consecutivo 
				FROM EN01 WHERE Tipo_Entrega = 'Tienda' AND dFecha BETWEEN @Fecha AND @Fecha2
		)Entrega
		INNER JOIN
		(
			SELECT sCodigo, sDescripcion Nom_Vendedor, FA00.sPedido FROM siawin0..cc20,siawin0..FA00 where cc20.sCodigo = FA00.sVendedor
		)Vendedor ON Vendedor.sPedido = Entrega.sPedido collate SQL_Latin1_General_CP1_CI_AS
	)Vista
	LEFT JOIN
		(
		SELECT Cantidad,CodigoProducto,Despachado, (Cantidad - Despachado) Pendiente,IDLinea,Definitivo, sPedido,IDEntrega,Enviado, sDescripcion_Inventario sdescripcion_Inventario FROM
		(
			SELECT Cantidad,CodigoProducto,Despachado, (Cantidad - Despachado) Pendiente,IDLinea,Definitivo, sPedido,IDEntrega,Enviado 
			FROM EN01P
		)Detalle
		INNER JOIN
		(
			SELECT sCodigo_Producto,sDescripcion_Inventario 
				FROM siawin0..IN04
		)Descripcion ON Descripcion.sCodigo_Producto = Detalle.CodigoProducto collate SQL_Latin1_General_CP1_CI_AS
	)Vista1 ON Vista1.IDEntrega = Vista.IDEN01
	ORDER BY Vista.Consecutivo
END
ELSE IF @Tipo = 2
BEGIN
	UPDATE EN01P SET Despachado = @Definitivo, Enviado = 'true', QuienModifico = @Usuario, FechaModifico = GETDATE()
		WHERE IDLinea = @IdLinea
	UPDATE EN01 SET sHora = @Hora, sAsignado = @Transportista WHERE IDLinea = (SELECT IdEntrega FROM EN01P WHERE IDLinea = @IdLinea)
	SELECT 'Exito' Resultado
END
ELSE IF @Tipo = 3 --Consulta en caso de hacer una reprogramacion, y trae el consecutivo de la 
BEGIN
	IF (SELECT COUNT(*) Cantidad FROM EN01 WHERE dFecha = @Fecha AND Tipo_Entrega = 'Tienda') > 0
	BEGIN
		SELECT TOP 1 Consecutivo, 'Existe' Estado, COUNT(*) Cantidad FROM EN01 
			WHERE dFecha = @Fecha AND Tipo_Entrega = 'Tienda'
		GROUP BY Consecutivo
	END
	ELSE
	BEGIN		
		UPDATE EN00 SET Consecutivo = Consecutivo + 1, FechaUltimaGeneracion = GETDATE()
		SELECT (Consecutivo) Consecutivo, 'Nuevo' Estado, 0 Cantidad FROM EN00
	END
END
ELSE IF @Tipo = 4 --Elimina una entrega a tienda
BEGIN
	DELETE FROM EN01P WHERE IDEntrega = @IdLinea
	DELETE FROM EN01 WHERE IDLinea = @IdLinea
	
	SELECT 'Exito' Resultado
END
ELSE IF @Tipo = 5 --Actualiza la reprogramacion
BEGIN
	IF (SELECT COUNT(*) FROM EN01 WHERE Consecutivo = @Consecutivo AND sPedido = @sPedido AND dFecha = @Fecha) = 0
	BEGIN		
		INSERT INTO EN01
			SELECT @Consecutivo,1,Pedido,@Fecha,@Hora,sCliente,@sLugar,@Transportista,cEstado,UsuarioDigita,EmpresaTransportista,'Tienda',@sPedido,@Usuario,'',GETDATE(),'1900-01-01','',1
				FROM EN01 WHERE sPedido = @sPedido AND dFecha = @Fecha2 AND Consecutivo = @Consecutivo2
		DECLARE @ID int = (SELECT SCOPE_IDENTITY())
		DECLARE @DESPACHO decimal(13,2) = (SELECT SUM(Despachado) FROM EN01P, EN01 WHERE EN01.IDLinea = EN01P.IDEntrega AND EN01.sPedido = @sPedido AND EN01P.CodigoProducto = @CodigoProducto)		
		INSERT INTO EN01P VALUES (@ID,@sPedido,@CodigoProducto,@Cantidad,@DESPACHO,0,'false',@Usuario,'',GETDATE(),'1900-01-01')
		SET @ID = (SELECT IDLinea FROM EN01 WHERE Consecutivo = @Consecutivo2 AND sPedido = @sPedido)
		UPDATE EN01P SET Enviado = 'true' WHERE IDEntrega = @ID AND CodigoProducto = @CodigoProducto
	END	
	ELSE
	BEGIN
		DECLARE @DESPACHOS decimal(13,2) = (SELECT SUM(Despachado) FROM EN01P, EN01 WHERE EN01.IDLinea = EN01P.IDEntrega AND EN01.sPedido = @sPedido AND EN01P.CodigoProducto = @CodigoProducto)
		DECLARE @ID1 int = (SELECT IDLinea FROM EN01 WHERE Consecutivo = @Consecutivo AND sPedido = @sPedido AND dFecha = @Fecha)
		INSERT INTO EN01P VALUES (@ID1,@sPedido,@CodigoProducto,@Cantidad,@DESPACHOS,0,'false',@Usuario,'',GETDATE(),'1900-01-01')
		SET @ID1 = (SELECT IDLinea FROM EN01 WHERE Consecutivo = @Consecutivo2 AND sPedido = @sPedido)
		UPDATE EN01P SET Enviado = 'true' WHERE IDEntrega = @ID1 AND CodigoProducto = @CodigoProducto
	END
	INSERT INTO EN04_Reprogramado VALUES (@Consecutivo,@Consecutivo2,@sPedido,@CodigoProducto,@Fecha)		
	SELECT 'Exito' Resultado
END
ELSE IF @Tipo = 6
BEGIN
	UPDATE EN01 SET sLugar = @sLugar, Ruta = @Consecutivo2, QuienModifico = @Usuario, FechaModifico = GETDATE()
		WHERE Consecutivo = @Consecutivo AND sPedido = @sPedido
	SELECT 'Exito' Resultado
END
ELSE IF @Tipo = 7 --Consulta en caso de hacer una reprogramacion, y trae el consecutivo de la 
BEGIN
	IF (SELECT COUNT(*) Cantidad FROM EN01 WHERE dFecha = @Fecha AND Tipo_Entrega = 'Traslados') > 0
	BEGIN
		SELECT TOP 1 Consecutivo, 'Existe' Estado, COUNT(*) Cantidad FROM EN01 
			WHERE dFecha = @Fecha AND Tipo_Entrega = 'Traslados'
		GROUP BY Consecutivo
	END
	ELSE
	BEGIN		
		UPDATE EN00 SET Consecutivo = Consecutivo + 1, FechaUltimaGeneracion = GETDATE()
		SELECT (Consecutivo) Consecutivo, 'Nuevo' Estado, 0 Cantidad FROM EN00
	END
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F700_insert]
@IDLinea	int	,
@CodProyecto	int	,
@Usuario	varchar(50)	,
@Fecha	datetime	,
@Detalle	varchar(1000)	,
@Tipo	varchar(5)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
INSERT INTO F700 VALUES(
@CodProyecto		,
@Usuario	,	
@Fecha	,	
@Detalle	,	
@Tipo	)	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[F700_DistinctTipo]
@CodProyecto	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT distinct Tipo FROM F700 WHERE CodProyecto = @CodProyecto 	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F700_CargarNotasporTipo]
@CodProyecto	int	,
@Tipo varchar(5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT * FROM F700 WHERE CodProyecto = @CodProyecto  and Tipo = @Tipo 	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F700_CargarNotas]
@CodProyecto	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT * FROM F700 WHERE CodProyecto = @CodProyecto 	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F601_update]
@IDLinea	int	,
@CodProyecto	int,	
@Cobrador	nchar(10),	
@Nombre	varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

UPDATE F601 SET
CodProyecto=@CodProyecto	,	
Cobrador=@Cobrador	,	
Nombre=@Nombre	
WHERE 
CodProyecto=@CodProyecto

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F601_insert]
@IDLinea	int	,
@CodProyecto	int,	
@Cobrador	nchar(10),	
@Nombre	varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO F601 VALUES(
@CodProyecto	,	
@Cobrador	,	
@Nombre	)

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F601_delete]
@IDLinea	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

delete F601 
WHERE 
IDLinea=@IDLinea



END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F601_CargarCobradores]
@CodProyecto	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT * FROM F601 WHERE CodProyecto = @CodProyecto
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F600_update]
@IDLinea	int	,
@Nombre	varchar(50)	,
@Porcentaje	decimal(18, 2)	,
@CodAsesor	varchar(20)	,
@CodProyecto	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

update F600 SET
Nombre=@Nombre		,
Porcentaje=@Porcentaje		,
CodAsesor=@CodAsesor		,
CodProyecto=@CodProyecto
where 	
IDLinea=@IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F600_insert]
@IDLinea	int	,
@Nombre	varchar(50)	,
@Porcentaje	decimal(18, 2)	,
@CodAsesor	varchar(20)	,
@CodProyecto	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO F600 VALUES(
@CodProyecto	,
@CodAsesor		,
@Nombre		,
@Porcentaje
)



END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F600_delete]
@IDLinea	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DELETE F600 WHERE
IDLinea=@IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F600_CargarAsesores]
@CodProyecto	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Select * from F600 WHERE CodProyecto = @CodProyecto


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F301_update]
@IDLinea int,
@CodProyecto int,
@ODP varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

UPDATE F301 SET
ODP=@ODP
WHERE
IDLinea =@IDLinea

SELECT * FROM F301 WHERE CodProyecto = @CodProyecto 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F301_Insert]
@IDLinea int,
@CodProyecto int,
@ODP varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

insert into F301 VALUES(
@CodProyecto,
@ODP
)

SELECT * FROM F301 WHERE CodProyecto = @CodProyecto 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F301_delete]
@Consecutivo int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
DELETE F301 WHERE IDLinea = @Consecutivo 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F301_CargarODP]
@CodProyecto int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	select * from F301 WHERE CodProyecto = @CodProyecto

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F501_update]
@IDLinea	int	,
@CodProyecto	int	,
@Documento	varchar(50)	,
@MontoUtilizado	numeric(18, 2)	,
@Saldo	numeric(18, 2)	,
@IncluidoManualmente	bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

UPDATE F500 SET
CodProyecto=@CodProyecto,
Documento=@Documento,
MontoUtilizado=@MontoUtilizado,
Saldo=@Saldo ,
IncluidoManualmente=@IncluidoManualmente
WHERE 
IDLinea=@IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F501_insert]
@IDLinea	int	,
@CodProyecto	int	,
@Documento	varchar(50)	,
@MontoUtilizado	numeric(18, 2)	,
@Saldo	numeric(18, 2)	,
@IncluidoManualmente	bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO F500 VALUES(
@CodProyecto,
@Documento,
@MontoUtilizado,
@Saldo ,
@IncluidoManualmente) 


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F501_delete]
@IDLinea	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

delete F500
WHERE 
IDLinea=@IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F500ActualizarReciboManual]
@IDLinea int,
@Monto varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		--Declare @Documento varchar(50) = '003765NCAD00002413'
	--	DECLARE @IDLinea int = 2672
	--	DECLARE @Monto int = 50
	declare @MontoDocumento decimal(18,2)= isnull(( SELECT isnull(cMonto_Pendiente,0) FROM F500,siawin28..CC10 where
Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and
 Documento = (select Documento from F500 where F500.IDLinea  = @IDLinea)
 group by CC10.cMonto_Pendiente ),0)
 declare @MontoUtilizadoenProyectos decimal(18,2) =isnull(( SELECT isnull(SUM(MontoUtilizado),0)Utilizado FROM F500,siawin28..CC10 where
Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and
 Documento = (select Documento from F500 where IDLinea = @IDLinea) and IDLinea <> @IDLinea 
 group by CC10.cMonto_Documento ),0)
 


BEGIN
 select @MontoDocumento,@MontoUtilizadoenProyectos
Declare @montosaldo decimal(18,2) =@MontoDocumento-@MontoUtilizadoenProyectos-@Monto
select @montosaldo

IF @MontoDocumento <=0
begin transaction
UPDATE F500 SET
MontoUtilizado = @Monto
WHERE IDLinea = @IDLinea AND IncluidoManualmente = 'True'
commit
UPDATE F500 SET
Saldo =@montosaldo 
WHERE IncluidoManualmente = 'True' AND
Documento IN (SELECT Documento FROM F500 WHERE IDLinea = @IDLinea)

END

END



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F500_VerificarDuplicados]
@Documento Varchar(50),
@CodProyecto int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Select COUNT(*) from F500 where Documento = @Documento and CodProyecto = @CodProyecto 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F500_update]
@IDLinea	int	,
@CodProyecto	int	,
@Documento	varchar(50)	,
@MontoUtilizado	numeric(18, 2)	,
@Saldo	numeric(18, 2)	,
@IncluidoManualmente	bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

UPDATE F500 SET
CodProyecto=@CodProyecto,
Documento=@Documento,
MontoUtilizado=@MontoUtilizado,
Saldo=@Saldo ,
IncluidoManualmente=@IncluidoManualmente
WHERE 
IDLinea=@IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F500_MontoUtilizadoDocumentos]
@idlinea int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

declare @MontoDocumento decimal(18,2)=isnull(( SELECT isnull(cMonto_Documento,0) FROM F500,siawin28..CC10 where
Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and
 Documento = (select Documento from F500 where IDLinea = @idlinea )
 group by CC10.cMonto_Documento ),0)
 declare @MontoUtilizadoenProyectos decimal(18,2) = isnull(( SELECT isnull(SUM(MontoUtilizado),0)Utilizado FROM F500,siawin28..CC10 where
Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and
 Documento =(select Documento from F500 where IDLinea = @idlinea )
 group by CC10.cMonto_Documento ),0)
 
 select @MontoDocumento,@MontoUtilizadoenProyectos




END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F500_insert]
@IDLinea	int	,
@CodProyecto	int	,
@Documento	varchar(50)	,
@MontoUtilizado	numeric(18, 2)	,
@Saldo	numeric(18, 2)	,
@IncluidoManualmente	bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
declare @MontoDocumento decimal(18,2)= isnull(( SELECT isnull(cMonto_Documento,0) FROM F500,siawin28..CC10 where
Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and
 Documento = @Documento
 group by CC10.cMonto_Documento ),0)
 declare @MontoUtilizadoenProyectos decimal(18,2) =isnull(( SELECT isnull(SUM(MontoUtilizado),0)Utilizado FROM F500,siawin28..CC10 where
Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and
 Documento = @Documento 
 group by CC10.cMonto_Documento ),0)

if @IncluidoManualmente = 'false'
begin 
INSERT INTO F500 VALUES(
@CodProyecto,
@Documento,
@MontoUtilizado,
0,
@IncluidoManualmente) 
SELECT @@IDENTITY AS 'Identity';
end
else
begin
if (@MontoDocumento - @MontoUtilizadoenProyectos)<=0
begin
INSERT INTO F500 VALUES(
@CodProyecto,
@Documento,
0,
0,
@IncluidoManualmente) 
SELECT @@IDENTITY AS 'Identity';
end
else
begin
IF @IncluidoManualmente = 'true'
begin
INSERT INTO F500 VALUES(
@CodProyecto,
@Documento,
0,
(@MontoDocumento) - (@MontoUtilizadoenProyectos),
@IncluidoManualmente)
SELECT @@IDENTITY AS 'Identity';
end
else
INSERT INTO F500 VALUES(
@CodProyecto,
@Documento,
@MontoUtilizado,
0,
@IncluidoManualmente) 
SELECT @@IDENTITY AS 'Identity';
end
end


END
--IN ('000537FA00000001','000211FA00031216 ')


--select * 


--from siawin28..CC10 WHERE CC10.sNumero_Documento = '00031216  '


--INSERT INTO F500
--SELECT
--@CodProyecto,
--CASO1.LLAVE,
--CASO1.MONTO,
--CASO1.SALDO,
--'False'
-- FROM siawin28..CC10,siawin28..CC12
--INNER JOIN
--(
--SELECT CC10.sLlave LLAVE,CC10.sNumero_Documento DOC ,CC10.cMonto_Documento MONTO,
--CC10.cMonto_Pendiente SALDO FROM siawin28..CC10
--) CASO1
--ON CASO1.DOC =
--(Case 
--when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
--when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
--ELSE SUBSTRING(CC12.sRecibo,0,20) END)
--WHERE
--CC12.sFactura = CC10.sNumero_Documento AND CC12.sTipo_Documento = CC10.sTipo_Documento
--AND CC10.sLlave = @Documento



--select 
--(SELECT CC10.sLlave FROM siawin28..CC10 WHERE
--sNumero_Documento =
--(Case 
--when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
--when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
--ELSE SUBSTRING(CC12.sRecibo,0,20) END)),
--(Case 
--when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
--when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
--ELSE SUBSTRING(CC12.sRecibo,0,20) END),*
--from siawin28..CC12,siawin28..CC10 WHERE 
--CC12.sFactura = CC10.sNumero_Documento AND CC12.sTipo_Documento = CC10.sTipo_Documento 
--AND CC10.sLlave IN ('000537FA00000001','000211FA00031216 ')

--Insert INTO F500 
--select 
--(SELECT CC10.sLlave FROM siawin28..CC10 WHERE
--sNumero_Documento =
--(Case 
--when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
--when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
--ELSE SUBSTRING(CC12.sRecibo,0,20) END)),
--(Case 
--when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
--when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
--ELSE SUBSTRING(CC12.sRecibo,0,20) END),*
--from siawin28..CC12,siawin28..CC10 WHERE 
--CC12.sFactura = CC10.sNumero_Documento AND CC12.sTipo_Documento = CC10.sTipo_Documento 
--AND CC10.sLlave IN ('000537FA00000001','000211FA00031216 ')

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F500_EliminarDuplicados]
@Documento Varchar(30),
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;	
	
IF((SELECT COUNT(*) FROM F500 WHERE Documento = @Documento AND CodProyecto = @CodProyecto AND IncluidoManualmente = 'true') >0)
BEGIN 
DELETE F500 WHERE IDLinea in
(SELECT IDLinea FROM F500 WHERE Documento = @Documento AND CodProyecto = @CodProyecto AND IncluidoManualmente = 'true')
SELECT 'Si' as resultado 
END
DELETE F500 WHERE Documento in
(SELECT
case 
when SUBSTRING(CC12.sRecibo,1,1) = '+'
then  RTRIM(sCodigo)+'NC'+SUBSTRING(CC12.sRecibo,2,30)collate SQL_Latin1_General_CP1_CI_AS
when SUBSTRING(CC12.sRecibo,1,1) = '-'
then  RTRIM(sCodigo)+'NC'+SUBSTRING(CC12.sRecibo,2,30)collate SQL_Latin1_General_CP1_CI_AS
else
RTRIM(sCodigo)+'RE'+SUBSTRING(CC12.sRecibo,1,30)collate SQL_Latin1_General_CP1_CI_AS
end
sRecibo  
FROM siawin28..CC12,siawin28..CC10,F500 
WHERE CC12.sTipo_Documento =CC10.sTipo_Documento  collate SQL_Latin1_General_CP1_CI_AS
AND CC12.sFactura = CC10.sNumero_Documento  collate SQL_Latin1_General_CP1_CI_AS
AND CC12.sCodigo = CC10.sCliente collate SQL_Latin1_General_CP1_CI_AS
and CC10.sLlave = F500.Documento collate SQL_Latin1_General_CP1_CI_AS
and F500.CodProyecto =''+ @CodProyecto+'' collate SQL_Latin1_General_CP1_CI_AS )
SELECT 'No' as resultado
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F500_delete]
@IDLinea	int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

delete F500
WHERE 
IDLinea=@IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F500_CargarDebitos]
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT 
F500.IDLinea,
sTipo_Documento, 
sNumero_Documento,
--F500.Documento,
dFecha ,
cMonto_Documento,
bMoneda,
(case bmoneda when 0 then 'COL' ELSE 'DOL' END)AS MONEDA,
dFecha_Vencimiento,
--F500.CodProyecto,

F500.MontoUtilizado,
cMonto_Pendiente --,
--F500.Saldo,
--F500.IncluidoManualmente ,
--(CASE F500.IncluidoManualmente WHEN 'True' then 'Si' else 'No' end)as MANUAL--,
--'SIAWIN1' AS BD
--, sLlave
 
--, sCliente 
,CC10.cTcDolar
FROM siawin28.dbo.CC10,F500
WHERE CC10.sLlave = F500.Documento collate Modern_Spanish_CI_AS AND
(sTipo_Documento ='ND' OR sTipo_Documento = 'FA')
 AND
F500.CodProyecto = @CodProyecto



END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F500_CargarCredito]
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

SELECT 
docs.IDLinea,
docs.Documento ,
DOCUMENTOS.TipoRecibo sTipo_Documento,
DOCUMENTOS.DocumentoRecibo sNumero_Documento,
DOCUMENTOS.dfecha dFecha,CAST(
ISNULL(DOCUMENTOS.MONTO,0)AS DECIMAL(18,2)) cMonto_Documento,
documentos.monedas bMoneda,
CAST(
ISNULL(DOCUMENTOS.cMonto,0)AS DECIMAL(18,2)) MontoUtilizado,
CAST(
ISNULL(DOCUMENTOS.SALDO,0)AS DECIMAL(18,2)) cMonto_Pendiente,
docs.IncluidoManualmente,
case documentos.monedas when 0 then 'Colones' else 'Dolares' end MONEDA,
SUBSTRING (DOCUMENTOS.Obser,0,35)Referencia
FROM CEM28..F500 DOCS
INNER JOIN
(SELECT
CASO1.SALDO,
CASO1.DocumentoRecibo,
CC12.cMonto,
ESTE.sLlave,
CASO1.TipoRecibo,
CASO1.dfecha ,
CASO1.Obser ,
CASO1.monedas,
CASO1.MONTO
 FROM siawin28..CC10 ESTE,siawin28..CC12
INNER JOIN
(
SELECT CC10.sLlave LLAVE,CC10.sNumero_Documento DocumentoRecibo ,CC10.cMonto_Documento MONTO,CC10.sTipo_Documento TipoRecibo,
CC10.cMonto_Pendiente SALDO,CC10.sRecibo Obser,CC10.dFecha dfecha,bMoneda monedas FROM siawin28..CC10 WHERE (sTipo_Documento = 'NC' OR sTipo_Documento = 'RE')
) CASO1
ON CASO1.DocumentoRecibo =
(Case 
when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
ELSE SUBSTRING(CC12.sRecibo,0,20) END)
WHERE
CC12.sFactura = ESTE.sNumero_Documento AND CC12.sTipo_Documento = ESTE.sTipo_Documento
)DOCUMENTOS
ON DOCUMENTOS.sLlave  = DOCS.Documento collate Modern_Spanish_CI_AS
And (DOCS.Documento like '%fa%' or DOCS.Documento like '%nd%')
AND DOCS.CodProyecto = @CodProyecto
union all
SELECT 
docs.IDLinea,
docs.Documento ,
DOCUMENTOS.TipoRecibo sTipo_Documento,
DOCUMENTOS.DocumentoRecibo sNumero_Documento,
DOCUMENTOS.dfecha dFecha,
DOCUMENTOS.cMonto cMonto_Documento,
documentos.monedas bMoneda,
isnull(DOCS.MontoUtilizado,0) MontoUtilizado,
CAST(
ISNULL(DOCS.SALDO,0)AS DECIMAL(18,2)) cMonto_Pendiente,
docs.IncluidoManualmente,
case documentos.monedas when 0 then 'Colones' else 'Dolares' end MONEDA,
SUBSTRING (DOCUMENTOS.Obser,0,35)Referencia
FROM CEM28..F500 DOCS
INNER JOIN
(SELECT
CASO1.SALDO,
CASO1.DocumentoRecibo,
CC12.cMonto,
ESTE.sLlave,
CASO1.TipoRecibo,
CASO1.dfecha ,
CASO1.Obser ,
CASO1.monedas
 FROM siawin28..CC10 ESTE,siawin28..CC12
INNER JOIN
(
SELECT CC10.sLlave LLAVE,CC10.sNumero_Documento DocumentoRecibo ,CC10.cMonto_Documento MONTO,CC10.sTipo_Documento TipoRecibo,
CC10.cMonto_Pendiente SALDO,CC10.sRecibo  Obser,CC10.dFecha dfecha,bMoneda monedas FROM siawin28..CC10
) CASO1
ON CASO1.DocumentoRecibo =
(Case 
when SUBSTRING(CC12.sRecibo,1,1)= '+' THEN SUBSTRING(CC12.sRecibo,2,20)
when SUBSTRING(CC12.sRecibo,1,1)= '-' THEN SUBSTRING(CC12.sRecibo,2,20)
ELSE SUBSTRING(CC12.sRecibo,0,20) END)
WHERE
CC12.sFactura = ESTE.sNumero_Documento AND CC12.sTipo_Documento = ESTE.sTipo_Documento
)DOCUMENTOS
ON DOCUMENTOS.sLlave  = DOCS.Documento collate Modern_Spanish_CI_AS
And (DOCS.Documento like '%nc%' and DOCS.IncluidoManualmente = 'false')
AND DOCS.CodProyecto = @CodProyecto
union all

select IDLinea,
Documento ,
sTipo_Documento,
sNumero_Documento,
dFecha,
cMonto_Documento,
bMoneda,
isnull(MontoUtilizado,0)MontoUtilizado,
Saldo cMonto_Pendiente,
IncluidoManualmente,
case bMoneda when 0 then 'Colones' else 'Dolares' end MONEDA,
SUBSTRING(sObservaciones,20,35)Referencia
from F500,siawin28..CC10 where CodProyecto = @CodProyecto and IncluidoManualmente = 'True'
and Documento = sLlave collate Modern_Spanish_CI_AS


--SELECT 
--F500.IDLinea ,
--CC10.sTipo_Documento,
--CC10.sNumero_Documento,
--CC10.dFecha,
--CC10.cMonto_Documento,
--CC10.bMoneda,
--F500.MontoUtilizado,
--CC10.cMonto_Pendiente,
--F500.IncluidoManualmente,
--CASE CC10.bMoneda when 0 then 'Colones' else 'Dolares' end as MONEDA,
--CC10.cTcDolar
-- FROM siawin28..CC10,F500 WHERE
--CC10.sLlave = F500.Documento AND
--CC10.sTipo_Documento IN ('NC','RE')
--AND F500.CodProyecto = @CodProyecto 


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F500_Busquedaporproyecto]
@Contrato varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


    -- Insert statements for procedure here
 SELECT CodProyecto,Codigo,Contrato,Proyecto FROM F300,F100 WHERE F100.Consecutivo = F300.CodProyecto AND Contrato LIKE '%'+@Contrato+'%'


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F400_update]
@IDLinea	int	,
@CodProyecto	int	,
@Documento	varchar(50),	
@Fecha	datetime	,
@Monto	numeric(18, 2),	
@Saldo	numeric(18, 2),	
@FechaVencimiento	datetime,	
@Tipo	int	,
@Moneda	int	,
@Detalle	varchar(200),	
@Recibos	varchar(500),	
@QuienModifico	varchar(30),	
@QuienIngreso	varchar(30)	,
@dFechaIngreso	datetime	,
@dFechaModifico	datetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

update F400 SET 
CodProyecto=@CodProyecto,	
--Documento=@Documento	,	
Fecha=@Fecha,
Monto=@Monto,	
--Saldo=@Saldo,	
FechaVencimiento=@FechaVencimiento	,
Tipo=@Tipo		,
Moneda=@Moneda	,
Detalle=@Detalle,		
--Recibos=@Recibos,		
QuienModifico=@QuienModifico	,
--QuienIngreso=@QuienIngreso	,	
--dFechaIngreso=@dFechaIngreso	,	
dFechaModifico=@dFechaModifico	
WHERE 
IDLinea = @IDLinea


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F400_insert]
@IDLinea	int	,
@CodProyecto	int	,
@Documento	varchar(50),	
@Fecha	datetime	,
@Monto	numeric(18, 2),	
@Saldo	numeric(18, 2),	
@FechaVencimiento	datetime,	
@Tipo	int	,
@Moneda	int	,
@Detalle	varchar(200),	
@Recibos	varchar(500),	
@QuienModifico	varchar(30),	
@QuienIngreso	varchar(30)	,
@dFechaIngreso	datetime	,
@dFechaModifico	datetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

insert into F400 VALUES(
@CodProyecto,	
@Documento	,	
@Fecha,
@Monto,	
@Saldo,	
@FechaVencimiento	,
@Tipo		,
@Moneda	,
@Detalle,		
@Recibos,		
@QuienModifico	,
@QuienIngreso	,	
@dFechaIngreso	,	
@dFechaModifico	)
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F400_delete]
@IDLinea int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DELETE F400
where
IDLinea=@IDLinea
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F400_CargarDatos]
@Proyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 select
  IDLinea,
 F400.CodProyecto,
 Documento,
 Fecha,
  F400.Monto,
 case 
 when
      ((select isnull(SUM(Monto),0) from F400 total where total.CodProyecto = F400.CodProyecto
 and total.FechaVencimiento <= F400.FechaVencimiento 
 )-isnull(abonos.monto,0)-isnull(manuales.monto,0) ) < F400.Monto
 then
 0
  when
      ((select isnull(SUM(Monto),0) from F400 total where total.CodProyecto = F400.CodProyecto
 and total.FechaVencimiento <= F400.FechaVencimiento 
 )-isnull(abonos.monto,0)-isnull(manuales.monto,0) ) > F400.Monto
 then
 F400.Monto 
 else
F400.Monto 
 end Saldo,
 FechaVencimiento,
 F400.Tipo, 
 F400.Moneda,
 F400.Detalle,
 F400.Recibos,
 F400.QuienIngreso,
 F400.QuienModifico,
 F400.dFechaIngreso,
 F400.dFechaModifico,
 (CASE Moneda when 0 then 'Colones' else 'Dolares' end) as TipoMoneda,
CASE F400.Tipo WHEn 0 THEN 'Efectivo' else 'Canje' end as TipoPago
  from F400 
  left join
  (
   select isnull(sum(CC12.cMonto),0) monto,F500.CodProyecto from F500,siawin28..CC10,siawin28..CC12 where F500.Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS
 AND CC10.sTipo_Documento = CC12.sTipo_Documento AND CC10.sNumero_Documento = CC12.sFactura 
 AND CC10.sCliente = CC12.sCodigo AND F500.CodProyecto = @Proyecto 
 GROUP BY F500.CodProyecto 
  ) abonos
  on abonos.CodProyecto = F400.CodProyecto 
  left join
  (
    select isnull(SUM(CC10.cMonto_Documento),0)monto,F500.CodProyecto  from F500,siawin28..CC10 where 
  F500.Documento = CC10.sLlave collate SQL_Latin1_General_CP1_CI_AS and 
  IncluidoManualmente = 'true'
  GROUP BY F500.CodProyecto
  )manuales
  on manuales.CodProyecto = F400.CodProyecto 
 where f400.CodProyecto = @Proyecto
 order by F400.FechaVencimiento asc
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF300_update]
@IDLinea int,
@CodProyecto int,
@Contrato varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

UPDATE VF300 SET
Contrato=@Contrato
WHERE
IDLinea =@IDLinea

SELECT * FROM VF300 WHERE CodProyecto = @CodProyecto 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF300_Insert]
@IDLinea int,
@CodProyecto int,
@Contrato varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

insert into VF300 VALUES(
@CodProyecto,
@Contrato
)

SELECT * FROM VF300 WHERE CodProyecto = @CodProyecto 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF300_delete]
@Consecutivo int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
DELETE VF300 WHERE IDLinea = @Consecutivo 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF300_CargarContratos]
@CodProyecto int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	select * from VF300 WHERE CodProyecto = @CodProyecto

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Davy Vargas
-- Create date: <Create Date,,>
-- Description:	Ingresa la un nuevo registro sobre la tabla.
-- =============================================
CREATE PROCEDURE [dbo].[VF200_update]
@IDLinea int,
@CodProyecto int,
@Ajuste varchar(50),
@Tipo int,
@Fecha datetime,
@Monto decimal (18,2),
@Moneda int,
@Descripcion varchar(200),
@IngresadoPor varchar(30),
@ModificadoPor varchar(30),
@FechaModificacion datetime

AS
BEGIN 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
UPDATE VF200 SET
Ajuste=@Ajuste,
Tipo=@Tipo,	
Fecha=@Fecha,
Monto=@Monto,
Moneda=@Moneda,
Descripcion=@Descripcion,
IngresadoPor=@IngresadoPor,
ModificadoPor=@ModificadoPor,
FechaModificacion=@FechaModificacion
WHERE 
IDLinea = @IDLinea 

--SELECT *,(CASE Tipo WHEN
--	0 THEN 'MontoInicial'
--	when 1 then 'Suma'
--	when 2 then 'Resta' end) TipoNombre,
--	(Case Moneda when 
--	0 then 'Colones' 
--	when 1 then 'Dolares' end) TipoMoneda from F200(NOLOCK) 
--	WHERE CodProyecto = @CodProyecto 


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Davy Vargas
-- Create date: <Create Date,,>
-- Description:	Ingresa la un nuevo registro sobre la tabla.
-- =============================================
CREATE PROCEDURE [dbo].[VF200_insert]
@IDLinea int,
@CodProyecto int,
@Ajuste varchar(50),
@Tipo int,
@Fecha datetime,
@Monto decimal (18,2),
@Moneda int,
@Descripcion varchar(200),
@IngresadoPor varchar(30),
@ModificadoPor varchar(30),
@FechaModificacion datetime

AS
BEGIN 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
	INSERT INTO VF200 VALUES(
	@CodProyecto,
	@Ajuste,
@Tipo,	
@Fecha,
@Monto,
@Moneda,
@Descripcion,
@IngresadoPor,
@ModificadoPor,
@FechaModificacion)

--SELECT *,(CASE Tipo WHEN
--	0 THEN 'MontoInicial'
--	when 1 then 'Suma'
--	when 2 then 'Resta' end) TipoNombre,
--	(Case Moneda when 
--	0 then 'Colones' 
--	when 1 then 'Dolares' end) TipoMoneda from F200(NOLOCK) 
--	WHERE CodProyecto = @CodProyecto 


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VF200_delete]
@Consecutivo int

AS
BEGIN TRY
BEGIN TRANSACTION


	SET NOCOUNT ON;
DELETE VF200 WHERE
IDLinea= @Consecutivo

COMMIT TRANSACTION
END TRY
BEGIN CATCH 
ROLLBACK
SELECT ERROR_LINE(),ERROR_MESSAGE()
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Carga en el grid 
CREATE PROCEDURE [dbo].[VF200_CargarAjustes] 
@Proyecto VARCHAR(50)

AS
BEGIN

	SET NOCOUNT ON;

	SELECT *,(CASE Tipo WHEN
	0 THEN 'MontoInicial'
	when 1 then 'Suma'
	when 2 then 'Resta' end) TipoNombre,
	(Case Moneda when 
	0 then 'Colones' 
	when 1 then 'Dolares' end) TipoMoneda from VF200(NOLOCK) 
	WHERE CodProyecto = @Proyecto 
	
	
	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VF100_update]
@Consecutivo int,
@Nomenclatura varchar(30),
@Codigo varchar(30),
@Proyecto varchar(200),
@Nombre varchar(50),
@Cliente varchar(10),
@Notas varchar(2000),
@MostrarTablaAvance int,
@Moneda int,
@Condiciones varchar(2000),
@FechaEstimadaCierre date,
@TipoCambio decimal(18,2),
@sQuienIngreso varchar(20),
@sQuienModifico VARCHAR(20),
@dFechaIngreso datetime,
@dFechaModifico datetime

AS
BEGIN TRY
BEGIN TRANSACTION

	SET NOCOUNT ON;
update VF100 SET
Proyecto=@Proyecto,
Nombre=@Nombre,
Cliente=@Cliente,
Notas=@Notas,
MostrarTablaAvance=@MostrarTablaAvance,
Moneda=@Moneda,
Condiciones=@Condiciones,
FechaEstimadaCierre=@FechaEstimadaCierre,
TipoCambio=@TipoCambio,
sQuienIngreso=@sQuienIngreso,
sQuienModifico=@sQuienModifico,
dFechaIngreso=@dFechaIngreso,
dFechaModifico=@dFechaModifico
WHERE
Codigo=@Codigo AND
Consecutivo=@Consecutivo

COMMIT TRANSACTION
END TRY
BEGIN CATCH 
ROLLBACK
SELECT ERROR_LINE(),ERROR_MESSAGE()
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF100_TrasferirProyectos]
@CodProyecto int

AS
BEGIN TRY
BEGIN TRANSACTION
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @CONSECUTIVO INT = (SELECT MAX(Consecutivo)+1 FROM VF100)
declare @nombreproyecto varchar(50)
SELECT @nombreproyecto=ltrim(str(year(GETDATE()))) + '-' + ltrim(str(isnull(max(case CHARINDEX('-',Codigo,1) when 0 then 0 else SUBSTRING(Codigo,CHARINDEX('-',Codigo,1)+1,LEN(Codigo)) end),0)+1)) 
	  from F100 where substring(Codigo,1,4)=year(getdate())

--@CodProyecto

--F100
INSERT INTO VF100
SELECT
@CONSECUTIVO,
Nomenclatura,
@nombreproyecto,
Proyecto,
Nombre,
Cliente,
Notas,
MostrarTablaAvance,
Moneda,
Condiciones,
FechaEstimadaCierre,
TipoCambio,
sQuienIngreso,
sQuienModifico,
dFechaIngreso,
dFechaModifico 
FROM VF100 WHERE Consecutivo = @CodProyecto
--F200
INSERT INTO VF200
SELECT
@CONSECUTIVO,
Ajuste,
Tipo,
Fecha,
Monto,
Moneda,
Descripcion,
IngresadoPor,
ModificadoPor,
FechaModificacion
FROM VF200 WHERE CodProyecto = @CodProyecto
--F300
INSERT INTO VF300
SELECT
@CONSECUTIVO,
Contrato 
FROM VF300 WHERE CodProyecto = @CodProyecto
--F400
INSERT INTO VF400
SELECT 
@CONSECUTIVO,
Documento,
Fecha,
Monto,
Saldo,
FechaVencimiento,
Tipo,
Moneda,
Detalle,
Recibos,
QuienModifico,
QuienIngreso,
dFechaIngreso,
dFechaModifico
FROM VF400 WHERE CodProyecto = @CodProyecto
--F500
INSERT INTO VF500
SELECT 
@CONSECUTIVO,
Documento,
MontoUtilizado,
Saldo,
IncluidoManualmente 
FROM VF500 WHERE CodProyecto = @CodProyecto 
--F600
INSERT INTO VF600
SELECT 
@CONSECUTIVO,
CodAsesor,
Nombre,
Porcentaje 
FROM VF600 WHERE CodProyecto = @CodProyecto
--F700
INSERT INTO VF700
SELECT 
@CONSECUTIVO,
Usuario,
Fecha,
Detalle,
Tipo 
FROM VF700 WHERE CodProyecto = @CodProyecto
--F800
INSERT INTO VF800
SELECT 
@CONSECUTIVO,
Movimiento FROM VF800 WHERE CodProyecto = @CodProyecto

--F601
INSERT INTO VF601
SELECT 
@CONSECUTIVO,
Cobrador,
Nombre FROM VF601 WHERE CodProyecto = @CodProyecto 


--F301
INSERT INTO F301
SELECT 
@CONSECUTIVO,
ODP FROM VF301 WHERE CodProyecto = @CodProyecto 


DELETE VF100 WHERE Consecutivo = @CodProyecto
DELETE VF200 WHERE CodProyecto = @CodProyecto
DELETE VF300 WHERE CodProyecto = @CodProyecto
DELETE VF301 WHERE CodProyecto = @CodProyecto
DELETE VF400 WHERE CodProyecto = @CodProyecto
DELETE VF500 WHERE CodProyecto = @CodProyecto
DELETE VF600 WHERE CodProyecto = @CodProyecto
DELETE VF601 WHERE CodProyecto = @CodProyecto
DELETE VF700 WHERE CodProyecto = @CodProyecto
DELETE VF800 WHERE CodProyecto = @CodProyecto



COMMIT
END TRY
BEGIN CATCH 
ROLLBACK
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF100_TablaAvance]
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT Fecha,CASE TIPO  WHEN '0' THEN 'Monto Inicial' 
WHEN '1' THEN 'Suma' else 'Resta' end as Tipo,Cast('' as varchar(20)) as Numero,
VF200.Monto , '' Saldo
FROM VF200 WHERE CodProyecto = @CodProyecto 

union all

select CC10.dFecha Fecha,
CC10.sTipo_Documento Tipo,
cast(CC10.sNumero_Documento as Varchar(20))Numero,
CC10.cMonto_Documento Monto,
Cast(CC10.cMonto_Pendiente as varchar(20)) Saldo from VF500,siawin28..CC10 where 
VF500.Documento = CC10.sLlave collate Modern_Spanish_CI_AS  and CodProyecto = @CodProyecto and sTipo_Documento in ('FA','ND')
ORDER BY Fecha ASC




END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VF100_insert]
@Consecutivo int,
@Nomenclatura varchar(30),
@Codigo varchar(30),
@Proyecto varchar(200),
@Nombre varchar(50),
@Cliente varchar(10),
@Notas varchar(2000),
@MostrarTablaAvance int,
@Moneda int,
@Condiciones varchar(2000),
@FechaEstimadaCierre date,
@TipoCambio decimal(18,2),
@sQuienIngreso varchar(20),
@sQuienModifico VARCHAR(20),
@dFechaIngreso datetime,
@dFechaModifico datetime

AS
BEGIN TRY
BEGIN TRANSACTION

	SET NOCOUNT ON;
declare @nombreproyecto varchar(50)
SELECT @nombreproyecto=ltrim(str(year(GETDATE()))) + '-' + ltrim(str(isnull(max(case CHARINDEX('-',Codigo,1) when 0 then 0 else SUBSTRING(Codigo,CHARINDEX('-',Codigo,1)+1,LEN(Codigo)) end),0)+1)) 
	  from VF100 where substring(Codigo,1,4)=year(getdate())
DECLARE @NumeroProyecto int 
SELECT @NumeroProyecto = (SELECT isnull(MAX(Consecutivo),0)+1 from VF100)
INSERT INTO VF100 VALUES(
@NumeroProyecto,
'',
@nombreproyecto,
@Proyecto,
@Nombre,
@Cliente,
@Notas,
@MostrarTablaAvance,
@Moneda,
@Condiciones,
@FechaEstimadaCierre,
@TipoCambio,
@sQuienIngreso,
@sQuienModifico,
@dFechaIngreso,
@dFechaModifico)

SELECT @NumeroProyecto,@nombreproyecto
COMMIT TRANSACTION
END TRY
BEGIN CATCH 
ROLLBACK
SELECT ERROR_LINE(),ERROR_MESSAGE()
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF100_DetalleGeneral]
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


SELECT 
VF100.Consecutivo ,
Codigo Codigo,
Proyecto Nombre,
VF100.Moneda,
ISNULL(MONTOPROYECTO.Monto,0) MontoInicial,
ISNULL(MONTOPROYECTO.Monto,0)+ ISNULL(MONTOAJUSTADOSUMA.Monto,0)-ISNULL(MONTOAJUSTADORESTA.Monto,0)MontoAjustado,
ISNULL(MONTOPROYECTO.Monto,0)+ ISNULL(MONTOAJUSTADOSUMA.Monto,0)-ISNULL(MONTOAJUSTADORESTA.Monto,0)-ISNULL(TOTALABONADO.MONTO,0) MontoAbonado,

ISNULL(MONTOPROYECTO.Monto,0)+ ISNULL(MONTOAJUSTADOSUMA.Monto,0)-ISNULL(MONTOAJUSTADORESTA.Monto,0)-ISNULL(FACTURADO.MONTO,0) MontoFacturado
FROM VF100 
LEFT JOIN 
(
SELECT Monto,CodProyecto FROM VF200 WHERE Tipo = 0 
)MONTOPROYECTO
ON MONTOPROYECTO.CodProyecto = VF100.Consecutivo 

LEFT JOIN 
(
SELECT Monto,CodProyecto FROM VF200 WHERE Tipo = 1
)MONTOAJUSTADOSUMA
ON MONTOAJUSTADOSUMA.CodProyecto = VF100.Consecutivo 
LEFT JOIN 
(
SELECT Monto,CodProyecto FROM VF200 WHERE Tipo = 2
)MONTOAJUSTADORESTA
ON MONTOAJUSTADORESTA.CodProyecto = VF100.Consecutivo 

LEFT JOIN
(
SELECT SUM(MontoUtilizado)MONTO,CodProyecto FROM VF500 WHERE (Documento LIKE '%FA%' OR Documento LIKE '%ND%')
GROUP BY CodProyecto
)FACTURADO
ON FACTURADO.CodProyecto = VF100.Consecutivo 
LEFT JOIN
(
SELECT SUM(cMonto)MONTO,VF500.CodProyecto FROM VF500, siawin28..CC10,siawin28..CC12 WHERE
VF500.Documento = CC10.sLlave collate Modern_Spanish_CI_AS
AND CC10.sNumero_Documento = CC12.sFactura
AND CC10.sTipo_Documento = CC12.sTipo_Documento
AND CC10.sCliente = CC12.sCodigo 
AND SUBSTRING(CC12.sRecibo,1,1) <> '-'
GROUP BY VF500.CodProyecto
)TOTALABONADO
ON TOTALABONADO.CodProyecto = VF100.Consecutivo
where VF100.Consecutivo = @CodProyecto


-- SELECT cMonto Total,F500.CodProyecto,CC12.sRecibo 
--FROM siawin28..CC12,siawin28..CC10,F500 
--WHERE CC12.sTipo_Documento =CC10.sTipo_Documento
--AND CC12.sFactura =CC10.sNumero_Documento
--AND CC12.sCodigo = CC10.sCliente
--AND CC10.sLlave = F500.Documento
--and F500.CodProyecto = 1 
--and substring(CC12.sRecibo,1,1) <> '-'


-- SELECT cMonto Total,F500.CodProyecto,CC12.sRecibo 
--FROM siawin28..CC12,siawin28..CC10,F500 
--WHERE CC12.sTipo_Documento =CC10.sTipo_Documento
--AND CC12.sFactura =CC10.sNumero_Documento
--AND CC12.sCodigo = CC10.sCliente
--AND CC10.sLlave = F500.Documento
--and F500.CodProyecto = 1 
--and substring(CC12.sRecibo,1,1) <> '-'

-- SELECT cMonto Total,F500.CodProyecto,CC12.sRecibo 
--FROM siawin28..CC12,siawin28..CC10,F500 
--WHERE CC12.sTipo_Documento =CC10.sTipo_Documento
--AND CC12.sFactura =CC10.sNumero_Documento
--AND CC12.sCodigo = CC10.sCliente
--AND CC10.sLlave = F500.Documento
--and F500.CodProyecto = 1 
--and substring(CC12.sRecibo,1,1) <> '-'




END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF100_BuscarProyecto]
@Filtro varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @MFiltro varchar(100) =  REPLACE(@Filtro,'*','%')
	
	SELECT top 100 Consecutivo,
	Codigo,
	Proyecto,
	Nombre 	
	 FROM VF100 WHERE Codigo LIKE '%'+ @MFiltro + '%' or Proyecto like '%'+ @MFiltro
	+ '%' or Cliente like '%'+@MFiltro+'%'

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF000_update]
@IDLinea int,
@Perfil int,
@UsuarioIngreso varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

update VF000 set
Perfil = @Perfil,
QuienModifico = @UsuarioIngreso ,
dFechaModifico = GETDATE()
where IDLinea = @IDLinea

    
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF000_Seguridad]
@Usuario varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


select Opcion,Estado from VF000,VF001 where
VF000.Modulo = VF001.Modulo and
VF000.Perfil = VF001.Perfil and
VF000.Usuario =@Usuario 


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF000_PerfilesCreados]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

select * from VF001 where Opcion = 'F10'
    
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF000_insert]
@Usuario Varchar(50),
@Perfil int,
@UsuarioIngreso Varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO VF000 VALUES(
@Usuario,
@Perfil,
'Modulo',
@UsuarioIngreso ,
'',
GETDATE(),
'01-01-1900')
    
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF000_delete]
@IDLinea int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE VF000 WHERE IDLinea = @IDLinea 

    
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VF000_BuscarUsuario]
@Usuario varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    select VF000.IDLinea,Usuario,DBT10.sNombre,VF000.Perfil,Modulo,DESCRIPCION.Descripcion  from  siawin0..DBT10, VF000 
left join
(
select Perfil,Descripcion from VF001 where Opcion = 'F10'
)DESCRIPCION
ON DESCRIPCION.Perfil = VF000.Perfil 
where sCodigo_Usuario = Usuario collate Modern_Spanish_CI_AS
and (Usuario like '%'+@Usuario+'%' or DBT10.sNombre like '%'+@Usuario+'%')


    
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RE_VencimientodeProyectos] 
@Cliente varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	
SELECT Codigo,
Nombre,
CASE MostrarTablaAvance
when 0 then 'Plan de Pagos'
else 'Tabla de Avance' end Tipo,

ISNULL(Vencidos.Monto,0) Vencido, 0 as sinvencer   FROM F100 

LEFT JOIN
(
SELECT ISNULL(Sum(Saldo),0) Monto,F400.CodProyecto FROM F400 
group by F400.CodProyecto 

)Vencidos
on Vencidos.CodProyecto = F100.Consecutivo 

WHERE Cliente = @Cliente
order by FechaEstimadaCierre asc
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RE_EstimaciondeCobro]
@fechadesde1 date,
@fechahasta2 date,
@canje bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
DECLARE @FECHADESDE DATE = '01-01-2011'

--DECLARE @canje BIT = 'true'
Declare @DFECHADe1a7 DATE= (select convert(varchar(12), DATEADD(DAY , +0, @FECHADESDE ), 106))
Declare @DFECHADe7a14 DATE = (select convert(varchar(12), DATEADD(DAY , +8, @FECHADESDE ), 106))
Declare @DFECHADe15a30 DATE = (select convert(varchar(12), DATEADD(DAY , +15, @FECHADESDE ), 106))
Declare @DFECHADe31a60 DATE = (select convert(varchar(12), DATEADD(DAY , +31, @FECHADESDE ), 106))
Declare @DFECHADe61a90 DATE = (select convert(varchar(12), DATEADD(DAY , +61, @FECHADESDE ), 106))
Declare @DFECHADe91a180 DATE = (select convert(varchar(12), DATEADD(DAY , +91, @FECHADESDE ), 106))
Declare @DFECHADe181a360 DATE = (select convert(varchar(12), DATEADD(DAY , +181, @FECHADESDE ), 106))
Declare @DFECHADe361amas DATE = (select convert(varchar(12), DATEADD(DAY , +361, @FECHADESDE ), 106))
--Declare @DFECHADe1a5anos DATE = (select convert(varchar(12), DATEADD(YEAR , +5, @FECHADESDE ), 106))

DECLARE @FECHAHASTA DATE = @DFECHADe1a7
Declare @DHFECHADe1a7 DATE= (select convert(varchar(12), DATEADD(DAY , +7, @FECHAHASTA ), 106))
Declare @DHFECHADe7a14 DATE = (select convert(varchar(12), DATEADD(DAY , +14, @FECHAHASTA ), 106))
Declare @DHFECHADe15a30 DATE = (select convert(varchar(12), DATEADD(DAY , +30, @FECHAHASTA ), 106))
Declare @DHFECHADe31a60 DATE = (select convert(varchar(12), DATEADD(DAY , +60, @FECHAHASTA ), 106))
Declare @DHFECHADe61a90 DATE = (select convert(varchar(12), DATEADD(DAY , +90, @FECHAHASTA ), 106))
Declare @DHFECHADe91a180 DATE = (select convert(varchar(12), DATEADD(DAY , +180, @FECHAHASTA ), 106))
Declare @DHFECHADe181a360 DATE = (select convert(varchar(12), DATEADD(DAY , +360, @FECHAHASTA ), 106))
Declare @DHFECHADe1a5anos DATE = (select convert(varchar(12), DATEADD(YEAR , +5, @FECHAHASTA ), 106))

if @canje = 'true'
SELECT 
isnull(FechaProyecto.Fecha,'1900-01-01')Fecha,
Codigo,
Nombre,
isnull(DE1A7.Saldo,0)De1a7dias,
isnull(DE7A14.Saldo,0)De7a14dias,
isnull(DE15A30.Saldo,0)De15a30dias,
isnull(DE31A60.Saldo,0)De31a60dias,
isnull(DE61A90.Saldo,0)De61a90dias,
isnull(DE91A180.Saldo,0)De91a181dias,
isnull(DE181A360.Saldo,0)De181a360dias,
isnull(DE360Amas.Saldo,0)De360amasdias,
(
isnull(DE1A7.Saldo,0)+
isnull(DE7A14.Saldo,0)+
isnull(DE15A30.Saldo,0)+
isnull(DE31A60.Saldo,0)+
isnull(DE61A90.Saldo,0)+
isnull(DE91A180.Saldo,0)+
isnull(DE181A360.Saldo,0)+
isnull(DE360Amas.Saldo,0)
)Total,
ISNULL(ASESOR.NOMBREASESOR,'')Vendedor,
ISNULL(COBRADOR.NOMBREASESOR,'') Cobrador
FROM F100 
LEFT JOIN
(
select CodProyecto,ISNULL(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe1a7 AND FechaVencimiento <= @DHFECHADe1a7 --and Tipo = 0
GROUP BY CodProyecto
)DE1A7
ON DE1A7.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe7a14 AND FechaVencimiento<=@DHFECHADe7a14 -- and Tipo = 0
GROUP BY CodProyecto
)DE7A14
ON DE7A14.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe15a30 AND FechaVencimiento<=@DHFECHADe15a30-- and Tipo = 0
GROUP BY CodProyecto
)DE15A30
ON DE15A30.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe31a60 AND FechaVencimiento<= @DHFECHADe31a60 --and Tipo = 0
GROUP BY CodProyecto
)DE31A60
ON DE31A60.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe61a90 AND FechaVencimiento <= @DHFECHADe61a90 --and Tipo = 0 
GROUP BY CodProyecto
)DE61A90
ON DE61A90.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe91a180 AND FechaVencimiento<=@DHFECHADe91a180 --and Tipo = 0
GROUP BY CodProyecto
)DE91A180
ON DE91A180.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe181a360 AND FechaVencimiento <= @DHFECHADe181a360 --and Tipo = 0
GROUP BY CodProyecto
)DE181A360
ON DE181A360.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe361amas AND FechaVencimiento<= @DHFECHADe1a5anos --and Tipo = 0
GROUP BY CodProyecto 
)DE360Amas
ON DE360Amas.CodProyecto = F100.Consecutivo 
left join
(
SELECT max(F600.Nombre) NOMBREASESOR,CodProyecto FROM F600 
group by CodProyecto 
)
ASESOR
ON ASESOR.CodProyecto = F100.Consecutivo 
left join
(
SELECT max(F601.Nombre) NOMBREASESOR,CodProyecto FROM F601 
group by CodProyecto 
)
COBRADOR
ON COBRADOR.CodProyecto = F100.Consecutivo 
left join
(
select Fecha,CodProyecto from F200-- where Tipo = 0
)FechaProyecto
on FechaProyecto.CodProyecto = F100.Consecutivo 
--WHERE --F100.FechaEstimadaCierre BETWEEN @FECHADESDE AND @FECHAHASTA-- AND F100.MostrarTablaAvance = 0 
--AND 
--F100.Consecutivo = 183
order by Codigo 
else
SELECT 
CASE F100.Moneda WHEN 0 THEN 'Colones' else 'Dolares' end Moneda,
isnull(FechaProyecto.Fecha,'1900-01-01')Fecha,
Codigo,
Nombre,
isnull(DE1A7.Saldo,0)De1a7dias,
isnull(DE7A14.Saldo,0)De7a14dias,
isnull(DE15A30.Saldo,0)De15a30dias,
isnull(DE31A60.Saldo,0)De31a60dias,
isnull(DE61A90.Saldo,0)De61a90dias,
isnull(DE91A180.Saldo,0)De91a181dias,
isnull(DE181A360.Saldo,0)De181a360dias,
isnull(DE360Amas.Saldo,0)De360amasdias,
(
isnull(DE1A7.Saldo,0)+
isnull(DE7A14.Saldo,0)+
isnull(DE15A30.Saldo,0)+
isnull(DE31A60.Saldo,0)+
isnull(DE61A90.Saldo,0)+
isnull(DE91A180.Saldo,0)+
isnull(DE181A360.Saldo,0)+
isnull(DE360Amas.Saldo,0)
)Total,
ISNULL(ASESOR.NOMBREASESOR,'')Vendedor,
ISNULL(COBRADOR.NOMBREASESOR,'') Cobrador
FROM F100 
LEFT JOIN
(
select CodProyecto,ISNULL(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe1a7 AND FechaVencimiento <= @DHFECHADe1a7 --and Tipo = 0
GROUP BY CodProyecto
)DE1A7
ON DE1A7.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe7a14 AND FechaVencimiento<=@DHFECHADe7a14 -- and Tipo = 0
GROUP BY CodProyecto
)DE7A14
ON DE7A14.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe15a30 AND FechaVencimiento<=@DHFECHADe15a30-- and Tipo = 0
GROUP BY CodProyecto
)DE15A30
ON DE15A30.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe31a60 AND FechaVencimiento<= @DHFECHADe31a60 --and Tipo = 0
GROUP BY CodProyecto
)DE31A60
ON DE31A60.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe61a90 AND FechaVencimiento <= @DHFECHADe61a90 --and Tipo = 0 
GROUP BY CodProyecto
)DE61A90
ON DE61A90.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe91a180 AND FechaVencimiento<=@DHFECHADe91a180 --and Tipo = 0
GROUP BY CodProyecto
)DE91A180
ON DE91A180.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe181a360 AND FechaVencimiento <= @DHFECHADe181a360 --and Tipo = 0
GROUP BY CodProyecto
)DE181A360
ON DE181A360.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
select CodProyecto,isnull(SUM(Monto),0)Saldo 
from F400 WHERE FechaVencimiento >= @DFECHADe361amas AND FechaVencimiento<= @DHFECHADe1a5anos --and Tipo = 0
GROUP BY CodProyecto 
)DE360Amas
ON DE360Amas.CodProyecto = F100.Consecutivo 
left join
(
SELECT max(F600.Nombre) NOMBREASESOR,CodProyecto FROM F600 
group by CodProyecto 
)
ASESOR
ON ASESOR.CodProyecto = F100.Consecutivo 
left join
(
SELECT max(F601.Nombre) NOMBREASESOR,CodProyecto FROM F601 
group by CodProyecto 
)
COBRADOR
ON COBRADOR.CodProyecto = F100.Consecutivo 
left join
(
select max(Fecha)Fecha,CodProyecto from F200-- where Tipo = 0
group by CodProyecto 
)FechaProyecto
on FechaProyecto.CodProyecto = F100.Consecutivo 
--WHERE --F100.FechaEstimadaCierre BETWEEN @FECHADESDE AND @FECHAHASTA-- AND F100.MostrarTablaAvance = 0 
--AND 
--F100.Consecutivo = 183
order by Codigo 

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RE_EstadodeCuentaGeneralProyectos]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


SELECT 
CLIENTE CLIENTE,
Nombre NOMBRE,
Codigo PROYECTO,
Proyecto NOMBREDELCONTRATO,
CASE Moneda WHEN 0 THEN 'Colones' else 'Dolares' end MONEDA,
ISNULL(MONTOPROYECTO.Monto,0) MONTOCONTRATO,
ISNULL(FACTURADO.MONTO,0) MONTOFACTURADO,
(ISNULL(MONTOPROYECTO.Monto,0)-ISNULL(FACTURADO.MONTO,0)) PENDIENTEFACTURAR,
ISNULL(TOTALABONADO.MONTO,0) TOTALABONADO,
ISNULL(MONTOPROYECTO.Monto-TOTALABONADO.MONTO,0)SALDOPENDIENTE
FROM F100 
LEFT JOIN 
(
SELECT Monto,CodProyecto FROM F200 WHERE Tipo = 0
)MONTOPROYECTO
ON MONTOPROYECTO.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
SELECT SUM(MontoUtilizado)MONTO,CodProyecto FROM F500 WHERE (Documento LIKE '%FA%' OR Documento LIKE '%ND%')
GROUP BY CodProyecto
)FACTURADO
ON FACTURADO.CodProyecto = F100.Consecutivo 
LEFT JOIN
(
SELECT SUM(cMonto)MONTO,F500.CodProyecto FROM F500, siawin28..CC10,siawin28..CC12 WHERE
F500.Documento = CC10.sLlave collate Modern_Spanish_CI_AS
AND CC10.sNumero_Documento = CC12.sFactura
AND CC10.sTipo_Documento = CC12.sTipo_Documento
AND CC10.sCliente = CC12.sCodigo 
AND SUBSTRING(CC12.sRecibo,1,1) <> '-'
GROUP BY F500.CodProyecto
)TOTALABONADO
ON TOTALABONADO.CodProyecto = F100.Consecutivo


--SELECT SUM(cMonto) FROM F500, siawin28..CC10,siawin28..CC12 WHERE
--F500.Documento = CC10.sLlave 
--AND CC10.sNumero_Documento = CC12.sFactura
--AND CC10.sTipo_Documento = CC12.sTipo_Documento
--AND CC10.sCliente = CC12.sCodigo 
--AND SUBSTRING(CC12.sRecibo,1,1) <> '-' AND F500.CodProyecto = 2


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RDR00_PlandePagosPorProyecto]
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT CodProyecto Proyecto,FechaVencimiento,Monto,Saldo,
CASE Moneda when 0 then 'Colones' else 'Dolares' end Moneda FROM F400 
WHERE CodProyecto = @CodProyecto
ORDER BY CodProyecto,FechaVencimiento ASC

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[IN04_Rotaciones_Total]
@FECHA1 DATETIME ,
@FECHA2 DATETIME ,
@Proveedor varchar(15),
@CodigoProducto varchar(20),
@DescripcionInventario varchar(50)

as

SELECT * FROM (
SELECT

''CodigoProducto, 'TOTALES GENERALES:'DescripcionInventario, 
SUM(CostoCR)CostoCR

, SUM(PrecioIVI)PrecioIVI , 
SUM(CAST(case when PrecioIVI <= 0 then 0 else (PrecioIVI - CostoCR)/PrecioIVI end AS DECIMAL(18,2))) Porcentaje,
SUM(Margen)Margen--, Porcentaje--,
, SUM(SaldoAnterior)SaldoAnterior, SUM(UnidadesCompradas)UnidadesCompradas
,
SUM(TotalCompras)TotalCompras, SUM(UnidadesNetas)UnidadesNetas,SUM( VentaNetas)VentaNetas,
 SUM(CostoVentas)CostoVentas,SUM(TotalInventario)TotalInventario,CAST(SUM(CostoCR * TotalInventario) AS DECIMAL(18,2))TotalCostoInventario, SUM(Utilidad)Utilidad
, 
SUM(((VentaNetas - CostoVentas)/ case VentaNetas when 0 then 1 else VentaNetas end)* 100) PorcentajeUti, 
SUM( Promedio)Promedio, '' sCodigo_Barras 
,SUM(Definitivo)Definitivo
FROM (
SELECT --TOP 10
IN04.sCodigo_Producto CodigoProducto,sDescripcion_Inventario DescripcionInventario,
CASE WHEN IN04.cUltimoCambio <= 400 THEN 
CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC) END)  AS DECIMAL(18,2)) 
ELSE
CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC ) ELSE IN04.cUltimoCambio END)  AS DECIMAL(18,2)) 
END CostoCR, 
CAST(CASE BMONEDA WHEN 0 THEN (cPrecio_Publico / (CASE  WHEN IN04.cUltimoCambio <= 400 THEN (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC ) ELSE IN04.cUltimoCambio END) ) ELSE cPrecio_Publico END AS DECIMAL(18,2)) PrecioIVI,

CAST(CASE BMONEDA WHEN 0 THEN (cPrecio_Publico / (CASE WHEN IN04.cUltimoCambio <= 400 THEN (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC ) ELSE IN04.cUltimoCambio END) ) ELSE cPrecio_Publico END 
-
(cCosto_Nor / (CASE WHEN IN04.cUltimoCambio <= 400 THEN (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC ) ELSE IN04.cUltimoCambio END) ) AS DECIMAL(18,2)) Margen, 

CASE cPrecio_Publico WHEN 0 THEN 0 ELSE
(1-(CAST(CASE cPrecio_Publico WHEN 0 THEN 0 ELSE  CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE IN04.cUltimoCambio END)  AS DECIMAL(18,2)) END
/
CASE cPrecio_Publico WHEN 0 THEN 1 ELSE  CAST(CASE BMONEDA WHEN 0 THEN 
(cPrecio_Publico / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE IN04.cUltimoCambio END) ) ELSE cPrecio_Publico END AS DECIMAL(18,2)) END
AS DECIMAL (18,2))))*100

END

Porcentaje,
ISNULL(SALDOANTERIOR.SaldoAnterior,0) SaldoAnterior,
--COMPRAS.Fecha,
ISNULL(COMPRAS.TotalCompras,0)UnidadesCompradas,
CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE IN04.cUltimoCambio END)  AS DECIMAL(18,2)) * ISNULL(COMPRAS.TotalCompras,0)TotalCompras,
ISNULL(VENTANETA.UnidadesNetas,0)UnidadesNetas,

CAST(ISNULL(VENTANETA.VentaNeta,0) AS DECIMAL(18,2)) VentaNetas,
ISNULL(VENTANETA.CostoNeto,0) CostoVentas  ,
INVENTARIO.TotalInventario 
,
CAST(
CAST(ISNULL(VENTANETA.VentaNeta,0) AS DECIMAL(18,2)) - 
ISNULL(VENTANETA.CostoNeto,0)
AS DECIMAL(18,2)) Utilidad,

CASE WHEN ISNULL(VENTANETA.VentaNeta,0)  <= 0 THEN 0 ELSE CAST((1- CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE IN04.cUltimoCambio END)  AS DECIMAL(18,2)) * ISNULL(VENTANETA.UnidadesNetas,0)
/ CAST((CASE ISNULL(VENTANETA.VentaNeta,0) WHEN 0 THEN 1 ELSE CAST(ISNULL(VENTANETA.VentaNeta,0) AS DECIMAL(18,2)) END)
AS DECIMAL(18,2)))*100 AS DECIMAL(18,2))  END UtilidadP,

CAST(ISNULL(VENTANETA.UnidadesNetas,0) / DATEDIFF(MONTH, @FECHA1, @FECHA2)AS DECIMAL(18,2)) Promedio,
ISNULL(DEFINITIVO.Cantidad,0) Definitivo,
in04.sCodigo_Barras
FROM siawin0..IN04 
LEFT JOIN
(
SELECT sCodigo_Producto , iAnio, iMesCierre , SUM(cSaldoCierre)SaldoAnterior  FROM siawin0..IN34
WHERE sCodigo_Bodega IN ('01','02','71','72','11','21')
GROUP BY sCodigo_Producto , iAnio, iMesCierre 
)SALDOANTERIOR ON 
SALDOANTERIOR.iAnio = YEAR(DATEADD(month,-1,@FECHA1)) AND 
SALDOANTERIOR.iMesCierre = MONTH((DATEADD(month,-1,@FECHA1))) AND 
SALDOANTERIOR.sCodigo_Producto = IN04.sCodigo_Producto 
LEFT JOIN
(
SELECT sCodigo_Producto
--,CAST (dFecha_Movimiento AS DATE)Fecha,
 ,SUM(IN14.iCantidad)TotalCompras  from siawin0..IN13 (nolock),siawin0..IN14 (nolock)
Where 
IN13.sCodigo_Movimiento = '01'
AND In13.sLlave = In14.sLlave
AND IN13.dFecha_Movimiento BETWEEN CAST(YEAR(@FECHA1)AS CHAR(4))+'-'+ CAST(MONTH(@FECHA1)AS CHAR(2))+ '-01'
AND @FECHA2
AND IN13.bConfirmado > 0
GROUP BY sCodigo_Producto--,CAST (dFecha_Movimiento AS DATE)
)COMPRAS ON
COMPRAS.sCodigo_Producto = IN04.sCodigo_Producto

LEFT JOIN
(
SELECT CodigoProducto, Cantidad FROM RT00 
)DEFINITIVO on DEFINITIVO.CodigoProducto = IN04.sCodigo_Producto collate SQL_Latin1_General_CP1_CI_AS

LEFT JOIN
(
Select IN04.sCodigo_Producto CodigoProducto
,SUM(Ventas.VentaNeta)VentaNeta,SUM(Ventas.CostoNeto)CostoNeto,SUM(Ventas.UnidadesNetas)UnidadesNetas
FROM siawin0..IN04 with(nolock),siawin0..IN03 with(nolock),
(
Select sCodigo_Producto as sCodigo_Producto,Anio,Mes,Tipo
,Sum(VentaNeta) as VentaNeta,Sum(CostoNeto) as CostoNeto,Sum(UnidadesNetas) as UnidadesNetas,sPeriodo
FROM
(
Select IN04.sCodigo_Producto,year(fa00.dFecha) as Anio,month(fa00.dFecha) as Mes,
sum ( Fa01.cCantidad * Fa01.cPrecioNeto  / (CASE FA00.ITIPO_MONEDA WHEN 1 THEN 1 ELSE FA00.CTIPO_CAMBIO_SISTEMA END) ) as VentaNeta,
sum (( Fa01.cCantidad *  Fa01.cCosto ) / (CASE FA00.ITIPO_MONEDA WHEN 1 THEN 1 ELSE FA00.CTIPO_CAMBIO_SISTEMA END) ) as CostoNeto,
sum ( Fa01.cCantidad ) as UnidadesNetas,
0 as Tipo,0 as sPeriodo
From siawin0..IN04 with(nolock),siawin0..FA00 with(nolock),siawin0..FA01 with(nolock)
Where ( (FA00.dFecha BETWEEN CAST(YEAR(@FECHA1)AS CHAR(4))+'-'+ CAST(MONTH(@FECHA1)AS CHAR(2))+ '-01'
AND @FECHA2)
)
AND FA00.sFactura > ''
And FA00.sTipoFactura <> 'AN'
AND FA00.sPedido = FA01.sPedido
AND FA01.sProductoCombo = ''
--AND ( IN04.sCodigo_Producto = 'BR-72016       ' )
AND FA01.sCodigo_Producto = IN04.sCodigo_Producto
Group by In04.sCodigo_Producto,year(FA00.dFecha),month(FA00.dFecha)
UNION ALL
Select In04.sCodigo_Producto,year(in13.dFecha_Movimiento) as Anio,Month(In13.dFecha_Movimiento) as Mes,
sum ( -IN14.icantidad * In14.cCosto_Unitario * ( 1- IN14.cDescuento01/100 ) * ( 1- IN14.cDescuento02/100 )  / (CASE IN13.bTipo_Moneda WHEN 1 THEN 1 ELSE IN13.cTipo_Cambio END )) as VentaNeta,
sum ( -IN14.icantidad * In14.cCosto_Nc / IN13.cTipo_Cambio) as CostoNeto,
sum ( -In14.icantidad) as UnidadesNetas,
0 as Tipo, 0 as sPeriodo
FROM siawin0..IN04 with(nolock),siawin0..IN13 with(nolock),siawin0..IN14 with(nolock)
WHERE IN13.sCodigo_Movimiento = '05'
AND ((IN13.dFecha_Movimiento BETWEEN CAST(YEAR(@FECHA1)AS CHAR(4))+'-'+ CAST(MONTH(@FECHA1)AS CHAR(2))+ '-01'
AND @FECHA2)
)
AND IN13.sLlave = IN14.sLlave
AND IN13.bConfirmado > 0
AND IN14.sProductoCombo = ''
--AND ( IN04.sCodigo_Producto = 'BR-72016       ' )
AND IN14.sCodigo_Producto = IN04.sCodigo_Producto
Group by In04.sCodigo_Producto,year(in13.dFecha_Movimiento),month(in13.dFecha_Movimiento)
) Vista
Group by sCodigo_Producto,Tipo,Anio,Mes,sPeriodo) Ventas
WHERE Ventas.sCodigo_Producto = in04.sCodigo_Producto
AND IN04.sUnid_Medida = IN03.sCodigo
GROUP BY IN04.sCodigo_Producto


)VENTANETA ON VENTANETA.CodigoProducto = IN04.sCodigo_Producto 
LEFT JOIN
(

SELECT in11.sCodigo_Producto CodigoProducto, SUM(IN11.iSaldo_Mes + in11.iSaldo_Mes_Anterior) TotalInventario FROM siawin0..in11
GROUP BY sCodigo_Producto 
) INVENTARIO ON INVENTARIO.CodigoProducto = IN04.sCodigo_Producto 
where sProveedor IN 
(
SELECT CodigoProveedor  COLLATE SQL_Latin1_General_CP1_CI_AS FROM RT01 WHERE ESTADO = 1
)
AND IN04.sCodigo_Producto LIKE RTRIM(@CodigoProducto) + '%'
AND IN04.sDescripcion_Inventario LIKE RTRIM(@DescripcionInventario)+ '%'

--@Proveedor -- '110' --and in04.sCodigo_Producto = 'BR-72016       '
)VISTA 

) VISTA5

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[IN04_Rotaciones_PMI]

AS



SELECT *,DATEADD(MONTH,Diferencia,getdate())FechaPedido FROM (

Select Ventas.sProveedor CodigoProveedor,CP01.sNombre NombreProveedor
,Ventas.CostoNeto, FECHAS.FechaMovimiento , DATEDIFF(MONTH, FECHAS.FechaMovimiento , GETDATE())Meses,
isnull(Ventas.CostoNeto ,0) / 
case when DATEDIFF(MONTH, FECHAS.FechaMovimiento , GETDATE()) = 0 
then 1 else DATEDIFF(MONTH, FECHAS.FechaMovimiento , GETDATE()) end Promedio
, SALDOS.CostoInventario  ,
FLOOR(SALDOS.CostoInventario  / (isnull(Ventas.CostoNeto ,0) / 
case when DATEDIFF(MONTH, FECHAS.FechaMovimiento , GETDATE()) = 0 
then 1 else DATEDIFF(MONTH, FECHAS.FechaMovimiento , GETDATE()) end)) PMI
, ISNULL(ROTACION.MesTransito,0) MesTransito,
FLOOR(SALDOS.CostoInventario  / (isnull(Ventas.CostoNeto ,0) / 
case when DATEDIFF(MONTH, FECHAS.FechaMovimiento , GETDATE()) = 0 
then 1 else DATEDIFF(MONTH, FECHAS.FechaMovimiento , GETDATE()) end)) 
- ISNULL(ROTACION.MesTransito,0) Diferencia

FROM siawin0..CP01 with(nolock),
(
Select sProveedor 
,Sum(CostoNeto) as CostoNeto
FROM
(
Select IN04.sProveedor,
sum (( Fa01.cCantidad *  Fa01.cCosto ) / (CASE FA00.ITIPO_MONEDA WHEN 1 THEN 1 ELSE FA00.CTIPO_CAMBIO_SISTEMA END) ) as CostoNeto
From siawin0..IN04 with(nolock),siawin0..FA00 with(nolock),siawin0..FA01 with(nolock)
Where ( (FA00.dFecha BETWEEN 
isnull((
SELECT MAX(dFecha_Movimiento)FechaMovimiento  
FROM siawin0..IN13 INNN with(nolock)
WHERE
bConfirmado = 1 AND
sCodigo_Movimiento = '01' and INNN.sCodigo_Proveedor = IN04.sProveedor
GROUP BY sCodigo_Proveedor 
), GETDATE())

AND GETDATE())
)
AND FA00.sFactura > ''
And FA00.sTipoFactura <> 'AN'
AND FA00.sPedido = FA01.sPedido
AND FA01.sProductoCombo = ''
AND FA01.sCodigo_Producto = IN04.sCodigo_Producto
Group by IN04.sProveedor
UNION ALL
Select In04.sProveedor,
sum ( -IN14.icantidad * In14.cCosto_Nc / IN13.cTipo_Cambio) as CostoNeto
FROM siawin0..IN04 with(nolock),siawin0..IN13 with(nolock),siawin0..IN14 with(nolock)
WHERE IN13.sCodigo_Movimiento = '05'
AND ((IN13.dFecha_Movimiento BETWEEN 
isnull((
SELECT MAX(dFecha_Movimiento)FechaMovimiento  
FROM siawin0..IN13 INNN with(nolock)
WHERE
bConfirmado = 1 AND
sCodigo_Movimiento = '01' and INNN.sCodigo_Proveedor = IN04.sProveedor
GROUP BY sCodigo_Proveedor 
), GETDATE())
AND GETDATE())
)
AND IN13.sLlave = IN14.sLlave
AND IN13.bConfirmado > 0
AND IN14.sProductoCombo = ''
AND IN14.sCodigo_Producto = IN04.sCodigo_Producto
Group by IN04.sProveedor
) Vista
Group by sProveedor) Ventas
LEFT JOIN
(
SELECT INNN.sCodigo_Proveedor CodigoProveedor, MAX(dFecha_Movimiento)FechaMovimiento  
FROM siawin0..IN13 INNN with(nolock)
WHERE 
bConfirmado = 1 AND
sCodigo_Movimiento = '01' --and INNN.sCodigo_Proveedor = IN04.sProveedor
GROUP BY sCodigo_Proveedor 
) FECHAS ON FECHAS.CodigoProveedor = Ventas.sProveedor 
LEFT JOIN
(
SELECT CodigoProveedor, MesTransito FROM RT01 
) ROTACION  on ROTACION.CodigoProveedor = Ventas.sProveedor COLLATE SQL_Latin1_General_CP1_CI_AS
LEFT JOIN
(


SELECT sProveedor, SUM(SaldoInventario * Costo) CostoInventario FROM (
SELECT IN04.sProveedor, IN04.sCodigo_Producto , SUM( (IN11.iSaldo_Mes + IN11.iSaldo_Mes_Anterior) 

 )SaldoInventario,CASE WHEN IN04.cUltimoCambio <= 400 THEN IN04.cCosto_Nor / (SELECT TOP 1 cVenta FROM SIAWIN0..DBT60 ORDER BY dFecha DESC )
ELSE IN04.cCosto_Nor / IN04.cUltimoCambio END

 Costo
FROM SIAWIN0..IN04 with(nolock), SIAWIN0..IN11 with(nolock) 
WHERE IN04.sCodigo_Producto = IN11.sCodigo_Producto and
IN11.sCodigo_Bodega IN ('01','02','71','72','11','21')
group by IN04.sProveedor,IN04.sCodigo_Producto, IN04.cCosto_Nor, IN04.cUltimoCambio 
)VISTA 
group by sProveedor
)SALDOS ON SALDOS.sProveedor = Ventas.sProveedor 

WHERE Ventas.sProveedor = CP01.sCodigo_Proveedor
--Order by FECHAS.FechaMovimiento DESC
)VISTA
ORDER BY CostoInventario DESC


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view LP_GlobalWeb as 

SELECT * FROM (
SELECT Sum(SALDOS.Saldo)Saldo,SALDOS.sCodigo_Producto,
SALDOS.DescripcionProducto,SALDOS.PrecioVenta,SALDOS.Moneda,SALDOS.CodGrupo,SALDOS.NombreGrupo 
,SALDOS.CODIMAGEN,
(select sDatosTecnicos from siawin0..IN04 where IN04.sCodigo_Producto = SALDOS.sCodigo_Producto )DatosTecnicos,
SALDOS.sCodigo_Proveedor,SALDOS.sNombre 
FROM siawin0..IN00 
LEFT JOIN 
(
SELECT IN11.sCodigo_Producto,IN11.sCodigo_Bodega,IN11.iSaldo_Mes+IN11.iSaldo_Mes_Anterior Saldo,
IN04.sDescripcion_Inventario DescripcionProducto,IN01.sGrupo CodGrupo,IN01.sDescripcion NombreGrupo,
IN04.cPrecio_Publico PrecioVenta,case IN04.bMoneda when 0 then 'Colones' else 'Dolares' end Moneda,
(SELECT TOP 1 WIM.IMName  FROM WIM WHERE  WIM.CodigoProducto = IN04.sCodigo_Producto COLLATE SQL_Latin1_General_CP1_CI_AS   ) CODIMAGEN
,CP01.sCodigo_Proveedor,CP01.sNombre 
FROM siawin0..IN11,siawin0..IN04,siawin0..IN01,siawin0..CP01
WHERE 
IN11.sCodigo_Producto = IN04.sCodigo_Producto AND
IN04.sCodigo_Producto IN (SELECT  WIM.CodigoProducto COLLATE SQL_Latin1_General_CP1_CI_AS FROM WIM ) AND
IN04.sGrupo = IN01.sGrupo and
IN04.sProveedor = CP01.sCodigo_Proveedor 
)
SALDOS ON SALDOS.sCodigo_Bodega = IN00.sCodigo 
WHERE
bPermiteVender = 1 

GROUP BY SALDOS.sCodigo_Producto,
SALDOS.DescripcionProducto,SALDOS.PrecioVenta,SALDOS.Moneda,SALDOS.CodGrupo,SALDOS.NombreGrupo ,
SALDOS.sCodigo_Proveedor,SALDOS.sNombre
,SALDOS.CODIMAGEN 
)VISTA WHERE Saldo IS NOT NULL
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT * FROM RT00

CREATE PROCEDURE [dbo].[IN04_Rotaciones_INSERT]
@Tipo INT,
@ID int,
@Proveedor varchar(15),
@CodigoProducto varchar(15),
@Cantidad decimal(18,2),
@QuienModifico varchar(30)

as

BEGIN TRANSACTION

BEGIN TRY

IF @Tipo = 0
BEGIN
IF (SELECT COUNT(*) FROM RT00 WHERE CodigoProducto = @CodigoProducto) = 0
BEGIN 
INSERT INTO RT00 VALUES ( @Proveedor, @CodigoProducto, @Cantidad, @QuienModifico, GETDATE())
END
ELSE
BEGIN
UPDATE RT00 SET 
Cantidad = @Cantidad,
QuienModifico = @QuienModifico,
FechaModifico = GETDATE()
WHERE
CodigoProducto = @CodigoProducto
END
END
else
begin
UPDATE RT00 SET 
Cantidad = 0,
QuienModifico = @QuienModifico,
FechaModifico = GETDATE()
WHERE
Proveedor 
IN
(
SELECT CodigoProducto FROM RT01 
)

end


SELECT 'CORRECTO'
COMMIT 
END TRY
BEGIN CATCH
SELECT 'ERROR'
ROLLBACK
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DECLARE @FECHA1 DATETIME = '2014-01-01'
--DECLARE @FECHA2 DATETIME = '2014-07-01'
--DECLARE @Proveedor varchar(15)= ''
--DECLARE @CodigoProducto varchar(20)= ''
--DECLARE @DescripcionInventario varchar(50)= ''


CREATE procedure [dbo].[IN04_Rotaciones]
@FECHA1 DATETIME ,
@FECHA2 DATETIME ,
@Proveedor varchar(15),
@CodigoProducto varchar(20),
@DescripcionInventario varchar(50)
--,
--@Filtro varchar(max)

as

DECLARE @QUERY VARCHAR(MAX) = ''

--SET @QUERY = 

--'SELECT * FROM (

--SELECT

--CodigoProducto, DescripcionInventario, 
--CostoCR 

--, PrecioIVI , 
--CAST(case when PrecioIVI <= 0 then 0 else (PrecioIVI - CostoCR)/PrecioIVI end AS DECIMAL(18,2)) Porcentaje,
--Margen
--, SaldoAnterior, UnidadesCompradas
--,
--TotalCompras, UnidadesNetas, VentaNetas, CAST(CostoVentas AS DECIMAL(18,2))CostoVentas , TotalInventario,CAST(CostoCR * TotalInventario AS DECIMAL(18,2))TotalCostoInventario, Utilidad
--, 
--((VentaNetas - CostoVentas)/ case VentaNetas when 0 then 1 else VentaNetas end)* 100 PorcentajeUti, Promedio, sCodigo_Barras 
--,Definitivo 
--FROM (
--SELECT 
--IN04.sCodigo_Producto CodigoProducto,sDescripcion_Inventario DescripcionInventario,
--CASE WHEN IN04.cUltimoCambio <= 400 THEN 
--CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC) END)  AS DECIMAL(18,2)) 
--ELSE
--CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC ) ELSE IN04.cUltimoCambio END)  AS DECIMAL(18,2)) 
--END CostoCR, 
--CAST(CASE BMONEDA WHEN 0 THEN (cPrecio_Publico / (CASE  WHEN IN04.cUltimoCambio <= 400 THEN (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC ) ELSE IN04.cUltimoCambio END) ) ELSE cPrecio_Publico END AS DECIMAL(18,2)) PrecioIVI,

--CAST(CASE BMONEDA WHEN 0 THEN (cPrecio_Publico / (CASE WHEN IN04.cUltimoCambio <= 400 THEN (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC ) ELSE IN04.cUltimoCambio END) ) ELSE cPrecio_Publico END 
---
--(cCosto_Nor / (CASE WHEN IN04.cUltimoCambio <= 400 THEN (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC ) ELSE IN04.cUltimoCambio END) ) AS DECIMAL(18,2)) Margen, 

--CASE cPrecio_Publico WHEN 0 THEN 0 ELSE
--(1-(CAST(CASE cPrecio_Publico WHEN 0 THEN 0 ELSE  CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE IN04.cUltimoCambio END)  AS DECIMAL(18,2)) END
--/
--CASE cPrecio_Publico WHEN 0 THEN 1 ELSE  CAST(CASE BMONEDA WHEN 0 THEN 
--(cPrecio_Publico / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE IN04.cUltimoCambio END) ) ELSE cPrecio_Publico END AS DECIMAL(18,2)) END
--AS DECIMAL (18,2))))*100

--END

--Porcentaje,
--ISNULL(SALDOANTERIOR.SaldoAnterior,0) SaldoAnterior,
--ISNULL(COMPRAS.TotalCompras,0)UnidadesCompradas,
--CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE IN04.cUltimoCambio END)  AS DECIMAL(18,2)) * ISNULL(COMPRAS.TotalCompras,0)TotalCompras,
--ISNULL(VENTANETA.UnidadesNetas,0)UnidadesNetas,

--CAST(ISNULL(VENTANETA.VentaNeta,0) AS DECIMAL(18,2)) VentaNetas,
--ISNULL(VENTANETA.CostoNeto,0) CostoVentas  ,
--INVENTARIO.TotalInventario 
--,
--CAST(
--CAST(ISNULL(VENTANETA.VentaNeta,0) AS DECIMAL(18,2)) - 
--ISNULL(VENTANETA.CostoNeto,0)
--AS DECIMAL(18,2)) Utilidad,

--CASE WHEN ISNULL(VENTANETA.VentaNeta,0)  <= 0 THEN 0 ELSE CAST((1- CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE IN04.cUltimoCambio END)  AS DECIMAL(18,2)) * ISNULL(VENTANETA.UnidadesNetas,0)
--/ CAST((CASE ISNULL(VENTANETA.VentaNeta,0) WHEN 0 THEN 1 ELSE CAST(ISNULL(VENTANETA.VentaNeta,0) AS DECIMAL(18,2)) END)
--AS DECIMAL(18,2)))*100 AS DECIMAL(18,2))  END UtilidadP,

--CAST(ISNULL(VENTANETA.UnidadesNetas,0) / DATEDIFF(MONTH, @FECHA1, @FECHA2)AS DECIMAL(18,2)) Promedio,
--ISNULL(DEFINITIVO.Cantidad,0) Definitivo,
--in04.sCodigo_Barras
--FROM siawin0..IN04 
--LEFT JOIN
--(
--SELECT sCodigo_Producto , iAnio, iMesCierre , SUM(cSaldoCierre)SaldoAnterior  FROM siawin0..IN34
--WHERE sCodigo_Bodega IN (''01'',''02'',''71'',''72'',''11'',''21'')
--GROUP BY sCodigo_Producto , iAnio, iMesCierre 
--)SALDOANTERIOR ON 
--SALDOANTERIOR.iAnio = YEAR(DATEADD(month,-1,@FECHA1)) AND 
--SALDOANTERIOR.iMesCierre = MONTH((DATEADD(month,-1,@FECHA1))) AND 
--SALDOANTERIOR.sCodigo_Producto = IN04.sCodigo_Producto 
--LEFT JOIN
--(
--SELECT sCodigo_Producto
-- ,SUM(IN14.iCantidad)TotalCompras  from siawin0..IN13 (nolock),siawin0..IN14 (nolock)
--Where 
--IN13.sCodigo_Movimiento = '01'
--AND In13.sLlave = In14.sLlave
--AND IN13.dFecha_Movimiento BETWEEN CAST(YEAR(@FECHA1)AS CHAR(4))+'-'+ CAST(MONTH(@FECHA1)AS CHAR(2))+ '-01'
--AND @FECHA2
--AND IN13.bConfirmado > 0
--GROUP BY sCodigo_Producto
--)COMPRAS ON
--COMPRAS.sCodigo_Producto = IN04.sCodigo_Producto

--LEFT JOIN
--(
--SELECT CodigoProducto, Cantidad FROM RT00 
--)DEFINITIVO on DEFINITIVO.CodigoProducto = IN04.sCodigo_Producto collate SQL_Latin1_General_CP1_CI_AS

--LEFT JOIN
--(
--Select IN04.sCodigo_Producto CodigoProducto
--,SUM(Ventas.VentaNeta)VentaNeta,SUM(Ventas.CostoNeto)CostoNeto,SUM(Ventas.UnidadesNetas)UnidadesNetas
--FROM siawin0..IN04 with(nolock),siawin0..IN03 with(nolock),
--(
--Select sCodigo_Producto as sCodigo_Producto,Anio,Mes,Tipo
--,Sum(VentaNeta) as VentaNeta,Sum(CostoNeto) as CostoNeto,Sum(UnidadesNetas) as UnidadesNetas,sPeriodo
--FROM
--(
--Select IN04.sCodigo_Producto,year(fa00.dFecha) as Anio,month(fa00.dFecha) as Mes,
--sum ( Fa01.cCantidad * Fa01.cPrecioNeto  / (CASE FA00.ITIPO_MONEDA WHEN 1 THEN 1 ELSE FA00.CTIPO_CAMBIO_SISTEMA END) ) as VentaNeta,
--sum (( Fa01.cCantidad *  Fa01.cCosto ) / (CASE FA00.ITIPO_MONEDA WHEN 1 THEN 1 ELSE FA00.CTIPO_CAMBIO_SISTEMA END) ) as CostoNeto,
--sum ( Fa01.cCantidad ) as UnidadesNetas,
--0 as Tipo,0 as sPeriodo
--From siawin0..IN04 with(nolock),siawin0..FA00 with(nolock),siawin0..FA01 with(nolock)
--Where ( (FA00.dFecha BETWEEN CAST(YEAR(@FECHA1)AS CHAR(4))+'-'+ CAST(MONTH(@FECHA1)AS CHAR(2))+ '-01'
--AND @FECHA2)
--)
--AND FA00.sFactura > ''
--And FA00.sTipoFactura <> 'AN'
--AND FA00.sPedido = FA01.sPedido
--AND FA01.sProductoCombo = ''
--AND FA01.sCodigo_Producto = IN04.sCodigo_Producto
--Group by In04.sCodigo_Producto,year(FA00.dFecha),month(FA00.dFecha)
--UNION ALL
--Select In04.sCodigo_Producto,year(in13.dFecha_Movimiento) as Anio,Month(In13.dFecha_Movimiento) as Mes,
--sum ( -IN14.icantidad * In14.cCosto_Unitario * ( 1- IN14.cDescuento01/100 ) * ( 1- IN14.cDescuento02/100 )  / (CASE IN13.bTipo_Moneda WHEN 1 THEN 1 ELSE IN13.cTipo_Cambio END )) as VentaNeta,
--sum ( -IN14.icantidad * In14.cCosto_Nc / IN13.cTipo_Cambio) as CostoNeto,
--sum ( -In14.icantidad) as UnidadesNetas,
--0 as Tipo, 0 as sPeriodo
--FROM siawin0..IN04 with(nolock),siawin0..IN13 with(nolock),siawin0..IN14 with(nolock)
--WHERE IN13.sCodigo_Movimiento = '05'
--AND ((IN13.dFecha_Movimiento BETWEEN CAST(YEAR(@FECHA1)AS CHAR(4))+'-'+ CAST(MONTH(@FECHA1)AS CHAR(2))+ '-01'
--AND @FECHA2)
--)
--AND IN13.sLlave = IN14.sLlave
--AND IN13.bConfirmado > 0
--AND IN14.sProductoCombo = ''
--AND IN14.sCodigo_Producto = IN04.sCodigo_Producto
--Group by In04.sCodigo_Producto,year(in13.dFecha_Movimiento),month(in13.dFecha_Movimiento)
--) Vista
--Group by sCodigo_Producto,Tipo,Anio,Mes,sPeriodo) Ventas
--WHERE Ventas.sCodigo_Producto = in04.sCodigo_Producto
--AND IN04.sUnid_Medida = IN03.sCodigo
--GROUP BY IN04.sCodigo_Producto

--)VENTANETA ON VENTANETA.CodigoProducto = IN04.sCodigo_Producto 
--LEFT JOIN
--(

--SELECT in11.sCodigo_Producto CodigoProducto, SUM(IN11.iSaldo_Mes + in11.iSaldo_Mes_Anterior) TotalInventario FROM siawin0..in11
--GROUP BY sCodigo_Producto 
--) INVENTARIO ON INVENTARIO.CodigoProducto = IN04.sCodigo_Producto 
--where sProveedor IN 
--(
--SELECT CodigoProveedor  COLLATE SQL_Latin1_General_CP1_CI_AS FROM RT01 WHERE ESTADO = 1
--)
--AND IN04.sCodigo_Producto LIKE RTRIM(@CodigoProducto) + '%'
--AND IN04.sDescripcion_Inventario LIKE RTRIM(@DescripcionInventario)+ '%'
--)VISTA 

--)VISTA5

--'
--+ @FILTRO 


SELECT * FROM (

SELECT

CodigoProducto, DescripcionInventario, 
CostoCR 

, PrecioIVI , 
CAST(case when PrecioIVI <= 0 then 0 else (PrecioIVI - CostoCR)/PrecioIVI end AS DECIMAL(18,2)) Porcentaje,
Margen
, SaldoAnterior, UnidadesCompradas
,
TotalCompras, UnidadesNetas, VentaNetas, CAST(CostoVentas AS DECIMAL(18,2))CostoVentas , TotalInventario,CAST(CostoCR * TotalInventario AS DECIMAL(18,2))TotalCostoInventario, Utilidad
, 
((VentaNetas - CostoVentas)/ case VentaNetas when 0 then 1 else VentaNetas end)* 100 PorcentajeUti, Promedio, sCodigo_Barras 
,Definitivo 
FROM (
SELECT 
IN04.sCodigo_Producto CodigoProducto,sDescripcion_Inventario DescripcionInventario,
CASE WHEN IN04.cUltimoCambio <= 400 THEN 
CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC) END)  AS DECIMAL(18,2)) 
ELSE
CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC ) ELSE IN04.cUltimoCambio END)  AS DECIMAL(18,2)) 
END CostoCR, 
CAST(CASE BMONEDA WHEN 0 THEN (cPrecio_Publico / (CASE  WHEN IN04.cUltimoCambio <= 400 THEN (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC ) ELSE IN04.cUltimoCambio END) ) ELSE cPrecio_Publico END AS DECIMAL(18,2)) PrecioIVI,

CAST(CASE BMONEDA WHEN 0 THEN (cPrecio_Publico / (CASE WHEN IN04.cUltimoCambio <= 400 THEN (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC ) ELSE IN04.cUltimoCambio END) ) ELSE cPrecio_Publico END 
-
(cCosto_Nor / (CASE WHEN IN04.cUltimoCambio <= 400 THEN (SELECT TOP 1 CVENTA FROM siawin0..DBT60 ORDER BY DFECHA DESC ) ELSE IN04.cUltimoCambio END) ) AS DECIMAL(18,2)) Margen, 

CASE cPrecio_Publico WHEN 0 THEN 0 ELSE
(1-(CAST(CASE cPrecio_Publico WHEN 0 THEN 0 ELSE  CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE IN04.cUltimoCambio END)  AS DECIMAL(18,2)) END
/
CASE cPrecio_Publico WHEN 0 THEN 1 ELSE  CAST(CASE BMONEDA WHEN 0 THEN 
(cPrecio_Publico / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE IN04.cUltimoCambio END) ) ELSE cPrecio_Publico END AS DECIMAL(18,2)) END
AS DECIMAL (18,2))))*100

END

Porcentaje,
ISNULL(SALDOANTERIOR.SaldoAnterior,0) SaldoAnterior,
ISNULL(COMPRAS.TotalCompras,0)UnidadesCompradas,
CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE IN04.cUltimoCambio END)  AS DECIMAL(18,2)) * ISNULL(COMPRAS.TotalCompras,0)TotalCompras,
ISNULL(VENTANETA.UnidadesNetas,0)UnidadesNetas,

CAST(ISNULL(VENTANETA.VentaNeta,0) AS DECIMAL(18,2)) VentaNetas,
ISNULL(VENTANETA.CostoNeto,0) CostoVentas  ,
INVENTARIO.TotalInventario 
,
CAST(
CAST(ISNULL(VENTANETA.VentaNeta,0) AS DECIMAL(18,2)) - 
ISNULL(VENTANETA.CostoNeto,0)
AS DECIMAL(18,2)) Utilidad,

CASE WHEN ISNULL(VENTANETA.VentaNeta,0)  <= 0 THEN 0 ELSE CAST((1- CAST(cCosto_Nor / (CASE IN04.cUltimoCambio WHEN 0 THEN 1 ELSE IN04.cUltimoCambio END)  AS DECIMAL(18,2)) * ISNULL(VENTANETA.UnidadesNetas,0)
/ CAST((CASE ISNULL(VENTANETA.VentaNeta,0) WHEN 0 THEN 1 ELSE CAST(ISNULL(VENTANETA.VentaNeta,0) AS DECIMAL(18,2)) END)
AS DECIMAL(18,2)))*100 AS DECIMAL(18,2))  END UtilidadP,

CAST(ISNULL(VENTANETA.UnidadesNetas,0) / DATEDIFF(MONTH, @FECHA1, @FECHA2)AS DECIMAL(18,2)) Promedio,
ISNULL(DEFINITIVO.Cantidad,0) Definitivo,
in04.sCodigo_Barras
FROM siawin0..IN04 
LEFT JOIN
(
SELECT sCodigo_Producto , iAnio, iMesCierre , SUM(cSaldoCierre)SaldoAnterior  FROM siawin0..IN34
WHERE sCodigo_Bodega IN ('01','02','71','72','11','21')
GROUP BY sCodigo_Producto , iAnio, iMesCierre 
)SALDOANTERIOR ON 
SALDOANTERIOR.iAnio = YEAR(DATEADD(month,-1,@FECHA1)) AND 
SALDOANTERIOR.iMesCierre = MONTH((DATEADD(month,-1,@FECHA1))) AND 
SALDOANTERIOR.sCodigo_Producto = IN04.sCodigo_Producto 
LEFT JOIN
(
SELECT sCodigo_Producto
 ,SUM(IN14.iCantidad)TotalCompras  from siawin0..IN13 (nolock),siawin0..IN14 (nolock)
Where 
IN13.sCodigo_Movimiento = '01'
AND In13.sLlave = In14.sLlave
AND IN13.dFecha_Movimiento BETWEEN CAST(YEAR(@FECHA1)AS CHAR(4))+'-'+ CAST(MONTH(@FECHA1)AS CHAR(2))+ '-01'
AND @FECHA2
AND IN13.bConfirmado > 0
GROUP BY sCodigo_Producto
)COMPRAS ON
COMPRAS.sCodigo_Producto = IN04.sCodigo_Producto

LEFT JOIN
(
SELECT CodigoProducto, Cantidad FROM RT00 
)DEFINITIVO on DEFINITIVO.CodigoProducto = IN04.sCodigo_Producto collate SQL_Latin1_General_CP1_CI_AS

LEFT JOIN
(
Select IN04.sCodigo_Producto CodigoProducto
,SUM(Ventas.VentaNeta)VentaNeta,SUM(Ventas.CostoNeto)CostoNeto,SUM(Ventas.UnidadesNetas)UnidadesNetas
FROM siawin0..IN04 with(nolock),siawin0..IN03 with(nolock),
(
Select sCodigo_Producto as sCodigo_Producto,Anio,Mes,Tipo
,Sum(VentaNeta) as VentaNeta,Sum(CostoNeto) as CostoNeto,Sum(UnidadesNetas) as UnidadesNetas,sPeriodo
FROM
(
Select IN04.sCodigo_Producto,year(fa00.dFecha) as Anio,month(fa00.dFecha) as Mes,
sum ( Fa01.cCantidad * Fa01.cPrecioNeto  / (CASE FA00.ITIPO_MONEDA WHEN 1 THEN 1 ELSE FA00.CTIPO_CAMBIO_SISTEMA END) ) as VentaNeta,
sum (( Fa01.cCantidad *  Fa01.cCosto ) / (CASE FA00.ITIPO_MONEDA WHEN 1 THEN 1 ELSE FA00.CTIPO_CAMBIO_SISTEMA END) ) as CostoNeto,
sum ( Fa01.cCantidad ) as UnidadesNetas,
0 as Tipo,0 as sPeriodo
From siawin0..IN04 with(nolock),siawin0..FA00 with(nolock),siawin0..FA01 with(nolock)
Where ( (FA00.dFecha BETWEEN CAST(YEAR(@FECHA1)AS CHAR(4))+'-'+ CAST(MONTH(@FECHA1)AS CHAR(2))+ '-01'
AND @FECHA2)
)
AND FA00.sFactura > ''
And FA00.sTipoFactura <> 'AN'
AND FA00.sPedido = FA01.sPedido
AND FA01.sProductoCombo = ''
AND FA01.sCodigo_Producto = IN04.sCodigo_Producto
Group by In04.sCodigo_Producto,year(FA00.dFecha),month(FA00.dFecha)
UNION ALL
Select In04.sCodigo_Producto,year(in13.dFecha_Movimiento) as Anio,Month(In13.dFecha_Movimiento) as Mes,
sum ( -IN14.icantidad * In14.cCosto_Unitario * ( 1- IN14.cDescuento01/100 ) * ( 1- IN14.cDescuento02/100 )  / (CASE IN13.bTipo_Moneda WHEN 1 THEN 1 ELSE IN13.cTipo_Cambio END )) as VentaNeta,
sum ( -IN14.icantidad * In14.cCosto_Nc / IN13.cTipo_Cambio) as CostoNeto,
sum ( -In14.icantidad) as UnidadesNetas,
0 as Tipo, 0 as sPeriodo
FROM siawin0..IN04 with(nolock),siawin0..IN13 with(nolock),siawin0..IN14 with(nolock)
WHERE IN13.sCodigo_Movimiento = '05'
AND ((IN13.dFecha_Movimiento BETWEEN CAST(YEAR(@FECHA1)AS CHAR(4))+'-'+ CAST(MONTH(@FECHA1)AS CHAR(2))+ '-01'
AND @FECHA2)
)
AND IN13.sLlave = IN14.sLlave
AND IN13.bConfirmado > 0
AND IN14.sProductoCombo = ''
AND IN14.sCodigo_Producto = IN04.sCodigo_Producto
Group by In04.sCodigo_Producto,year(in13.dFecha_Movimiento),month(in13.dFecha_Movimiento)
) Vista
Group by sCodigo_Producto,Tipo,Anio,Mes,sPeriodo) Ventas
WHERE Ventas.sCodigo_Producto = in04.sCodigo_Producto
AND IN04.sUnid_Medida = IN03.sCodigo
GROUP BY IN04.sCodigo_Producto

)VENTANETA ON VENTANETA.CodigoProducto = IN04.sCodigo_Producto 
LEFT JOIN
(

SELECT in11.sCodigo_Producto CodigoProducto, SUM(IN11.iSaldo_Mes + in11.iSaldo_Mes_Anterior) TotalInventario FROM siawin0..in11
GROUP BY sCodigo_Producto 
) INVENTARIO ON INVENTARIO.CodigoProducto = IN04.sCodigo_Producto 
where sProveedor IN 
(
SELECT CodigoProveedor  COLLATE SQL_Latin1_General_CP1_CI_AS FROM RT01 WHERE ESTADO = 1
)
AND IN04.sCodigo_Producto LIKE RTRIM(@CodigoProducto) + '%'
AND IN04.sDescripcion_Inventario LIKE RTRIM(@DescripcionInventario)+ '%'
)VISTA 

)VISTA5

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F800_delete]
@IDLinea int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DELETE F800 WHERE 
	IDLinea = @IDLinea 
	
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[F800_CargarMovimientos]
@CodProyecto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select IDLinea,sPedido,dFecha,sOrden_Compra,sFactura,sTipoFactura from F800,siawin28..FA00 where 
F800.Movimiento = FA00.sPedido collate Modern_Spanish_CI_AS
 and F800.CodProyecto = @CodProyecto

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GD02_insert]
	@iConsecutivo int,
	@iDepartamento varchar(50),
	@ODP int,
	@Contrato varchar(50),
	@FIngresoProduccion datetime
AS
BEGIN
	SET NOCOUNT ON;
	
	
	insert INTO GD02 VALUES(
	 @iDepartamento,
	 @iConsecutivo,
     @ODP,
     @Contrato,
     @FIngresoProduccion
)
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GD02_delete]
	-- Add the parameters for the stored procedure here
	@IDs int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DELETE GD02 WHERE ID = @IDs


END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GD00_update]
	@iConsecutivo int,
	@iDepartamento char(3),
	@sDescripcion varchar(50),
	@Referencia varchar(75),
	@De varchar(25),
	@Para varchar(25),
	@sQuienIngreso varchar(25),
	@dFechaIngreso datetime,
	@sQuienModifico varchar(20),
	@dFechaModifico datetime,
	@sAlistado varchar(25),
	@sRevisado varchar(25),
	@sDespachado varchar(25),
	@sAutorizado varchar(25),
	@dFechaRecibido varchar(20),
	@Transportista varchar(25),
	@Placa varchar(25),
	@Aplicado bit,
	@Recibido bit,
	@dFechaEnvio varchar(20),
	@EmpresaTransportista varchar(50)	
	AS
BEGIN
	SET NOCOUNT ON;
	
	
	UPDATE GD00 SET
	sDescripcion=@sDescripcion ,
	Referencia=@Referencia ,
	De=@De,
	Para=@Para,
	sQuienIngreso=@sQuienIngreso ,
	dFechaIngreso=@dFechaIngreso ,
	sQuienModifico=@sQuienModifico ,
	dFechaModifico=@dFechaModifico ,
	sAlistado=@sAlistado,
	sRevisado=@sRevisado ,
	sDespachado=@sDespachado, 
	sAutorizado=@sAutorizado ,
	dFechaRecibido=@dFechaRecibido, 
	Transportista=@Transportista ,
	Placa=@Placa ,
	Aplicado=@Aplicado, 
	Recibido=@Recibido ,
	dFechaEnvio=@dFechaEnvio, 
	EmpresaTransportista=@EmpresaTransportista 
	WHERE 	iConsecutivo=@iConsecutivo AND
    iDepartamento=@iDepartamento

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GD00_insert]
	@iDepartamento char(3),
	@sDescripcion varchar(50),
	@Referencia varchar(75),
	@De varchar(25),
	@Para varchar(25),
	@sQuienIngreso varchar(25),
	@dFechaIngreso datetime,
	@sQuienModifico varchar(20),
	@dFechaModifico datetime,
	@sAlistado varchar(25),
	@sRevisado varchar(25),
	@sDespachado varchar(25),
	@sAutorizado varchar(25),
	@dFechaRecibido varchar(20),
	@Transportista varchar(25),
	@Placa varchar(25),
	@Aplicado bit,
	@Recibido bit,
	@dFechaEnvio varchar(20),
	@EmpresaTransportista varchar(50)	
	AS
	
BEGIN TRY
BEGIN TRANSACTION
	SET NOCOUNT ON;
	DECLARE @iConsecutivo int = (SELECT MAX(consecutivo +1) AS TOTAL FROM DB07 WHERE codigo = @iDepartamento  )	
	insert INTO GD00 VALUES(
	@iConsecutivo,
	@iDepartamento, 
	@sDescripcion ,
	@Referencia ,
	@De,
	@Para,
	@sQuienIngreso ,
	@dFechaIngreso ,
	'' ,
	@dFechaModifico ,
	@sAlistado,
	@sRevisado ,
	@sDespachado, 
	@sAutorizado ,
	@dFechaRecibido, 
	@Transportista ,
	@Placa ,
	@Aplicado, 
	@Recibido ,
	@dFechaEnvio, 
	@EmpresaTransportista )
	
	UPDATE DB07 SET
	consecutivo = @iConsecutivo
	WHERE codigo = @iDepartamento
	
	SELECT @iDepartamento,@iConsecutivo
COMMIT TRANSACTION
END TRY

BEGIN CATCH

ROLLBACK TRANSACTION
END CATCH

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GD00_delete]
	@iConsecutivo int,
	@iDepartamento char(3)
	
	AS
BEGIN
	SET NOCOUNT ON;
	
	
	delete GD00 WHERE 	iConsecutivo=@iConsecutivo AND
    iDepartamento=@iDepartamento

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[PER02_INSERT]
--@IDLinea int,
@sCodigo_Usuario char(30),
@IDPermiso int,
@QuienIngreso char(30)

as
begin

SET NOCOUNT ON;
--SET ANSI_WARNINGS OFF;

BEGIN TRANSACTION

BEGIN TRY

DECLARE @IDLinea int = (SELECT ISnull(MAX(IDLinea),0) FROM PER02)+1

BEGIN 
INSERT INTO PER02 VALUES(
@IDLinea,
@sCodigo_Usuario,
@IDPermiso,
@QuienIngreso,
GETDATE())

END

COMMIT
INSERT INTO Bitacora VALUES( GETDATE(),RTRIM(@QuienIngreso) ,'PER02_INSERT','sCodigo_Usuario='+ RTRIM(@sCodigo_Usuario) +',IDPermiso=' + RTRIM(@IDPermiso) +',QuienIngreso='+ RTRIM(@QuienIngreso))
END TRY
BEGIN CATCH
ROLLBACK 
select ERROR_MESSAGE();
END CATCH
end

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[PER02_DELETE]
@sCodigo_Usuario char(30),
@IDPermiso int
as
BEGIN
BEGIN TRANSACTION

BEGIN TRY
DELETE PER02
WHERE sCodigo_Usuario = @sCodigo_Usuario AND IDPermiso=@IDPermiso 

COMMIT
INSERT INTO Bitacora VALUES( GETDATE(),'ProcesoAutomatico' ,'PER02_DELETE','sCodigo_Usuario='+ RTRIM(@sCodigo_Usuario) +',IDPermiso=' + RTRIM(@IDPermiso))
END TRY
BEGIN CATCH
ROLLBACK 
select ERROR_MESSAGE();
END CATCH
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--USE CEM0

--SELECT * FROM CEM0 



--SELECT * INTO PER00 FROM CEM28..PER00
--SELECT * INTO PER01 FROM CEM28..PER01
--SELECT * INTO PER02 FROM CEM28..PER02

--SELECT * FROM PER01 
--SELECT * FROM PER00 
--SELECT * FROM PER02 
create procedure [dbo].[PER00_TipoOpcion] 
@usuario varchar(30),
@Modulo varchar(30),
@formulario varchar(30),
@tipo varchar(30)
as

 SELECT top 1 COUNT(*)FROM PER01,PER00,PER02 WHERE 
 PER01.IDMODULO = PER00.IDMODULO AND
 PER00.IDPERMISO = PER02.IDPERMISO AND
 PER01.DETALLE = @Modulo AND
 PER00.FORMULARIO = @formulario AND
 PER02.SCODIGO_USUARIO = @usuario AND 
 PER00.Tipo = @tipo

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LP_List_and_Gifts] as
SELECT IN00.sCodigo Bodega,IN00.sDescripcion NombreBodega,SALDOS.Saldo,SALDOS.sCodigo_Producto,
SALDOS.DescripcionProducto,SALDOS.PrecioVenta,SALDOS.Moneda,SALDOS.CodGrupo,SALDOS.NombreGrupo 
FROM siawin0..IN00 
LEFT JOIN 
(
SELECT IN11.sCodigo_Producto,IN11.sCodigo_Bodega,IN11.iSaldo_Mes+IN11.iSaldo_Mes_Anterior Saldo,
IN04.sDescripcion_Inventario DescripcionProducto,IN01.sGrupo CodGrupo,IN01.sDescripcion NombreGrupo,
IN04.cPrecio_Publico PrecioVenta,case IN04.bMoneda when 0 then 'Colones' else 'Dolares' end Moneda
FROM siawin0..IN11,siawin0..IN04,siawin0..IN01
WHERE 
IN11.sCodigo_Producto = IN04.sCodigo_Producto AND
IN04.sCodigo_Producto IN (SELECT  WIM.CodigoProducto COLLATE SQL_Latin1_General_CP1_CI_AS FROM WIM ) AND
IN04.sGrupo = IN01.sGrupo 
)
SALDOS ON SALDOS.sCodigo_Bodega = IN00.sCodigo 
WHERE
bPermiteVender = 1 
GROUP BY IN00.sCodigo ,IN00.sDescripcion,SALDOS.Saldo,SALDOS.sCodigo_Producto,
SALDOS.DescripcionProducto,SALDOS.PrecioVenta,SALDOS.Moneda,SALDOS.CodGrupo,SALDOS.NombreGrupo 
ORDER BY sCodigo_Producto 



GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE procedure [dbo].[LP_GlobalWeb1] 
 @Grupo char(30),
 @Proveedor char(30)
 
 as 
 
IF RTRIM(@Grupo) = '' and RTRIM(@Proveedor) = ''
begin 

SELECT * FROM LP_GlobalWeb 

end 
ELSE IF RTRIM(@Grupo) <> '' and RTRIM(@Proveedor) = ''
begin 

SELECT * FROM LP_GlobalWeb WHERE LP_GlobalWeb.CodGrupo = @Grupo 

end 
ELSE IF RTRIM(@Grupo) = '' and RTRIM(@Proveedor) <> ''
begin 

SELECT * FROM LP_GlobalWeb WHERE LP_GlobalWeb.sCodigo_Proveedor = @Proveedor 

end 

ELSE IF RTRIM(@Grupo) <> '' and RTRIM(@Proveedor) <> ''
begin 

SELECT * FROM LP_GlobalWeb WHERE LP_GlobalWeb.CodGrupo = @Grupo and LP_GlobalWeb.sCodigo_Proveedor = @Proveedor

end 



--ALDOS.sDatosTecnicos 
--ORDER BY sCodigo_Producto 

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-----SP EN01-----------------
--Procedure para ingresar,actualizar,eliminar y cargar datos de la tabla de entregas
CREATE PROCEDURE [dbo].[EN01_Datos]
@IDLinea Int,
@Consecutivo varchar(15),
@IdEntrega Int,
@Pedido varchar(20),
@dFecha DateTime,
@sHora VarChar(15),
@Cliente VarChar(80),
@Lugar VarChar(300),
@Asignado VarChar(100),
@Estado Int,
@Tipo VarChar(50),
@user varchar(50),
@UsuarioDigita varchar(50),
@EmpresaTrans varchar(50),
@Tipo_Entrega varchar(20),
@sPedido varchar(20),
@Notas varchar(200),
@Ruta int
AS
SET ANSI_WARNINGS OFF;
DECLARE @FECHA DATETIME = GETDATE()
DECLARE @DESC varchar(200) = ''
	IF (@Tipo = 'SELECT')
		BEGIN			
			SELECT Entrega.IDLinea, Entrega.Consecutivo, Entrega.IdEntrega, Entrega.Pedido, Entrega.dFecha, Entrega.sHora,Entrega.sCliente,Entrega.sLugar,Entrega.sAsignado,Entrega.cEstado,Entrega.UsuarioDigita, 
					Entrega.EmpresaTransportista, Entrega.Tipo_Entrega,Entrega.sPedido,ISNULL(DOC.nombreArchivo,'') Documento, (SELECT COUNT(*) FROM EN01 WHERE Consecutivo = Entrega.Consecutivo)FacturasAsociadas,Entrega.Notas,Entrega.Ruta
			FROM (
				SELECT EN01.IDLinea, EN01.Consecutivo, EN01.IdEntrega, EN01.Pedido, EN01.dFecha, EN01.sHora,EN01.sCliente,EN01.sLugar,EN01.sAsignado,EN01.cEstado,EN01.UsuarioDigita, 
					EN01.EmpresaTransportista, EN01.Tipo_Entrega,EN01.sPedido,EN01.Notas,EN01.Ruta
					FROM EN01
					WHERE EN01.dFecha = @dFecha AND EN01.Tipo_Entrega = @Tipo_Entrega
			)Entrega
			LEFT JOIN
			(
				SELECT IDEntrega NumEntrega,nombreArchivo FROM EN01_Documento
			)DOC ON DOC.NumEntrega = Entrega.IDLinea			
		END
	ELSE IF (@Tipo = 'EXISTENCIA')
		BEGIN
			SELECT COUNT(*) Cant FROM EN01 WHERE Pedido = @Pedido AND dFecha = @dFecha AND Tipo_Entrega = @Tipo_Entrega
		END
	ELSE IF (@Tipo = 'INSERTAR')
		BEGIN
			INSERT INTO EN01 (Consecutivo, IdEntrega, Pedido, dFecha, sHora,sCliente,sLugar,sAsignado,cEstado,UsuarioDigita,
					EmpresaTransportista, Tipo_Entrega,sPedido,QuienIngreso,QuienModifico,FechaIngreso,FechaModifico,Notas,Ruta)
				VALUES (@Consecutivo,@IdEntrega,@Pedido,@dFecha,@sHora,@Cliente,@Lugar,@Asignado,@Estado,@UsuarioDigita, @EmpresaTrans, @Tipo_Entrega,@sPedido,@user,'',GETDATE(),'1900-01-01',@Notas,@Ruta)
				SET @FECHA = GETDATE()
				set @DESC = 'INSERTA DATOS A LA EN01 CONSECUTIVO ' + @Consecutivo + ' FACTURA ' + @Pedido + ' EN LA FECHA ' + CONVERT(VARCHAR(15), @dFecha, 103)
				EXEC DB09_DATOS @user,@Tipo,@DESC,'FRMEN01Asignar',@FECHA,'INSERTAR'
		END
	ELSE IF (@Tipo = 'ACTUALIZA')
		BEGIN
			IF @EmpresaTrans = '' AND @Asignado <> ''
				BEGIN
					SET @EmpresaTrans = (SELECT TOP 1 EmpresaTransportista FROM EN01 WHERE sAsignado = @Asignado AND EmpresaTransportista <> '' ORDER BY IDLinea DESC)
				END
				
			IF (SELECT COUNT(*) FROM EN01 WHERE Pedido = @Pedido AND Consecutivo = @Consecutivo) > 0
				BEGIN
					UPDATE EN01 SET sLugar = @Lugar, sAsignado = @Asignado, cEstado = @Estado, sPedido = @sPedido,EmpresaTransportista = @EmpresaTrans,QuienModifico = @user,FechaModifico = GETDATE(), IdEntrega = @IdEntrega, 
						sHora = @sHora, dFecha = @dFecha, UsuarioDigita = @UsuarioDigita,Notas = @Notas,Ruta = @Ruta
					WHERE Pedido = @Pedido AND Consecutivo = @Consecutivo
				SET @FECHA = GETDATE()
				set @DESC = 'ACTUALIZA DATOS A LA EN01 CONSECUTIVO ' + @Consecutivo + ' FACTURA ' + @Pedido + '. EN LA FECHA ' + CONVERT(VARCHAR(15), @dFecha, 103)
				EXEC DB09_DATOS @user,@Tipo,@DESC,'FRMEN01Asignar',@FECHA,'INSERTAR'
				END
			ELSE
				BEGIN
					INSERT INTO EN01 (Consecutivo, IdEntrega, Pedido, dFecha, sHora,sCliente,sLugar,sAsignado,cEstado,UsuarioDigita,
						EmpresaTransportista, Tipo_Entrega,sPedido,QuienIngreso,QuienModifico,FechaIngreso,FechaModifico,Notas,Ruta)
					VALUES (@Consecutivo,@IdEntrega,@Pedido,@dFecha,@sHora,@Cliente,@Lugar,@Asignado,@Estado,@UsuarioDigita, @EmpresaTrans, @Tipo_Entrega,@sPedido,@user,'',GETDATE(),'1900-01-01',@Notas,@Ruta)
					SET @FECHA = GETDATE()
					set @DESC = 'INSERTA DATOS A LA EN01 CONSECUTIVO ' + @Consecutivo + ' FACTURA ' + @Pedido + ' EN LA FECHA ' + CONVERT(VARCHAR(15), @dFecha, 103)
					EXEC DB09_DATOS @user,@Tipo,@DESC,'FRMEN01Asignar',@FECHA,'Actualiza'
				END
		END
	ELSE IF (@Tipo = 'ELIMINAR')
		BEGIN
			DELETE FROM EN01 WHERE Consecutivo = @Consecutivo
			SET @FECHA = GETDATE()
			set @DESC = 'ELIMINA DATOS A LA EN01 CONSECUTIVO ' + @Consecutivo
			EXEC DB09_DATOS @user,@Tipo,@DESC,'FRMEN01Asignar',@FECHA,'INSERTAR'
		END
	ELSE IF (@Tipo = 'ELIMINAR_FACTURA')
		BEGIN
			DELETE FROM EN01 WHERE IDLinea = @IDLinea AND Pedido = @Pedido AND Consecutivo = @Consecutivo
			SET @FECHA = GETDATE()
			set @DESC = 'ELIMINA FACTURA ' + @Pedido + ' CONSECUTIVO ' + @Consecutivo
			EXEC DB09_DATOS @user,@Tipo,@DESC,'FRMEN01Asignar',@FECHA,'INSERTAR'
		END
	ELSE IF (@Tipo = 'EXISTENCIA_1')
		BEGIN
			SELECT COUNT(*) Cant FROM EN01 WHERE dFecha = @dFecha AND IdEntrega = @IdEntrega AND Tipo_Entrega = @Tipo_Entrega
		END
	ELSE IF (@Tipo = 'RESERVADOS')
		BEGIN
			SELECT COUNT (*) Cantidad, dFecha Fecha,Consecutivo FROM EN01 
				WHERE SUBSTRING (CONVERT(VARCHAR(20),dFecha,103),4,2) = @IDLinea AND SUBSTRING(CONVERT(VARCHAR(20),dFecha,103),7,4) = @IdEntrega AND EN01.Tipo_Entrega = @Tipo_Entrega
				GROUP BY dFecha,Consecutivo
		END	
	ELSE IF (@Tipo = 'SELECT_TODOS')
		BEGIN			
			SELECT Entrega.IDLinea, Entrega.Consecutivo, Entrega.IdEntrega NumEntrega, Entrega.Pedido, Entrega.dFecha, Entrega.sHora,Entrega.sCliente,Entrega.sLugar,Entrega.sAsignado,Entrega.cEstado,Entrega.UsuarioDigita, 
					Entrega.EmpresaTransportista, Entrega.Tipo_Entrega,Entrega.sPedido,ISNULL(DOC.nombreArchivo,'') Documento, Entrega.cEstado Estado1,Entrega.Notas,Entrega.Ruta
			FROM (
				SELECT EN01.IDLinea, EN01.Consecutivo, EN01.IdEntrega, EN01.Pedido, EN01.dFecha, EN01.sHora,EN01.sCliente,EN01.sLugar,EN01.sAsignado,EN01.cEstado,EN01.UsuarioDigita, 
					EN01.EmpresaTransportista, EN01.Tipo_Entrega,EN01.sPedido, EN01.Notas,EN01.Ruta
					FROM EN01
					WHERE EN01.Consecutivo = @Consecutivo AND EN01.Tipo_Entrega = @Tipo_Entrega
			)Entrega
			LEFT JOIN
			(
				SELECT IDEntrega NumEntrega,nombreArchivo FROM EN01_Documento
			)DOC ON DOC.NumEntrega = Entrega.IDLinea			
		END
	ELSE IF (@Tipo = 'ENTREGAS_RESERVADAS')
		BEGIN
			SELECT * FROM 
			(			
				SELECT Consecutivo, IdEntrega, sHora, dFecha, cEstado
				FROM EN01 
				WHERE SUBSTRING (CONVERT(VARCHAR(20),dFecha,103),4,2) = @IDLinea AND SUBSTRING(CONVERT(VARCHAR(20),dFecha,103),7,4) = @IdEntrega AND EN01.Tipo_Entrega = @Tipo_Entrega
				GROUP BY Consecutivo, IdEntrega, sHora, dFecha, cEstado	
			)Entregas
			ORDER BY dFecha, IdEntrega ASC
		END
		ELSE IF (@Tipo = 'DETALLE_TRASLADO')
		BEGIN			
			SELECT * FROM
			(
				SELECT IDLinea,Consecutivo,IdEntrega,Pedido,sLugar,sAsignado,cEstado,UsuarioDigita,Tipo_Entrega,sPedido,Notas 
					FROM EN01 WHERE Consecutivo = @Consecutivo
			)Vista
			INNER JOIN
			(
				SELECT MOV.sNumero_Movimiento,sNumero_Documento,sDetalle,sBodega_Sale,sBodega_Entra,sCodigo_Producto,iCantidad,Descripcion FROM
				(
					SELECT sNumero_Movimiento,sNumero_Documento,sDetalle,sBodega_Sale,sBodega_Entra
					FROM siawin0..IN13 where sCodigo_Movimiento = '03'
				)MOV
				INNER JOIN
				(
					SELECT sNumero_Movimiento,Vista.sCodigo_Producto,iCantidad,Vista1.sDescripcion_Inventario Descripcion FROM
					(
						SELECT sNumero_Movimiento, sCodigo_Producto,iCantidad
						FROM siawin0..IN14 where sCodigo_Movimiento = '03'
					)Vista
					INNER JOIN
					(	
						SELECT sCodigo_Producto, sDescripcion_Inventario FROM siawin0..IN04
					)Vista1 ON Vista1.sCodigo_Producto = Vista.sCodigo_Producto
				)DET ON DET.sNumero_Movimiento = MOV.sNumero_Movimiento
			)Movimientos ON Movimientos.sNumero_Movimiento = Vista.sPedido COLLATE SQL_Latin1_General_CP1_CI_AS
		END
	ELSE IF (@Tipo = 'DATOS_TRASLADO')
		BEGIN			
			SELECT MOV.sNumero_Movimiento,sNumero_Documento,sDetalle,sBodega_Sale,sBodega_Entra,sCodigo_Producto,iCantidad,Descripcion FROM
			(
				SELECT sNumero_Movimiento,sNumero_Documento,sDetalle,sBodega_Sale,sBodega_Entra
					FROM siawin0..IN13 where sCodigo_Movimiento = '03' AND sNumero_Movimiento = @sPedido
			)MOV
			INNER JOIN
			(
				SELECT sNumero_Movimiento,Vista.sCodigo_Producto,iCantidad,Vista1.sDescripcion_Inventario Descripcion FROM
				(
					SELECT sNumero_Movimiento, sCodigo_Producto,iCantidad
						FROM siawin0..IN14 where sCodigo_Movimiento = '03'
				)Vista
				INNER JOIN
				(	
						SELECT sCodigo_Producto, sDescripcion_Inventario FROM siawin0..IN04
				)Vista1 ON Vista1.sCodigo_Producto = Vista.sCodigo_Producto
			)DET ON DET.sNumero_Movimiento = MOV.sNumero_Movimiento
			
		END
	ELSE IF (@Tipo = 'EXISTENCIA_TRAS')
		BEGIN
			SELECT COUNT(*) Cant FROM EN01 WHERE sPedido = @Pedido AND dFecha = @dFecha AND Tipo_Entrega = @Tipo_Entrega
		END
	ELSE IF @Tipo = 'REPROGRAMACION' --Actualiza la reprogramacion
		BEGIN			
			INSERT INTO EN01
				SELECT @Consecutivo,1,Pedido,@dFecha,@sHora,sCliente,@Lugar,@Asignado,cEstado,UsuarioDigita,EmpresaTransportista,'Traslados',@sPedido,@user,'',GETDATE(),'1900-01-01',@Notas,1
					FROM EN01 WHERE sPedido = @sPedido AND Consecutivo = @EmpresaTrans AND Tipo_Entrega = 'Traslados'
			DELETE FROM EN01 WHERE Consecutivo = @EmpresaTrans AND sPedido = @sPedido
			SELECT 'Exito' Resultado
		END
	ELSE IF @Tipo = 'CONTACTOS'
		BEGIN
			SELECT sAsignado Nombre, EmpresaTransportista Telefono 
				FROM EN01 WHERE EmpresaTransportista <> ''
			GROUP BY sAsignado, EmpresaTransportista
		END

GO
ALTER TABLE [dbo].[Audit] ADD  CONSTRAINT [DF__Audit__UpdateDat__619B8048]  DEFAULT (getdate()) FOR [UpdateDate]
GO
