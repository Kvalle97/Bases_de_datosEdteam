USE [EDteamFac]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 1/12/2022 12:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[identificacion] [nvarchar](50) NULL,
	[nombre] [nvarchar](50) NULL,
	[correo] [nvarchar](25) NULL,
	[direccion] [nvarchar](100) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturacion]    Script Date: 1/12/2022 12:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturacion](
	[idCliente] [int] NOT NULL,
	[codigoproducto] [int] NULL,
	[idFactura] [int] NOT NULL,
	[idVenta] [int] NOT NULL,
	[cantidad] [int] NULL,
	[costos] [float] NULL,
	[fecha] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 1/12/2022 12:26:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[codigo] [int] IDENTITY(1000,1) NOT NULL,
	[nombre] [nvarchar](150) NULL,
	[presentacion] [nvarchar](50) NULL,
	[precio] [float] NULL,
	[impuesto] [int] NULL,
	[stock] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (1, N'0011802970001T', N'Keyner valle', N'keyner18@gmail.com', N'managua')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (2, N'0011802970001T', N'Jose moncada', N'jose@gmail.com', N'detras del supermercado')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (3, N'0011802970001T', N'Marcos lopez', N'marcos@gmail.com', N'esquina sureste')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (4, N'0011802970001T', N'ramiro hernandez', N'hernandez@gmail.com', N'frente al parqueo quiroz')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (5, N'0011802970001T', N'carlos ozuna', N'carlos@gmail.com', N'carazo')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (6, N'0011802970001T', N'jorge salgado', N'jorge18@gmail.com', N'calle 8')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (7, N'0011802970001T', N'lorenzo quimales', N'loregmail.com', N'detras del colegio jehova es mi pastor')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (8, N'0011802970001T', N'francisco carcamo', N'fran12@gmail.com', N'frente al supermercado')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (9, N'0011802970001T', N'rene cordero', N'renecito@gmail.com', N'de la nunciatura 34c al sur')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (10, N'0011802970001T', N'jaime olivas', N'j1998@gmail.com', N'frente al puente desnivel')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (11, N'0011802970001T', N'fran jou', N'fjou@gmail.com', N'costado sur de gasolinera')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (12, N'0011802970001T', N'carmen osorio', N'carosorio@gmail.com', N'managua')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (13, N'0011802970001T', N'Kenia tardencillo', N'keni18@gmail.com', N'managua')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (14, N'0011802970001T', N'rommel lopez', N'romello@gmail.com', N'calle 238')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (15, N'0011802970001T', N'hancel ortiz', N'han2@gmail.com', N'residencial montecielo')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (16, N'0011802970001T', N'karelia martinez', N'kare28gmail.com', N'mercado oriental')
INSERT [dbo].[Clientes] ([idCliente], [identificacion], [nombre], [correo], [direccion]) VALUES (17, N'0011802970001T', N'romelio perez', N'romp@gmail.com', N'masaya')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (5, 10056, 4, 8, 2, 1002, CAST(N'2022-01-11T14:51:10.2366667' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (5, 10055, 4, 9, 2, 1002, CAST(N'2022-01-11T14:51:46.2000000' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (5, 10054, 5, 10, 2, 2004, CAST(N'2022-01-11T14:55:39.1633333' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (5, 10054, 6, 11, 8, 2004, CAST(N'2022-01-11T15:09:48.9700000' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (5, 10054, 7, 12, 10, 2505, CAST(N'2022-01-11T15:18:24.9000000' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (8, 10049, 8, 13, 20, 10011.4, CAST(N'2022-01-11T15:58:25.1066667' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (1, 10046, 1, 1, 2, 200, CAST(N'2022-01-10T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (1, 10053, 2, 2, 2, 501, CAST(N'2022-01-10T21:30:52.8200000' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (1, 10047, 2, 3, 2, 600, CAST(N'2022-01-10T21:31:23.1766667' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (1, 10049, 2, 4, 2, 1001.14, CAST(N'2022-01-10T21:31:29.9133333' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (1, 10049, 2, 5, 3, 1001.14, CAST(N'2022-01-10T21:37:31.1400000' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (2, 10050, 2, 6, 4, 720, CAST(N'2022-01-10T21:51:40.3333333' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (3, 10046, 2, 7, 4, 1002, CAST(N'2022-01-10T21:57:14.8266667' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (8, 10049, 8, 14, 20, 10011.4, CAST(N'2022-02-02T15:58:25.1066667' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (8, 10049, 8, 15, 20, 10011.4, CAST(N'2022-02-02T15:58:25.1066667' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (9, 10059, 9, 16, 10, 1400, CAST(N'2022-02-02T15:58:25.1066667' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (10, 10058, 10, 17, 10, 1800, CAST(N'2022-01-11T23:08:27.5985965' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (10, 10058, 11, 18, 10, 1800, CAST(N'2022-01-11T23:08:59.6897352' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (10, 10058, 11, 19, 10, 1800, CAST(N'2022-01-11T23:12:19.8132746' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (11, 10057, 11, 20, 12, 5400, CAST(N'2022-01-11T23:12:53.7125211' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (4, 10056, 12, 21, 8, 2004, CAST(N'2022-03-11T23:12:53.7125211' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (4, 10055, 12, 22, 1, 250.5, CAST(N'2022-04-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Facturacion] ([idCliente], [codigoproducto], [idFactura], [idVenta], [cantidad], [costos], [fecha]) VALUES (7, 10054, 13, 23, 40, 46892, CAST(N'2022-05-01T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10046, N'desarmadores trupper', N'caja 12und', 250.5, 25, NULL)
INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10047, N'llave 1/4', N'caja 24und', 300, 30, NULL)
INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10048, N'alicate', N'und', 100.5, 10, NULL)
INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10049, N'cepillo madera', N'caja 30und', 500.57, 50, NULL)
INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10050, N'cincel', N'caja 12und', 180, 18, NULL)
INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10051, N'luz led', N'caja 12und', 250.5, 25, NULL)
INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10052, N'martillo', N'caja 12und', 250.5, 25, NULL)
INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10053, N'taladro', N'caja 12und', 250.5, 25, NULL)
INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10054, N'pulidora', N'und', 250.5, 25, NULL)
INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10055, N'motosierra maquita', N'und', 250.5, 25, NULL)
INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10056, N'set de herramienta multiuso', N'caja 5und', 250.5, 25, NULL)
INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10057, N'set de desarmadores', N'caja 10und', 450, 45, NULL)
INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10058, N'pala metalica de construccion', N'und', 180, 18, NULL)
INSERT [dbo].[Productos] ([codigo], [nombre], [presentacion], [precio], [impuesto], [stock]) VALUES (10059, N'torni 2pulg', N'caja 200und', 140, 14, NULL)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
ALTER TABLE [dbo].[Facturacion]  WITH CHECK ADD  CONSTRAINT [FK__Facturaci__codig__46E78A0C] FOREIGN KEY([codigoproducto])
REFERENCES [dbo].[Productos] ([codigo])
GO
ALTER TABLE [dbo].[Facturacion] CHECK CONSTRAINT [FK__Facturaci__codig__46E78A0C]
GO
ALTER TABLE [dbo].[Facturacion]  WITH CHECK ADD  CONSTRAINT [FK__Facturaci__fecha__45F365D3] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[Facturacion] CHECK CONSTRAINT [FK__Facturaci__fecha__45F365D3]
GO
