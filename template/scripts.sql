USE [progra3_practica]
GO
/****** Object:  Table [dbo].[albaniles]    Script Date: 04-ago-24 9:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[albaniles](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Dni] [nvarchar](max) NOT NULL,
	[Telefono] [nvarchar](max) NULL,
	[Calle] [nvarchar](max) NULL,
	[Numero] [nvarchar](max) NULL,
	[CodPost] [nvarchar](max) NULL,
	[Activo] [bit] NOT NULL,
	[FechaAlta] [datetime2](7) NULL,
 CONSTRAINT [PK_albaniles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[albaniles_x_obras]    Script Date: 04-ago-24 9:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[albaniles_x_obras](
	[Id] [uniqueidentifier] NOT NULL,
	[IdAlbanil] [uniqueidentifier] NOT NULL,
	[IdObra] [uniqueidentifier] NOT NULL,
	[TareaARealizar] [nvarchar](max) NOT NULL,
	[FechaAlta] [datetime2](7) NULL,
 CONSTRAINT [PK_albaniles_x_obras] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deportes]    Script Date: 04-ago-24 9:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deportes](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[FechaAlta] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_deportes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[obras]    Script Date: 04-ago-24 9:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[obras](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[DatosVarios] [nvarchar](max) NOT NULL,
	[IdTipoObra] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_obras] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 04-ago-24 9:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[KeyRol] [int] NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[socios]    Script Date: 04-ago-24 9:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[socios](
	[Id] [uniqueidentifier] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Activo] [bit] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Dni] [nvarchar](max) NOT NULL,
	[IdDeporte] [uniqueidentifier] NOT NULL,
	[Telefono] [nvarchar](max) NULL,
	[Calle] [nvarchar](max) NULL,
	[Numero] [nvarchar](max) NULL,
	[CodPost] [nvarchar](max) NULL,
	[Provincia] [nvarchar](max) NULL,
	[Ciudad] [nvarchar](max) NULL,
	[FechaAlta] [datetime2](7) NULL,
 CONSTRAINT [PK_socios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipos_obras]    Script Date: 04-ago-24 9:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipos_obras](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tipos_obras] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 04-ago-24 9:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[Id] [uniqueidentifier] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Apellido] [nvarchar](max) NULL,
	[IdRol] [uniqueidentifier] NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaAlta] [datetime2](7) NULL,
	[FechaModificacion] [datetime2](7) NULL,
	[Telefono] [nvarchar](max) NULL,
	[Calle] [nvarchar](max) NULL,
	[Numero] [nvarchar](max) NULL,
	[CodPost] [nvarchar](max) NULL,
	[Provincia] [nvarchar](max) NULL,
	[Ciudad] [nvarchar](max) NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[albaniles] ([Id], [Nombre], [Apellido], [Dni], [Telefono], [Calle], [Numero], [CodPost], [Activo], [FechaAlta]) VALUES (N'8949c942-9a5e-4f13-9fc0-05db1d9053ea', N'Juan', N'Pérez', N'12345678A', N'555-1234', N'Calle Falsa', N'123', N'28001', 1, CAST(N'2024-08-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[albaniles] ([Id], [Nombre], [Apellido], [Dni], [Telefono], [Calle], [Numero], [CodPost], [Activo], [FechaAlta]) VALUES (N'fc88cea7-90f8-4f09-bdaa-1545f790330c', N'Luis', N'Fernández', N'56789012E', N'555-5678', N'Calle del Sol', N'202', N'28005', 1, CAST(N'2024-08-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[albaniles] ([Id], [Nombre], [Apellido], [Dni], [Telefono], [Calle], [Numero], [CodPost], [Activo], [FechaAlta]) VALUES (N'360e5974-e34e-4d7f-a072-65d65cb5d565', N'María', N'García', N'23456789B', N'555-2345', N'Avenida Siempre Viva', N'456', N'28002', 0, CAST(N'2024-08-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[albaniles] ([Id], [Nombre], [Apellido], [Dni], [Telefono], [Calle], [Numero], [CodPost], [Activo], [FechaAlta]) VALUES (N'b95aaa97-059a-46ec-81b3-6d82ea6573b6', N'Ana', N'Martínez', N'45678901D', N'555-4567', N'Plaza Mayor', N'101', N'28004', 0, CAST(N'2024-08-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[albaniles] ([Id], [Nombre], [Apellido], [Dni], [Telefono], [Calle], [Numero], [CodPost], [Activo], [FechaAlta]) VALUES (N'aa41599d-256d-4048-9341-723c86b6d950', N'Javier', N'Romero', N'78901234G', N'555-7890', N'Avenida de la Paz', N'404', N'28007', 0, CAST(N'2024-08-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[albaniles] ([Id], [Nombre], [Apellido], [Dni], [Telefono], [Calle], [Numero], [CodPost], [Activo], [FechaAlta]) VALUES (N'a8ecfb45-a35d-425f-959a-963144eceeab', N'Gerardo', N'Valdez Arce', N'38503287', N'03513102291', N'cauque', N'1234', N'5000', 1, CAST(N'2024-08-04T23:16:05.0470000' AS DateTime2))
INSERT [dbo].[albaniles] ([Id], [Nombre], [Apellido], [Dni], [Telefono], [Calle], [Numero], [CodPost], [Activo], [FechaAlta]) VALUES (N'44c4c578-fc0c-43d3-ab01-bce234c7564a', N'Manuel', N'Vázquez', N'90123456I', N'555-9012', N'Calle del Río', N'606', N'28009', 0, CAST(N'2024-08-09T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[albaniles] ([Id], [Nombre], [Apellido], [Dni], [Telefono], [Calle], [Numero], [CodPost], [Activo], [FechaAlta]) VALUES (N'87bdc30a-1131-4827-8a0c-c49b0d1e62dc', N'Isabel', N'Hernández', N'89012345H', N'555-8901', N'Calle del Viento', N'505', N'28008', 1, CAST(N'2024-08-08T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[albaniles] ([Id], [Nombre], [Apellido], [Dni], [Telefono], [Calle], [Numero], [CodPost], [Activo], [FechaAlta]) VALUES (N'1319c1a5-a4ae-4fe8-9da5-ca79501e4152', N'Beatriz', N'Sánchez', N'01234567J', N'555-0123', N'Calle de la Luna', N'707', N'28010', 1, CAST(N'2024-08-10T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[albaniles] ([Id], [Nombre], [Apellido], [Dni], [Telefono], [Calle], [Numero], [CodPost], [Activo], [FechaAlta]) VALUES (N'55fde8b2-c277-4ab7-a6e1-d903c676a3aa', N'string', N'string', N'string', N'string', N'string', N'string', N'string', 1, CAST(N'2024-08-04T22:45:04.3720000' AS DateTime2))
INSERT [dbo].[albaniles] ([Id], [Nombre], [Apellido], [Dni], [Telefono], [Calle], [Numero], [CodPost], [Activo], [FechaAlta]) VALUES (N'f915d0db-76c7-4c46-aa42-da70fdc36daa', N'Laura', N'Gómez', N'67890123F', N'555-6789', N'Calle del Agua', N'303', N'28006', 1, CAST(N'2024-08-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[albaniles] ([Id], [Nombre], [Apellido], [Dni], [Telefono], [Calle], [Numero], [CodPost], [Activo], [FechaAlta]) VALUES (N'24000dd8-63fd-4290-ab62-e6213e14e9c0', N'Gerardo', N'Valdez Arce', N'38503287', N'03513102291', N'cauque', N'1234', N'5000', 1, CAST(N'2024-08-04T23:14:58.6300000' AS DateTime2))
INSERT [dbo].[albaniles] ([Id], [Nombre], [Apellido], [Dni], [Telefono], [Calle], [Numero], [CodPost], [Activo], [FechaAlta]) VALUES (N'ece2e94b-7d3a-48ce-bfe3-ec916035a7f3', N'Carlos', N'López', N'34567890C', N'555-3456', N'Calle de la Estrella', N'789', N'28003', 1, CAST(N'2024-08-03T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[albaniles_x_obras] ([Id], [IdAlbanil], [IdObra], [TareaARealizar], [FechaAlta]) VALUES (N'e50b0342-85fa-4a85-acf7-01c75cdcfc61', N'fc88cea7-90f8-4f09-bdaa-1545f790330c', N'79960a0e-f76a-4ede-b39e-56bedc088b25', N'fsdfsdf', CAST(N'2024-08-04T23:07:43.2990000' AS DateTime2))
INSERT [dbo].[albaniles_x_obras] ([Id], [IdAlbanil], [IdObra], [TareaARealizar], [FechaAlta]) VALUES (N'11bc7c45-8f4b-48bf-b6c7-466d2e53b508', N'8949c942-9a5e-4f13-9fc0-05db1d9053ea', N'0042b611-6bc4-4505-ae76-ac4cdad1e513', N'adasdasd', CAST(N'2024-08-04T23:08:26.1450000' AS DateTime2))
INSERT [dbo].[albaniles_x_obras] ([Id], [IdAlbanil], [IdObra], [TareaARealizar], [FechaAlta]) VALUES (N'4172362b-a20b-4b76-afc2-4f32447dbf2f', N'fc88cea7-90f8-4f09-bdaa-1545f790330c', N'79960a0e-f76a-4ede-b39e-56bedc088b25', N'fsdfsdf', CAST(N'2024-08-04T23:08:04.3160000' AS DateTime2))
INSERT [dbo].[albaniles_x_obras] ([Id], [IdAlbanil], [IdObra], [TareaARealizar], [FechaAlta]) VALUES (N'68305b26-c35f-4647-86c9-c3798f2249b8', N'8949c942-9a5e-4f13-9fc0-05db1d9053ea', N'2ea9eb18-ca2f-4136-9b39-18f306635ecd', N'Pintar', CAST(N'2024-08-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[albaniles_x_obras] ([Id], [IdAlbanil], [IdObra], [TareaARealizar], [FechaAlta]) VALUES (N'977124dc-558b-4b25-a4ad-d343a9a025a9', N'8949c942-9a5e-4f13-9fc0-05db1d9053ea', N'79960a0e-f76a-4ede-b39e-56bedc088b25', N'pintar mucho', CAST(N'2024-08-04T22:22:08.4120000' AS DateTime2))
GO
INSERT [dbo].[obras] ([Id], [Nombre], [DatosVarios], [IdTipoObra]) VALUES (N'2ea9eb18-ca2f-4136-9b39-18f306635ecd', N'Teatro Municipal', N'Restauración de fachada y refuerzo estructural.', N'840a60c9-c962-4b9b-a3af-47758e2259f4')
INSERT [dbo].[obras] ([Id], [Nombre], [DatosVarios], [IdTipoObra]) VALUES (N'45ca2d93-4685-45ec-acff-261d000be73a', N'Construcción de Nuevo Hospital', N'Hospital con 200 camas y área de urgencias.', N'840a60c9-c962-4b9b-a3af-47758e2259f4')
INSERT [dbo].[obras] ([Id], [Nombre], [DatosVarios], [IdTipoObra]) VALUES (N'89a2e111-6121-4379-a2ce-2d5945d7ad29', N'Reparación de Carretera Principal', N'Asfaltado y reparación de baches en la carretera principal.', N'840a60c9-c962-4b9b-a3af-47758e2259f4')
INSERT [dbo].[obras] ([Id], [Nombre], [DatosVarios], [IdTipoObra]) VALUES (N'79960a0e-f76a-4ede-b39e-56bedc088b25', N'Construcción de Viviendas', N'Construcción de 100 viviendas para familias de bajos recursos.', N'23f29e94-9434-4ab7-a68b-515dd943b73a')
INSERT [dbo].[obras] ([Id], [Nombre], [DatosVarios], [IdTipoObra]) VALUES (N'4d2d72f0-e2db-487f-ab2f-a1f4b4908601', N'Puente 1', N'Puente de acero de 500 metros para tránsito vehicular.', N'dfec398b-2312-47bc-a7a2-76fbe047378b')
INSERT [dbo].[obras] ([Id], [Nombre], [DatosVarios], [IdTipoObra]) VALUES (N'0042b611-6bc4-4505-ae76-ac4cdad1e513', N'Edificio 1', N'Construcción de 10 pisos con estacionamiento subterráneo.', N'23f29e94-9434-4ab7-a68b-515dd943b73a')
INSERT [dbo].[obras] ([Id], [Nombre], [DatosVarios], [IdTipoObra]) VALUES (N'd7c75d8f-e096-49ba-a313-becc7a85f35f', N'Construcción de Nuevo Hospital', N'Hospital con 200 camas y área de urgencias.', N'840a60c9-c962-4b9b-a3af-47758e2259f4')
GO
INSERT [dbo].[tipos_obras] ([Id], [Nombre]) VALUES (N'e5e07c05-0e41-4747-b930-43a7ef2efa03', N'Construcción de Puentes')
INSERT [dbo].[tipos_obras] ([Id], [Nombre]) VALUES (N'840a60c9-c962-4b9b-a3af-47758e2259f4', N'Obras Públicas')
INSERT [dbo].[tipos_obras] ([Id], [Nombre]) VALUES (N'398617b6-5aff-4f76-93aa-49d73db69a35', N'Construcción de Viviendas')
INSERT [dbo].[tipos_obras] ([Id], [Nombre]) VALUES (N'23f29e94-9434-4ab7-a68b-515dd943b73a', N'Edificio')
INSERT [dbo].[tipos_obras] ([Id], [Nombre]) VALUES (N'dfec398b-2312-47bc-a7a2-76fbe047378b', N'Construcción de Puentes')
INSERT [dbo].[tipos_obras] ([Id], [Nombre]) VALUES (N'ecdae93e-a557-4cfd-b2dc-f63a790177f5', N'Obras Públicas')
GO
ALTER TABLE [dbo].[albaniles_x_obras]  WITH CHECK ADD  CONSTRAINT [FK_albaniles_x_obras_albaniles_IdAlbanil] FOREIGN KEY([IdAlbanil])
REFERENCES [dbo].[albaniles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[albaniles_x_obras] CHECK CONSTRAINT [FK_albaniles_x_obras_albaniles_IdAlbanil]
GO
ALTER TABLE [dbo].[albaniles_x_obras]  WITH CHECK ADD  CONSTRAINT [FK_albaniles_x_obras_obras_IdObra] FOREIGN KEY([IdObra])
REFERENCES [dbo].[obras] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[albaniles_x_obras] CHECK CONSTRAINT [FK_albaniles_x_obras_obras_IdObra]
GO
ALTER TABLE [dbo].[obras]  WITH CHECK ADD  CONSTRAINT [FK_obras_tipos_obras_IdTipoObra] FOREIGN KEY([IdTipoObra])
REFERENCES [dbo].[tipos_obras] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[obras] CHECK CONSTRAINT [FK_obras_tipos_obras_IdTipoObra]
GO
ALTER TABLE [dbo].[socios]  WITH CHECK ADD  CONSTRAINT [FK_socios_deportes_IdDeporte] FOREIGN KEY([IdDeporte])
REFERENCES [dbo].[deportes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[socios] CHECK CONSTRAINT [FK_socios_deportes_IdDeporte]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_roles_IdRol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_roles_IdRol]
GO
