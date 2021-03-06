USE [formulario]
GO
/****** Object:  Table [dbo].[Contratos]    Script Date: 22/12/2017 8:47:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contratos](
	[Num_cont] [int] NOT NULL,
	[Val_cont] [int] NOT NULL,
	[Desc_cont] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Num_cont] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 22/12/2017 8:47:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamentos](
	[id_dep] [int] NOT NULL,
	[nombre] [varchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 22/12/2017 8:47:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresas](
	[Nit_emp] [int] NOT NULL,
	[rsoc_emp] [varchar](100) NOT NULL,
	[dir_emp] [varchar](60) NOT NULL,
	[email_emp] [varchar](50) NOT NULL,
	[Tel1_emp] [int] NOT NULL,
	[Calt_emp] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nit_emp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entidades_contratantes]    Script Date: 22/12/2017 8:47:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entidades_contratantes](
	[nit_entc] [int] NOT NULL,
	[rsoc_entc] [varchar](100) NOT NULL,
	[dir_entc] [varchar](60) NOT NULL,
	[email_entc] [varchar](50) NOT NULL,
	[Tel1_entc] [int] NOT NULL,
	[Calt_entc] [varchar](50) NOT NULL,
	[Ret_entc] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nit_entc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Formularios]    Script Date: 22/12/2017 8:47:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formularios](
	[id_form] [int] IDENTITY(1,1) NOT NULL,
	[CC_repleg] [int] NOT NULL,
	[nit_entc] [int] NOT NULL,
	[id_dep] [int] NOT NULL,
	[id_mun] [int] NOT NULL,
	[Num_cont] [int] NOT NULL,
	[total_form] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Formularios] PRIMARY KEY CLUSTERED 
(
	[id_form] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 22/12/2017 8:47:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[municipio](
	[idmunicipio] [int] NOT NULL,
	[nombreMunicipio] [varchar](100) NOT NULL,
	[departamento_iddepartamento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idmunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Representantes_Legales]    Script Date: 22/12/2017 8:47:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Representantes_Legales](
	[Cc_repleg] [int] NOT NULL,
	[Nom_repleg] [varchar](50) NOT NULL,
	[ape_repleg] [varchar](50) NOT NULL,
	[email_repleg] [varchar](50) NOT NULL,
	[Tel1_repleg] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cc_repleg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 22/12/2017 8:47:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[usuario] [nvarchar](50) NOT NULL,
	[contraseña] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Contratos] ([Num_cont], [Val_cont], [Desc_cont]) VALUES (1234, 1000000, 20000)
GO
INSERT [dbo].[Contratos] ([Num_cont], [Val_cont], [Desc_cont]) VALUES (54322, 9000000, 180000)
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (1, N'AMAZONAS')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (2, N'ANTIOQUIA')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (3, N'ARAUCA')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (4, N'ATLÁNTICO')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (5, N'BOLÍVAR')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (6, N'BOYACÁ')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (7, N'CALDAS')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (8, N'CAQUETÁ')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (9, N'CASANARE')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (10, N'CAUCA')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (11, N'CESAR')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (12, N'CHOCÓ')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (13, N'CÓRDOBA')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (14, N'CUNDINAMARCA')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (15, N'GUAINÍA')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (16, N'GUAVIARE')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (17, N'HUILA')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (18, N'LA GUAJIRA')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (19, N'MAGDALENA')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (20, N'META')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (21, N'NARIÑO')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (22, N'NORTE DE SANTANDER')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (23, N'PUTUMAYO')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (24, N'QUINDÍO')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (25, N'RISARALDA')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (26, N'SAN ANDRÉS Y ROVIDENCIA')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (27, N'SANTANDER')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (28, N'SUCRE')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (29, N'TOLIMA')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (30, N'VALLE DEL CAUCA')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (31, N'VAUPÉS')
GO
INSERT [dbo].[Departamentos] ([id_dep], [nombre]) VALUES (32, N'VICHADA')
GO
INSERT [dbo].[Empresas] ([Nit_emp], [rsoc_emp], [dir_emp], [email_emp], [Tel1_emp], [Calt_emp]) VALUES (8765432, N'Economica', N'Calle 50', N'asoc@mail.com', 34765432, N'Kra 90')
GO
INSERT [dbo].[Empresas] ([Nit_emp], [rsoc_emp], [dir_emp], [email_emp], [Tel1_emp], [Calt_emp]) VALUES (1234567654, N'Economica', N'Calle 50', N'asoc@mail.com', 123456, N'Kra 90')
GO
INSERT [dbo].[Entidades_contratantes] ([nit_entc], [rsoc_entc], [dir_entc], [email_entc], [Tel1_entc], [Calt_entc], [Ret_entc]) VALUES (1, N'Soluciones Tic SAS', N'Kra 60', N'solucionestic@mail.com', 3802918, N'3504892', 1)
GO
INSERT [dbo].[Entidades_contratantes] ([nit_entc], [rsoc_entc], [dir_entc], [email_entc], [Tel1_entc], [Calt_entc], [Ret_entc]) VALUES (2, N'Integracion social SA', N'Krra 45 - 90', N'integrate@mail.com', 3934564, N'3214325432', 2)
GO
SET IDENTITY_INSERT [dbo].[Formularios] ON 
GO
INSERT [dbo].[Formularios] ([id_form], [CC_repleg], [nit_entc], [id_dep], [id_mun], [Num_cont], [total_form]) VALUES (1, 123, 1, 4, 145, 1234, CAST(20000 AS Numeric(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Formularios] OFF
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1, N'EL ENCANTO', 1)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (2, N'LA CHORRERA', 1)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (3, N'LA PEDRERA', 1)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (4, N'LA VICTORIA', 1)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (5, N'LETICIA', 1)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (6, N'MIRITI', 1)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (7, N'PUERTO ALEGRIA', 1)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (8, N'PUERTO ARICA', 1)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (9, N'PUERTO NARIÑO', 1)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (10, N'PUERTO SANTANDER', 1)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (11, N'TURAPACA', 1)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (12, N'ABEJORRAL', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (13, N'ABRIAQUI', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (14, N'ALEJANDRIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (15, N'AMAGA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (16, N'AMALFI', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (17, N'ANDES', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (18, N'ANGELOPOLIS', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (19, N'ANGOSTURA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (20, N'ANORI', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (21, N'ANTIOQUIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (22, N'ANZA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (23, N'APARTADO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (24, N'ARBOLETES', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (25, N'ARGELIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (26, N'ARMENIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (27, N'BARBOSA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (28, N'BELLO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (29, N'BELMIRA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (30, N'BETANIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (31, N'BETULIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (32, N'BOLIVAR', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (33, N'BRICEÑO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (34, N'BURITICA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (35, N'CACERES', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (36, N'CAICEDO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (37, N'CALDAS', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (38, N'CAMPAMENTO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (39, N'CANASGORDAS', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (40, N'CARACOLI', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (41, N'CARAMANTA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (42, N'CAREPA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (43, N'CARMEN DE VIBORAL', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (44, N'CAROLINA DEL PRINCIPE', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (45, N'CAUCASIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (46, N'CHIGORODO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (47, N'CISNEROS', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (48, N'COCORNA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (49, N'CONCEPCION', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (50, N'CONCORDIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (51, N'COPACABANA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (52, N'DABEIBA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (53, N'DONMATIAS', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (54, N'EBEJICO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (55, N'EL BAGRE', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (56, N'EL PENOL', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (57, N'EL RETIRO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (58, N'ENTRERRIOS', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (59, N'ENVIGADO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (60, N'FREDONIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (61, N'FRONTINO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (62, N'GIRALDO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (63, N'GIRARDOTA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (64, N'GOMEZ PLATA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (65, N'GRANADA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (66, N'GUADALUPE', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (67, N'GUARNE', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (68, N'GUATAQUE', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (69, N'HELICONIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (70, N'HISPANIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (71, N'ITAGUI', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (72, N'ITUANGO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (73, N'JARDIN', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (74, N'JERICO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (75, N'LA CEJA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (76, N'LA ESTRELLA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (77, N'LA PINTADA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (78, N'LA UNION', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (79, N'LIBORINA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (80, N'MACEO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (81, N'MARINILLA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (82, N'MEDELLIN', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (83, N'MONTEBELLO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (84, N'MURINDO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (85, N'MUTATA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (86, N'NARINO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (87, N'NECHI', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (88, N'NECOCLI', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (89, N'OLAYA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (90, N'PEQUE', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (91, N'PUEBLORRICO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (92, N'PUERTO BERRIO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (93, N'PUERTO NARE', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (94, N'PUERTO TRIUNFO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (95, N'REMEDIOS', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (96, N'RIONEGRO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (97, N'SABANALARGA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (98, N'SABANETA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (99, N'SALGAR', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (100, N'SAN ANDRES DE CUERQUIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (101, N'SAN CARLOS', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (102, N'SAN FRANCISCO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (103, N'SAN JERONIMO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (104, N'SAN JOSE DE LA MONTAÑA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (105, N'SAN JUAN DE URABA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (106, N'SAN LUIS', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (107, N'SAN PEDRO DE LOS MILAGROS', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (108, N'SAN PEDRO DE URABA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (109, N'SAN RAFAEL', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (110, N'SAN ROQUE', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (111, N'SAN VICENTE', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (112, N'SANTA BARBARA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (113, N'SANTA ROSA DE OSOS', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (114, N'SANTO DOMINGO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (115, N'SANTUARIO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (116, N'SEGOVIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (117, N'SONSON', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (118, N'SOPETRAN', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (119, N'TAMESIS', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (120, N'TARAZA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (121, N'TARSO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (122, N'TITIRIBI', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (123, N'TOLEDO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (124, N'TURBO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (125, N'URAMITA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (126, N'URRAO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (127, N'VALDIVIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (128, N'VALPARAISO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (129, N'VEGACHI', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (130, N'VENECIA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (131, N'VIGIA DEL FUERTE', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (132, N'YALI', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (133, N'YARUMAL', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (134, N'YOLOMBO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (135, N'YONDO', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (136, N'ZARAGOZA', 2)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (137, N'ARAUCA', 3)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (138, N'ARAUQUITA', 3)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (139, N'CRAVO NORTE', 3)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (140, N'FORTUL', 3)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (141, N'PUERTO RONDON', 3)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (142, N'SARAVENA', 3)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (143, N'TAME', 3)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (144, N'BARANOA', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (145, N'BARRANQUILLA', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (146, N'CAMPO DE LA CRUZ', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (147, N'CANDELARIA', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (148, N'GALAPA', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (149, N'JUAN DE ACOSTA', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (150, N'LURUACO', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (151, N'MALAMBO', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (152, N'MANATI', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (153, N'PALMAR DE VARELA', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (154, N'PIOJO', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (155, N'POLO NUEVO', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (156, N'PONEDERA', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (157, N'PUERTO COLOMBIA', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (158, N'REPELON', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (159, N'SABANAGRANDE', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (160, N'SABANALARGA', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (161, N'SANTA LUCIA', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (162, N'SANTO TOMAS', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (163, N'SOLEDAD', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (164, N'SUAN', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (165, N'TUBARA', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (166, N'USIACURI', 4)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (167, N'ACHI', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (168, N'ALTOS DEL ROSARIO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (169, N'ARENAL', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (170, N'ARJONA', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (171, N'ARROYOHONDO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (172, N'BARRANCO DE LOBA', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (173, N'BRAZUELO DE PAPAYAL', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (174, N'CALAMAR', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (175, N'CANTAGALLO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (176, N'CARTAGENA DE INDIAS', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (177, N'CICUCO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (178, N'CLEMENCIA', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (179, N'CORDOBA', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (180, N'EL CARMEN DE BOLIVAR', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (181, N'EL GUAMO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (182, N'EL PENION', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (183, N'HATILLO DE LOBA', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (184, N'MAGANGUE', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (185, N'MAHATES', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (186, N'MARGARITA', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (187, N'MARIA LA BAJA', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (188, N'MONTECRISTO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (189, N'MORALES', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (190, N'MORALES', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (191, N'NOROSI', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (192, N'PINILLOS', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (193, N'REGIDOR', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (194, N'RIO VIEJO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (195, N'SAN CRISTOBAL', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (196, N'SAN ESTANISLAO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (197, N'SAN FERNANDO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (198, N'SAN JACINTO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (199, N'SAN JACINTO DEL CAUCA', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (200, N'SAN JUAN DE NEPOMUCENO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (201, N'SAN MARTIN DE LOBA', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (202, N'SAN PABLO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (203, N'SAN PABLO NORTE', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (204, N'SANTA CATALINA', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (205, N'SANTA CRUZ DE MOMPOX', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (206, N'SANTA ROSA', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (207, N'SANTA ROSA DEL SUR', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (208, N'SIMITI', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (209, N'SOPLAVIENTO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (210, N'TALAIGUA NUEVO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (211, N'TUQUISIO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (212, N'TURBACO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (213, N'TURBANA', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (214, N'VILLANUEVA', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (215, N'ZAMBRANO', 5)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (216, N'AQUITANIA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (217, N'ARCABUCO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (218, N'BELÉN', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (219, N'BERBEO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (220, N'BETÉITIVA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (221, N'BOAVITA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (222, N'BOYACÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (223, N'BRICEÑO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (224, N'BUENAVISTA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (225, N'BUSBANZÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (226, N'CALDAS', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (227, N'CAMPO HERMOSO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (228, N'CERINZA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (229, N'CHINAVITA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (230, N'CHIQUINQUIRÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (231, N'CHÍQUIZA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (232, N'CHISCAS', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (233, N'CHITA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (234, N'CHITARAQUE', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (235, N'CHIVATÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (236, N'CIÉNEGA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (237, N'CÓMBITA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (238, N'COPER', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (239, N'CORRALES', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (240, N'COVARACHÍA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (241, N'CUBARA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (242, N'CUCAITA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (243, N'CUITIVA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (244, N'DUITAMA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (245, N'EL COCUY', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (246, N'EL ESPINO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (247, N'FIRAVITOBA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (248, N'FLORESTA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (249, N'GACHANTIVÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (250, N'GÁMEZA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (251, N'GARAGOA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (252, N'GUACAMAYAS', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (253, N'GÜICÁN', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (254, N'IZA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (255, N'JENESANO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (256, N'JERICÓ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (257, N'LA UVITA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (258, N'LA VICTORIA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (259, N'LABRANZA GRANDE', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (260, N'MACANAL', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (261, N'MARIPÍ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (262, N'MIRAFLORES', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (263, N'MONGUA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (264, N'MONGUÍ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (265, N'MONIQUIRÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (266, N'MOTAVITA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (267, N'MUZO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (268, N'NOBSA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (269, N'NUEVO COLÓN', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (270, N'OICATÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (271, N'OTANCHE', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (272, N'PACHAVITA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (273, N'PÁEZ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (274, N'PAIPA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (275, N'PAJARITO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (276, N'PANQUEBA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (277, N'PAUNA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (278, N'PAYA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (279, N'PAZ DE RÍO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (280, N'PESCA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (281, N'PISBA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (282, N'PUERTO BOYACA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (283, N'QUÍPAMA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (284, N'RAMIRIQUÍ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (285, N'RÁQUIRA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (286, N'RONDÓN', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (287, N'SABOYÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (288, N'SÁCHICA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (289, N'SAMACÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (290, N'SAN EDUARDO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (291, N'SAN JOSÉ DE PARE', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (292, N'SAN LUÍS DE GACENO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (293, N'SAN MATEO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (294, N'SAN MIGUEL DE SEMA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (295, N'SAN PABLO DE BORBUR', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (296, N'SANTA MARÍA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (297, N'SANTA ROSA DE VITERBO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (298, N'SANTA SOFÍA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (299, N'SANTANA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (300, N'SATIVANORTE', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (301, N'SATIVASUR', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (302, N'SIACHOQUE', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (303, N'SOATÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (304, N'SOCHA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (305, N'SOCOTÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (306, N'SOGAMOSO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (307, N'SORA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (308, N'SORACÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (309, N'SOTAQUIRÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (310, N'SUSACÓN', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (311, N'SUTARMACHÁN', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (312, N'TASCO', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (313, N'TIBANÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (314, N'TIBASOSA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (315, N'TINJACÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (316, N'TIPACOQUE', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (317, N'TOCA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (318, N'TOGÜÍ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (319, N'TÓPAGA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (320, N'TOTA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (321, N'TUNJA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (322, N'TUNUNGUÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (323, N'TURMEQUÉ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (324, N'TUTA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (325, N'TUTAZÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (326, N'UMBITA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (327, N'VENTA QUEMADA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (328, N'VILLA DE LEYVA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (329, N'VIRACACHÁ', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (330, N'ZETAQUIRA', 6)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (331, N'AGUADAS', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (332, N'ANSERMA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (333, N'ARANZAZU', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (334, N'BELALCAZAR', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (335, N'CHINCHINÁ', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (336, N'FILADELFIA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (337, N'LA DORADA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (338, N'LA MERCED', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (339, N'MANIZALES', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (340, N'MANZANARES', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (341, N'MARMATO', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (342, N'MARQUETALIA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (343, N'MARULANDA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (344, N'NEIRA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (345, N'NORCASIA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (346, N'PACORA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (347, N'PALESTINA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (348, N'PENSILVANIA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (349, N'RIOSUCIO', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (350, N'RISARALDA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (351, N'SALAMINA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (352, N'SAMANA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (353, N'SAN JOSE', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (354, N'SUPÍA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (355, N'VICTORIA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (356, N'VILLAMARÍA', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (357, N'VITERBO', 7)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (358, N'ALBANIA', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (359, N'BELÉN ANDAQUIES', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (360, N'CARTAGENA DEL CHAIRA', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (361, N'CURILLO', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (362, N'EL DONCELLO', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (363, N'EL PAUJIL', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (364, N'FLORENCIA', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (365, N'LA MONTAÑITA', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (366, N'MILÁN', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (367, N'MORELIA', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (368, N'PUERTO RICO', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (369, N'SAN  VICENTE DEL CAGUAN', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (370, N'SAN JOSÉ DE FRAGUA', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (371, N'SOLANO', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (372, N'SOLITA', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (373, N'VALPARAÍSO', 8)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (374, N'AGUAZUL', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (375, N'CHAMEZA', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (376, N'HATO COROZAL', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (377, N'LA SALINA', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (378, N'MANÍ', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (379, N'MONTERREY', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (380, N'NUNCHIA', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (381, N'OROCUE', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (382, N'PAZ DE ARIPORO', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (383, N'PORE', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (384, N'RECETOR', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (385, N'SABANA LARGA', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (386, N'SACAMA', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (387, N'SAN LUIS DE PALENQUE', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (388, N'TAMARA', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (389, N'TAURAMENA', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (390, N'TRINIDAD', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (391, N'VILLANUEVA', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (392, N'YOPAL', 9)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (393, N'ALMAGUER', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (394, N'ARGELIA', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (395, N'BALBOA', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (396, N'BOLÍVAR', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (397, N'BUENOS AIRES', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (398, N'CAJIBIO', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (399, N'CALDONO', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (400, N'CALOTO', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (401, N'CORINTO', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (402, N'EL TAMBO', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (403, N'FLORENCIA', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (404, N'GUAPI', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (405, N'INZA', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (406, N'JAMBALÓ', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (407, N'LA SIERRA', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (408, N'LA VEGA', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (409, N'LÓPEZ', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (410, N'MERCADERES', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (411, N'MIRANDA', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (412, N'MORALES', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (413, N'PADILLA', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (414, N'PÁEZ', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (415, N'PATIA (EL BORDO)', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (416, N'PIAMONTE', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (417, N'PIENDAMO', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (418, N'POPAYÁN', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (419, N'PUERTO TEJADA', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (420, N'PURACE', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (421, N'ROSAS', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (422, N'SAN SEBASTIÁN', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (423, N'SANTA ROSA', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (424, N'SANTANDER DE QUILICHAO', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (425, N'SILVIA', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (426, N'SOTARA', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (427, N'SUÁREZ', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (428, N'SUCRE', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (429, N'TIMBÍO', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (430, N'TIMBIQUÍ', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (431, N'TORIBIO', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (432, N'TOTORO', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (433, N'VILLA RICA', 10)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (434, N'AGUACHICA', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (435, N'AGUSTÍN CODAZZI', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (436, N'ASTREA', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (437, N'BECERRIL', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (438, N'BOSCONIA', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (439, N'CHIMICHAGUA', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (440, N'CHIRIGUANÁ', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (441, N'CURUMANÍ', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (442, N'EL COPEY', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (443, N'EL PASO', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (444, N'GAMARRA', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (445, N'GONZÁLEZ', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (446, N'LA GLORIA', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (447, N'LA JAGUA IBIRICO', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (448, N'MANAURE BALCÓN DEL CESAR', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (449, N'PAILITAS', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (450, N'PELAYA', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (451, N'PUEBLO BELLO', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (452, N'RÍO DE ORO', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (453, N'ROBLES (LA PAZ)', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (454, N'SAN ALBERTO', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (455, N'SAN DIEGO', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (456, N'SAN MARTÍN', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (457, N'TAMALAMEQUE', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (458, N'VALLEDUPAR', 11)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (459, N'ACANDI', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (460, N'ALTO BAUDO (PIE DE PATO)', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (461, N'ATRATO', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (462, N'BAGADO', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (463, N'BAHIA SOLANO (MUTIS)', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (464, N'BAJO BAUDO (PIZARRO)', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (465, N'BOJAYA (BELLAVISTA)', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (466, N'CANTON DE SAN PABLO', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (467, N'CARMEN DEL DARIEN', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (468, N'CERTEGUI', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (469, N'CONDOTO', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (470, N'EL CARMEN', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (471, N'ISTMINA', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (472, N'JURADO', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (473, N'LITORAL DEL SAN JUAN', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (474, N'LLORO', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (475, N'MEDIO ATRATO', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (476, N'MEDIO BAUDO (BOCA DE PEPE)', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (477, N'MEDIO SAN JUAN', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (478, N'NOVITA', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (479, N'NUQUI', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (480, N'QUIBDO', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (481, N'RIO IRO', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (482, N'RIO QUITO', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (483, N'RIOSUCIO', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (484, N'SAN JOSE DEL PALMAR', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (485, N'SIPI', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (486, N'TADO', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (487, N'UNGUIA', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (488, N'UNIÓN PANAMERICANA', 12)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (489, N'AYAPEL', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (490, N'BUENAVISTA', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (491, N'CANALETE', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (492, N'CERETÉ', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (493, N'CHIMA', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (494, N'CHINÚ', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (495, N'CIENAGA DE ORO', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (496, N'COTORRA', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (497, N'LA APARTADA', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (498, N'LORICA', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (499, N'LOS CÓRDOBAS', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (500, N'MOMIL', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (501, N'MONTELÍBANO', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (502, N'MONTERÍA', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (503, N'MOÑITOS', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (504, N'PLANETA RICA', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (505, N'PUEBLO NUEVO', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (506, N'PUERTO ESCONDIDO', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (507, N'PUERTO LIBERTADOR', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (508, N'PURÍSIMA', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (509, N'SAHAGÚN', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (510, N'SAN ANDRÉS SOTAVENTO', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (511, N'SAN ANTERO', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (512, N'SAN BERNARDO VIENTO', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (513, N'SAN CARLOS', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (514, N'SAN PELAYO', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (515, N'TIERRALTA', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (516, N'VALENCIA', 13)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (517, N'AGUA DE DIOS', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (518, N'ALBAN', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (519, N'ANAPOIMA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (520, N'ANOLAIMA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (521, N'ARBELAEZ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (522, N'BELTRÁN', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (523, N'BITUIMA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (524, N'BOGOTÁ DC', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (525, N'BOJACÁ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (526, N'CABRERA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (527, N'CACHIPAY', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (528, N'CAJICÁ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (529, N'CAPARRAPÍ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (530, N'CAQUEZA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (531, N'CARMEN DE CARUPA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (532, N'CHAGUANÍ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (533, N'CHIA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (534, N'CHIPAQUE', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (535, N'CHOACHÍ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (536, N'CHOCONTÁ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (537, N'COGUA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (538, N'COTA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (539, N'CUCUNUBÁ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (540, N'EL COLEGIO', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (541, N'EL PEÑÓN', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (542, N'EL ROSAL1', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (543, N'FACATATIVA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (544, N'FÓMEQUE', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (545, N'FOSCA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (546, N'FUNZA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (547, N'FÚQUENE', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (548, N'FUSAGASUGA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (549, N'GACHALÁ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (550, N'GACHANCIPÁ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (551, N'GACHETA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (552, N'GAMA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (553, N'GIRARDOT', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (554, N'GRANADA2', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (555, N'GUACHETÁ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (556, N'GUADUAS', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (557, N'GUASCA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (558, N'GUATAQUÍ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (559, N'GUATAVITA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (560, N'GUAYABAL DE SIQUIMA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (561, N'GUAYABETAL', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (562, N'GUTIÉRREZ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (563, N'JERUSALÉN', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (564, N'JUNÍN', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (565, N'LA CALERA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (566, N'LA MESA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (567, N'LA PALMA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (568, N'LA PEÑA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (569, N'LA VEGA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (570, N'LENGUAZAQUE', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (571, N'MACHETÁ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (572, N'MADRID', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (573, N'MANTA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (574, N'MEDINA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (575, N'MOSQUERA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (576, N'NARIÑO', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (577, N'NEMOCÓN', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (578, N'NILO', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (579, N'NIMAIMA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (580, N'NOCAIMA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (581, N'OSPINA PÉREZ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (582, N'PACHO', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (583, N'PAIME', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (584, N'PANDI', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (585, N'PARATEBUENO', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (586, N'PASCA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (587, N'PUERTO SALGAR', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (588, N'PULÍ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (589, N'QUEBRADANEGRA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (590, N'QUETAME', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (591, N'QUIPILE', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (592, N'RAFAEL REYES', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (593, N'RICAURTE', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (594, N'SAN  ANTONIO DEL  TEQUENDAMA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (595, N'SAN BERNARDO', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (596, N'SAN CAYETANO', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (597, N'SAN FRANCISCO', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (598, N'SAN JUAN DE RIOSECO', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (599, N'SASAIMA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (600, N'SESQUILÉ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (601, N'SIBATÉ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (602, N'SILVANIA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (603, N'SIMIJACA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (604, N'SOACHA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (605, N'SOPO', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (606, N'SUBACHOQUE', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (607, N'SUESCA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (608, N'SUPATÁ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (609, N'SUSA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (610, N'SUTATAUSA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (611, N'TABIO', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (612, N'TAUSA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (613, N'TENA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (614, N'TENJO', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (615, N'TIBACUY', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (616, N'TIBIRITA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (617, N'TOCAIMA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (618, N'TOCANCIPÁ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (619, N'TOPAIPÍ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (620, N'UBALÁ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (621, N'UBAQUE', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (622, N'UBATÉ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (623, N'UNE', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (624, N'UTICA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (625, N'VERGARA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (626, N'VIANI', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (627, N'VILLA GOMEZ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (628, N'VILLA PINZÓN', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (629, N'VILLETA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (630, N'VIOTA', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (631, N'YACOPÍ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (632, N'ZIPACÓN', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (633, N'ZIPAQUIRÁ', 14)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (634, N'BARRANCO MINAS', 15)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (635, N'CACAHUAL', 15)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (636, N'INÍRIDA', 15)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (637, N'LA GUADALUPE', 15)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (638, N'MAPIRIPANA', 15)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (639, N'MORICHAL', 15)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (640, N'PANA PANA', 15)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (641, N'PUERTO COLOMBIA', 15)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (642, N'SAN FELIPE', 15)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (643, N'CALAMAR', 16)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (644, N'EL RETORNO', 16)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (645, N'MIRAFLOREZ', 16)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (646, N'SAN JOSÉ DEL GUAVIARE', 16)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (647, N'ACEVEDO', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (648, N'AGRADO', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (649, N'AIPE', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (650, N'ALGECIRAS', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (651, N'ALTAMIRA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (652, N'BARAYA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (653, N'CAMPO ALEGRE', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (654, N'COLOMBIA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (655, N'ELIAS', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (656, N'GARZÓN', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (657, N'GIGANTE', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (658, N'GUADALUPE', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (659, N'HOBO', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (660, N'IQUIRA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (661, N'ISNOS', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (662, N'LA ARGENTINA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (663, N'LA PLATA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (664, N'NATAGA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (665, N'NEIVA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (666, N'OPORAPA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (667, N'PAICOL', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (668, N'PALERMO', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (669, N'PALESTINA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (670, N'PITAL', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (671, N'PITALITO', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (672, N'RIVERA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (673, N'SALADO BLANCO', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (674, N'SAN AGUSTÍN', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (675, N'SANTA MARIA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (676, N'SUAZA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (677, N'TARQUI', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (678, N'TELLO', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (679, N'TERUEL', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (680, N'TESALIA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (681, N'TIMANA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (682, N'VILLAVIEJA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (683, N'YAGUARA', 17)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (684, N'ALBANIA', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (685, N'BARRANCAS', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (686, N'DIBULLA', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (687, N'DISTRACCIÓN', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (688, N'EL MOLINO', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (689, N'FONSECA', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (690, N'HATO NUEVO', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (691, N'LA JAGUA DEL PILAR', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (692, N'MAICAO', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (693, N'MANAURE', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (694, N'RIOHACHA', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (695, N'SAN JUAN DEL CESAR', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (696, N'URIBIA', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (697, N'URUMITA', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (698, N'VILLANUEVA', 18)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (699, N'ALGARROBO', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (700, N'ARACATACA', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (701, N'ARIGUANI', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (702, N'CERRO SAN ANTONIO', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (703, N'CHIVOLO', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (704, N'CIENAGA', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (705, N'CONCORDIA', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (706, N'EL BANCO', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (707, N'EL PIÑON', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (708, N'EL RETEN', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (709, N'FUNDACION', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (710, N'GUAMAL', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (711, N'NUEVA GRANADA', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (712, N'PEDRAZA', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (713, N'PIJIÑO DEL CARMEN', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (714, N'PIVIJAY', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (715, N'PLATO', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (716, N'PUEBLO VIEJO', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (717, N'REMOLINO', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (718, N'SABANAS DE SAN ANGEL', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (719, N'SALAMINA', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (720, N'SAN SEBASTIAN DE BUENAVISTA', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (721, N'SAN ZENON', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (722, N'SANTA ANA', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (723, N'SANTA BARBARA DE PINTO', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (724, N'SANTA MARTA', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (725, N'SITIONUEVO', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (726, N'TENERIFE', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (727, N'ZAPAYAN', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (728, N'ZONA BANANERA', 19)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (729, N'ACACIAS', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (730, N'BARRANCA DE UPIA', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (731, N'CABUYARO', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (732, N'CASTILLA LA NUEVA', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (733, N'CUBARRAL', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (734, N'CUMARAL', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (735, N'EL CALVARIO', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (736, N'EL CASTILLO', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (737, N'EL DORADO', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (738, N'FUENTE DE ORO', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (739, N'GRANADA', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (740, N'GUAMAL', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (741, N'LA MACARENA', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (742, N'LA URIBE', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (743, N'LEJANÍAS', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (744, N'MAPIRIPÁN', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (745, N'MESETAS', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (746, N'PUERTO CONCORDIA', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (747, N'PUERTO GAITÁN', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (748, N'PUERTO LLERAS', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (749, N'PUERTO LÓPEZ', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (750, N'PUERTO RICO', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (751, N'RESTREPO', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (752, N'SAN  JUAN DE ARAMA', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (753, N'SAN CARLOS GUAROA', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (754, N'SAN JUANITO', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (755, N'SAN MARTÍN', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (756, N'VILLAVICENCIO', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (757, N'VISTA HERMOSA', 20)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (758, N'ALBAN', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (759, N'ALDAÑA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (760, N'ANCUYA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (761, N'ARBOLEDA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (762, N'BARBACOAS', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (763, N'BELEN', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (764, N'BUESACO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (765, N'CHACHAGUI', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (766, N'COLON (GENOVA)', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (767, N'CONSACA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (768, N'CONTADERO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (769, N'CORDOBA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (770, N'CUASPUD', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (771, N'CUMBAL', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (772, N'CUMBITARA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (773, N'EL CHARCO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (774, N'EL PEÑOL', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (775, N'EL ROSARIO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (776, N'EL TABLÓN', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (777, N'EL TAMBO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (778, N'FUNES', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (779, N'GUACHUCAL', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (780, N'GUAITARILLA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (781, N'GUALMATAN', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (782, N'ILES', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (783, N'IMUES', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (784, N'IPIALES', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (785, N'LA CRUZ', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (786, N'LA FLORIDA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (787, N'LA LLANADA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (788, N'LA TOLA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (789, N'LA UNION', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (790, N'LEIVA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (791, N'LINARES', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (792, N'LOS ANDES', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (793, N'MAGUI', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (794, N'MALLAMA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (795, N'MOSQUEZA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (796, N'NARIÑO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (797, N'OLAYA HERRERA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (798, N'OSPINA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (799, N'PASTO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (800, N'PIZARRO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (801, N'POLICARPA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (802, N'POTOSI', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (803, N'PROVIDENCIA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (804, N'PUERRES', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (805, N'PUPIALES', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (806, N'RICAURTE', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (807, N'ROBERTO PAYAN', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (808, N'SAMANIEGO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (809, N'SAN BERNARDO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (810, N'SAN LORENZO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (811, N'SAN PABLO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (812, N'SAN PEDRO DE CARTAGO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (813, N'SANDONA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (814, N'SANTA BARBARA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (815, N'SANTACRUZ', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (816, N'SAPUYES', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (817, N'TAMINANGO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (818, N'TANGUA', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (819, N'TUMACO', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (820, N'TUQUERRES', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (821, N'YACUANQUER', 21)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (822, N'ABREGO', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (823, N'ARBOLEDAS', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (824, N'BOCHALEMA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (825, N'BUCARASICA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (826, N'CÁCHIRA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (827, N'CÁCOTA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (828, N'CHINÁCOTA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (829, N'CHITAGÁ', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (830, N'CONVENCIÓN', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (831, N'CÚCUTA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (832, N'CUCUTILLA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (833, N'DURANIA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (834, N'EL CARMEN', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (835, N'EL TARRA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (836, N'EL ZULIA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (837, N'GRAMALOTE', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (838, N'HACARI', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (839, N'HERRÁN', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (840, N'LA ESPERANZA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (841, N'LA PLAYA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (842, N'LABATECA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (843, N'LOS PATIOS', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (844, N'LOURDES', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (845, N'MUTISCUA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (846, N'OCAÑA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (847, N'PAMPLONA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (848, N'PAMPLONITA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (849, N'PUERTO SANTANDER', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (850, N'RAGONVALIA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (851, N'SALAZAR', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (852, N'SAN CALIXTO', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (853, N'SAN CAYETANO', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (854, N'SANTIAGO', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (855, N'SARDINATA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (856, N'SILOS', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (857, N'TEORAMA', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (858, N'TIBÚ', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (859, N'TOLEDO', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (860, N'VILLA CARO', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (861, N'VILLA DEL ROSARIO', 22)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (862, N'COLÓN', 23)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (863, N'MOCOA', 23)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (864, N'ORITO', 23)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (865, N'PUERTO ASÍS', 23)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (866, N'PUERTO CAYCEDO', 23)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (867, N'PUERTO GUZMÁN', 23)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (868, N'PUERTO LEGUÍZAMO', 23)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (869, N'SAN FRANCISCO', 23)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (870, N'SAN MIGUEL', 23)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (871, N'SANTIAGO', 23)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (872, N'SIBUNDOY', 23)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (873, N'VALLE DEL GUAMUEZ', 23)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (874, N'VILLAGARZÓN', 23)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (875, N'ARMENIA', 24)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (876, N'BUENAVISTA', 24)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (877, N'CALARCÁ', 24)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (878, N'CIRCASIA', 24)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (879, N'CÓRDOBA', 24)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (880, N'FILANDIA', 24)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (881, N'GÉNOVA', 24)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (882, N'LA TEBAIDA', 24)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (883, N'MONTENEGRO', 24)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (884, N'PIJAO', 24)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (885, N'QUIMBAYA', 24)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (886, N'SALENTO', 24)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (887, N'APIA', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (888, N'BALBOA', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (889, N'BELÉN DE UMBRÍA', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (890, N'DOS QUEBRADAS', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (891, N'GUATICA', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (892, N'LA CELIA', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (893, N'LA VIRGINIA', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (894, N'MARSELLA', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (895, N'MISTRATO', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (896, N'PEREIRA', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (897, N'PUEBLO RICO', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (898, N'QUINCHÍA', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (899, N'SANTA ROSA DE CABAL', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (900, N'SANTUARIO', 25)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (901, N'PROVIDENCIA', 26)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (902, N'SAN ANDRES', 26)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (903, N'SANTA CATALINA', 26)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (904, N'AGUADA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (905, N'ALBANIA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (906, N'ARATOCA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (907, N'BARBOSA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (908, N'BARICHARA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (909, N'BARRANCABERMEJA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (910, N'BETULIA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (911, N'BOLÍVAR', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (912, N'BUCARAMANGA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (913, N'CABRERA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (914, N'CALIFORNIA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (915, N'CAPITANEJO', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (916, N'CARCASI', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (917, N'CEPITA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (918, N'CERRITO', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (919, N'CHARALÁ', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (920, N'CHARTA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (921, N'CHIMA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (922, N'CHIPATÁ', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (923, N'CIMITARRA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (924, N'CONCEPCIÓN', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (925, N'CONFINES', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (926, N'CONTRATACIÓN', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (927, N'COROMORO', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (928, N'CURITÍ', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (929, N'EL CARMEN', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (930, N'EL GUACAMAYO', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (931, N'EL PEÑÓN', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (932, N'EL PLAYÓN', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (933, N'ENCINO', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (934, N'ENCISO', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (935, N'FLORIÁN', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (936, N'FLORIDABLANCA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (937, N'GALÁN', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (938, N'GAMBITA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (939, N'GIRÓN', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (940, N'GUACA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (941, N'GUADALUPE', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (942, N'GUAPOTA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (943, N'GUAVATÁ', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (944, N'GUEPSA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (945, N'HATO', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (946, N'JESÚS MARIA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (947, N'JORDÁN', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (948, N'LA BELLEZA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (949, N'LA PAZ', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (950, N'LANDAZURI', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (951, N'LEBRIJA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (952, N'LOS SANTOS', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (953, N'MACARAVITA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (954, N'MÁLAGA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (955, N'MATANZA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (956, N'MOGOTES', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (957, N'MOLAGAVITA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (958, N'OCAMONTE', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (959, N'OIBA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (960, N'ONZAGA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (961, N'PALMAR', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (962, N'PALMAS DEL SOCORRO', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (963, N'PÁRAMO', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (964, N'PIEDECUESTA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (965, N'PINCHOTE', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (966, N'PUENTE NACIONAL', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (967, N'PUERTO PARRA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (968, N'PUERTO WILCHES', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (969, N'RIONEGRO', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (970, N'SABANA DE TORRES', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (971, N'SAN ANDRÉS', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (972, N'SAN BENITO', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (973, N'SAN GIL', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (974, N'SAN JOAQUÍN', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (975, N'SAN JOSÉ DE MIRANDA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (976, N'SAN MIGUEL', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (977, N'SAN VICENTE DE CHUCURÍ', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (978, N'SANTA BÁRBARA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (979, N'SANTA HELENA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (980, N'SIMACOTA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (981, N'SOCORRO', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (982, N'SUAITA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (983, N'SUCRE', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (984, N'SURATA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (985, N'TONA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (986, N'VALLE SAN JOSÉ', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (987, N'VÉLEZ', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (988, N'VETAS', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (989, N'VILLANUEVA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (990, N'ZAPATOCA', 27)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (991, N'BUENAVISTA', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (992, N'CAIMITO', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (993, N'CHALÁN', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (994, N'COLOSO', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (995, N'COROZAL', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (996, N'EL ROBLE', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (997, N'GALERAS', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (998, N'GUARANDA', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (999, N'LA UNIÓN', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1000, N'LOS PALMITOS', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1001, N'MAJAGUAL', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1002, N'MORROA', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1003, N'OVEJAS', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1004, N'PALMITO', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1005, N'SAMPUES', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1006, N'SAN BENITO ABAD', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1007, N'SAN JUAN DE BETULIA', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1008, N'SAN MARCOS', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1009, N'SAN ONOFRE', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1010, N'SAN PEDRO', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1011, N'SINCÉ', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1012, N'SINCELEJO', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1013, N'SUCRE', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1014, N'TOLÚ', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1015, N'TOLUVIEJO', 28)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1016, N'ALPUJARRA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1017, N'ALVARADO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1018, N'AMBALEMA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1019, N'ANZOATEGUI', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1020, N'ARMERO (GUAYABAL)', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1021, N'ATACO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1022, N'CAJAMARCA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1023, N'CARMEN DE APICALÁ', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1024, N'CASABIANCA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1025, N'CHAPARRAL', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1026, N'COELLO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1027, N'COYAIMA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1028, N'CUNDAY', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1029, N'DOLORES', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1030, N'ESPINAL', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1031, N'FALÁN', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1032, N'FLANDES', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1033, N'FRESNO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1034, N'GUAMO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1035, N'HERVEO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1036, N'HONDA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1037, N'IBAGUÉ', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1038, N'ICONONZO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1039, N'LÉRIDA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1040, N'LÍBANO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1041, N'MARIQUITA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1042, N'MELGAR', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1043, N'MURILLO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1044, N'NATAGAIMA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1045, N'ORTEGA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1046, N'PALOCABILDO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1047, N'PIEDRAS PLANADAS', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1048, N'PRADO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1049, N'PURIFICACIÓN', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1050, N'RIOBLANCO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1051, N'RONCESVALLES', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1052, N'ROVIRA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1053, N'SALDAÑA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1054, N'SAN ANTONIO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1055, N'SAN LUIS', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1056, N'SANTA ISABEL', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1057, N'SUÁREZ', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1058, N'VALLE DE SAN JUAN', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1059, N'VENADILLO', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1060, N'VILLAHERMOSA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1061, N'VILLARRICA', 29)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1062, N'ALCALÁ', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1063, N'ANDALUCÍA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1064, N'ANSERMA NUEVO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1065, N'ARGELIA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1066, N'BOLÍVAR', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1067, N'BUENAVENTURA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1068, N'BUGA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1069, N'BUGALAGRANDE', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1070, N'CAICEDONIA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1071, N'CALI', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1072, N'CALIMA (DARIEN)', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1073, N'CANDELARIA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1074, N'CARTAGO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1075, N'DAGUA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1076, N'EL AGUILA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1077, N'EL CAIRO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1078, N'EL CERRITO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1079, N'EL DOVIO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1080, N'FLORIDA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1081, N'GINEBRA GUACARI', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1082, N'JAMUNDÍ', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1083, N'LA CUMBRE', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1084, N'LA UNIÓN', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1085, N'LA VICTORIA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1086, N'OBANDO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1087, N'PALMIRA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1088, N'PRADERA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1089, N'RESTREPO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1090, N'RIO FRÍO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1091, N'ROLDANILLO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1092, N'SAN PEDRO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1093, N'SEVILLA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1094, N'TORO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1095, N'TRUJILLO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1096, N'TULÚA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1097, N'ULLOA', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1098, N'VERSALLES', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1099, N'VIJES', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1100, N'YOTOCO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1101, N'YUMBO', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1102, N'ZARZAL', 30)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1103, N'CARURÚ', 31)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1104, N'MITÚ', 31)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1105, N'PACOA', 31)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1106, N'PAPUNAUA', 31)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1107, N'TARAIRA', 31)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1108, N'YAVARATÉ', 31)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1109, N'CUMARIBO', 32)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1110, N'LA PRIMAVERA', 32)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1111, N'PUERTO CARREÑO', 32)
GO
INSERT [dbo].[municipio] ([idmunicipio], [nombreMunicipio], [departamento_iddepartamento]) VALUES (1112, N'SANTA ROSALIA', 32)
GO
INSERT [dbo].[Representantes_Legales] ([Cc_repleg], [Nom_repleg], [ape_repleg], [email_repleg], [Tel1_repleg]) VALUES (123, N'Anthony', N'Ortiz', N'adjog96@gmail.com', 300887222)
GO
INSERT [dbo].[Representantes_Legales] ([Cc_repleg], [Nom_repleg], [ape_repleg], [email_repleg], [Tel1_repleg]) VALUES (45678, N'Anthonyño', N'Ortiz Geronimo', N'adjog96@gmail.com', 234567)
GO
INSERT [dbo].[usuarios] ([usuario], [contraseña]) VALUES (N'anthony', N'12345')
GO
ALTER TABLE [dbo].[Formularios]  WITH CHECK ADD FOREIGN KEY([CC_repleg])
REFERENCES [dbo].[Representantes_Legales] ([Cc_repleg])
GO
ALTER TABLE [dbo].[Formularios]  WITH CHECK ADD FOREIGN KEY([nit_entc])
REFERENCES [dbo].[Entidades_contratantes] ([nit_entc])
GO
ALTER TABLE [dbo].[Formularios]  WITH CHECK ADD FOREIGN KEY([Num_cont])
REFERENCES [dbo].[Contratos] ([Num_cont])
GO
ALTER TABLE [dbo].[municipio]  WITH CHECK ADD FOREIGN KEY([departamento_iddepartamento])
REFERENCES [dbo].[Departamentos] ([id_dep])
GO
