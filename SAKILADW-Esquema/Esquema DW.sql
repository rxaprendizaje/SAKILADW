
CREATE TABLE [dbo].[DimCliente](
	[IDDimClientes] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[Direccion1Tienda] [varchar](50) NOT NULL,
	[Direccion2Tienda] [varchar](50) NULL,
	[DistritoTienda] [varchar](20) NOT NULL,
	[CodigoPostalTienda] [varchar](10) NULL,
	[TelefonoTienda] [varchar](20) NOT NULL,
	[CiudadTienda] [varchar](50) NOT NULL,
	[PaisTienda] [varchar](50) NOT NULL,
	[PrimerNombre] [varchar](45) NOT NULL,
	[Apellidos] [varchar](45) NOT NULL,
	[Direccion1Cliente] [varchar](50) NOT NULL,
	[Direccion2Cliente] [varchar](50) NULL,
	[DistritoCliente] [varchar](20) NOT NULL,
	[CodigoPostalCliente] [varchar](10) NULL,
	[TelefonoCliente] [varchar](20) NOT NULL,
	[CiudadCliente] [varchar](50) NOT NULL,
	[PaisCliente] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DimCliente] PRIMARY KEY CLUSTERED 
(
	[IDDimClientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimFecha]    Script Date: 4/4/2019 4:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFecha](
	[IDDimFecha] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[month_abbrev] [varchar](5) NULL,
	[year4] [int] NULL,
	[day_of_month] [int] NULL,
	[day_of_year] [int] NULL,
	[day_of_week] [varchar](5) NULL,
	[week_in_month] [int] NULL,
	[week_in_year] [int] NULL,
	[month_number] [int] NULL,
	[year_month] [varchar](15) NULL,
	[qtr_name] [varchar](5) NULL,
	[qtr_number] [int] NULL,
	[year_qrt] [varchar](15) NULL,
 CONSTRAINT [PK__DimFecha__40DF45E3A38F328D] PRIMARY KEY CLUSTERED 
(
	[IDDimFecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimFilm]    Script Date: 4/4/2019 4:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFilm](
	[ID_DimFilm] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ID_Film] [int] NOT NULL,
	[Titulo] [varchar](255) NOT NULL,
	[Descripcion] [text] NULL,
	[Anual_Salida] [varchar](4) NULL,
	[Duracion_Renta] [smallint] NOT NULL,
	[Longitud] [smallint] NULL,
 CONSTRAINT [PK_DimFilm] PRIMARY KEY CLUSTERED 
(
	[ID_DimFilm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimHora]    Script Date: 4/4/2019 4:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimHora](
	[IDDimHora] [int] IDENTITY(1,1) NOT NULL,
	[Tiempo] [time](7) NOT NULL,
	[hrs24] [int] NOT NULL,
	[hrs12] [int] NOT NULL,
	[minutos] [int] NOT NULL,
	[segundos] [int] NOT NULL,
	[AMPM] [char](5) NOT NULL,
 CONSTRAINT [PK__DimHora__5FEB39EB7F62C874] PRIMARY KEY CLUSTERED 
(
	[IDDimHora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPersonal]    Script Date: 4/4/2019 4:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPersonal](
	[ID_Dim_Personal] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[staff_id] [tinyint] NOT NULL,
	[PrimerNombre] [varchar](45) NOT NULL,
	[Apellidos] [varchar](45) NOT NULL,
	[Direccion1] [varchar](50) NOT NULL,
	[Direccion2] [varchar](50) NULL,
	[Distrito] [varchar](20) NOT NULL,
	[CodigoPostal] [varchar](10) NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DimPersonal] PRIMARY KEY CLUSTERED 
(
	[ID_Dim_Personal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTienda]    Script Date: 4/4/2019 4:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTienda](
	[IDDimTienda] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[store_id] [int] NOT NULL,
	[Direccion1] [varchar](50) NOT NULL,
	[Direccion2] [varchar](50) NULL,
	[Distrito] [varchar](20) NOT NULL,
	[CodigoPostal] [varchar](10) NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[Pais] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DimTienda] PRIMARY KEY CLUSTERED 
(
	[IDDimTienda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HechosRentas]    Script Date: 4/4/2019 4:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HechosRentas](
	[rental_id] [int] NOT NULL,
	[SumaRentas] [int] NOT NULL,
	[SumaRetornos] [int] NOT NULL,
	[Duracion] [int] NULL,
	[IDDimFechaRenta] [int] NOT NULL,
	[IDDimHoraRenta] [int] NULL,
	[IDDimFechaRetorno] [int] NULL,
	[IDDimHoraRetorno] [int] NULL,
	[IDDimClientes] [numeric](18, 0) NOT NULL,
	[ID_DimFilm] [numeric](18, 0) NOT NULL,
	[ID_Dim_Personal] [numeric](18, 0) NOT NULL,
	[IDDimTienda] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_HechosRentas] PRIMARY KEY CLUSTERED 
(
	[rental_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HechosRentas]  WITH NOCHECK ADD  CONSTRAINT [FK_HechosRentas_DimCliente] FOREIGN KEY([IDDimClientes])
REFERENCES [dbo].[DimCliente] ([IDDimClientes])
GO
ALTER TABLE [dbo].[HechosRentas] CHECK CONSTRAINT [FK_HechosRentas_DimCliente]
GO
ALTER TABLE [dbo].[HechosRentas]  WITH NOCHECK ADD  CONSTRAINT [FK_HechosRentas_DimFecha] FOREIGN KEY([IDDimFechaRenta])
REFERENCES [dbo].[DimFecha] ([IDDimFecha])
GO
ALTER TABLE [dbo].[HechosRentas] CHECK CONSTRAINT [FK_HechosRentas_DimFecha]
GO
ALTER TABLE [dbo].[HechosRentas]  WITH NOCHECK ADD  CONSTRAINT [FK_HechosRentas_DimFecha1] FOREIGN KEY([IDDimFechaRetorno])
REFERENCES [dbo].[DimFecha] ([IDDimFecha])
GO
ALTER TABLE [dbo].[HechosRentas] CHECK CONSTRAINT [FK_HechosRentas_DimFecha1]
GO
ALTER TABLE [dbo].[HechosRentas]  WITH NOCHECK ADD  CONSTRAINT [FK_HechosRentas_DimFilm] FOREIGN KEY([ID_DimFilm])
REFERENCES [dbo].[DimFilm] ([ID_DimFilm])
GO
ALTER TABLE [dbo].[HechosRentas] CHECK CONSTRAINT [FK_HechosRentas_DimFilm]
GO
ALTER TABLE [dbo].[HechosRentas]  WITH NOCHECK ADD  CONSTRAINT [FK_HechosRentas_DimHora] FOREIGN KEY([IDDimHoraRenta])
REFERENCES [dbo].[DimHora] ([IDDimHora])
GO
ALTER TABLE [dbo].[HechosRentas] CHECK CONSTRAINT [FK_HechosRentas_DimHora]
GO
ALTER TABLE [dbo].[HechosRentas]  WITH NOCHECK ADD  CONSTRAINT [FK_HechosRentas_DimHora1] FOREIGN KEY([IDDimHoraRetorno])
REFERENCES [dbo].[DimHora] ([IDDimHora])
GO
ALTER TABLE [dbo].[HechosRentas] CHECK CONSTRAINT [FK_HechosRentas_DimHora1]
GO
ALTER TABLE [dbo].[HechosRentas]  WITH NOCHECK ADD  CONSTRAINT [FK_HechosRentas_DimPersonal] FOREIGN KEY([ID_Dim_Personal])
REFERENCES [dbo].[DimPersonal] ([ID_Dim_Personal])
GO
ALTER TABLE [dbo].[HechosRentas] CHECK CONSTRAINT [FK_HechosRentas_DimPersonal]
GO
ALTER TABLE [dbo].[HechosRentas]  WITH NOCHECK ADD  CONSTRAINT [FK_HechosRentas_DimTienda] FOREIGN KEY([IDDimTienda])
REFERENCES [dbo].[DimTienda] ([IDDimTienda])
GO
ALTER TABLE [dbo].[HechosRentas] CHECK CONSTRAINT [FK_HechosRentas_DimTienda]
GO
USE [master]
GO
ALTER DATABASE [SAKILADW] SET  READ_WRITE 
GO
