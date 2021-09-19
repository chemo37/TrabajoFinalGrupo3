USE [ACTAFISCALIZACION]
GO
/****** Object:  Table [dbo].[TbActaControl]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbActaControl](
	[idactacontrol] [int] IDENTITY(1,1) NOT NULL,
	[fecharegistro] [date] NULL,
	[idusuario] [int] NULL,
	[condapellynomb] [varchar](300) NULL,
	[idtipodocumento] [int] NULL,
	[numdocumento] [varchar](30) NULL,
	[direccion] [varchar](300) NULL,
	[distrito] [varchar](100) NULL,
	[vehautorizado] [int] NULL,
	[empresaautorizada] [varchar](300) NULL,
	[ruc] [varchar](100) NULL,
	[numlicconducir] [varchar](100) NULL,
	[fechainfraccion] [date] NULL,
	[clasecategoria] [varchar](20) NULL,
	[placarodaje] [varchar](10) NULL,
	[lugarinfraccion] [varchar](300) NULL,
	[referenciainfra] [varchar](300) NULL,
	[distritoinfra] [varchar](300) NULL,
	[idtipoinfraccion] [int] NULL,
	[idcodigoinfraccion] [int] NULL,
	[idmedidapreventiva] [int] NULL,
	[manifestacioninterv] [varchar](1000) NULL,
	[descripcionhecho] [varchar](1000) NULL,
	[observacionuno] [varchar](200) NULL,
	[observaciondos] [varchar](200) NULL,
	[idestado] [int] NULL,
	[idClasecategoria] [int] NULL,
 CONSTRAINT [PK_TbActaControl] PRIMARY KEY CLUSTERED 
(
	[idactacontrol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbClaseCategoria]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbClaseCategoria](
	[idClasecategoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](40) NULL,
	[idestado] [int] NULL,
 CONSTRAINT [PK_TbClaseCategoria] PRIMARY KEY CLUSTERED 
(
	[idClasecategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbCodigoInfraccion]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbCodigoInfraccion](
	[idcodigoinfraccion] [int] IDENTITY(1,1) NOT NULL,
	[nombrecodigo] [varchar](150) NULL,
	[idtipoinfraccion] [int] NULL,
	[idestado] [int] NULL,
 CONSTRAINT [PK_TbCodigoInfraccion] PRIMARY KEY CLUSTERED 
(
	[idcodigoinfraccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbMedidaPreventiva]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbMedidaPreventiva](
	[idmedidapreventiva] [int] IDENTITY(1,1) NOT NULL,
	[nombremedida] [varchar](300) NULL,
	[idestado] [int] NULL,
 CONSTRAINT [PK_TbMedidaPreventiva] PRIMARY KEY CLUSTERED 
(
	[idmedidapreventiva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbObservacioSelectiva]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbObservacioSelectiva](
	[idobservacionselectiva] [int] IDENTITY(1,1) NOT NULL,
	[nombreobservacion] [varchar](300) NULL,
	[idtipoobservacion] [int] NULL,
	[idestado] [int] NULL,
 CONSTRAINT [PK_TbObservacioSelectiva] PRIMARY KEY CLUSTERED 
(
	[idobservacionselectiva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbTipoDocumento]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbTipoDocumento](
	[idtipodocumento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[idestado] [int] NULL,
 CONSTRAINT [PK_TbTipoDocumento] PRIMARY KEY CLUSTERED 
(
	[idtipodocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbTipoInfraccion]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbTipoInfraccion](
	[idtipoinfraccion] [int] IDENTITY(1,1) NOT NULL,
	[nombretipo] [varchar](150) NULL,
	[idestado] [int] NULL,
 CONSTRAINT [PK_TbTipoInfraccion] PRIMARY KEY CLUSTERED 
(
	[idtipoinfraccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbTipoObservacion]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbTipoObservacion](
	[idtipoobservacion] [int] IDENTITY(1,1) NOT NULL,
	[nombretipo] [varchar](300) NULL,
	[idestado] [int] NULL,
 CONSTRAINT [PK_TbTipoObservacion] PRIMARY KEY CLUSTERED 
(
	[idtipoobservacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbUsuario]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbUsuario](
	[idusuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[clave] [varchar](150) NULL,
	[idtipousuario] [int] NULL,
	[idtipodocumento] [int] NULL,
	[numerodocumento] [varchar](20) NULL,
	[apellidos] [varchar](150) NULL,
	[nombres] [varchar](150) NULL,
	[idestado] [int] NULL,
 CONSTRAINT [PK_TbUsuario] PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbUsuarioPerfil]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbUsuarioPerfil](
	[idusuarioperfil] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[idestado] [int] NULL,
 CONSTRAINT [PK_TbUsuarioPerfil] PRIMARY KEY CLUSTERED 
(
	[idusuarioperfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TbActaControl] ON 

INSERT [dbo].[TbActaControl] ([idactacontrol], [fecharegistro], [idusuario], [condapellynomb], [idtipodocumento], [numdocumento], [direccion], [distrito], [vehautorizado], [empresaautorizada], [ruc], [numlicconducir], [fechainfraccion], [clasecategoria], [placarodaje], [lugarinfraccion], [referenciainfra], [distritoinfra], [idtipoinfraccion], [idcodigoinfraccion], [idmedidapreventiva], [manifestacioninterv], [descripcionhecho], [observacionuno], [observaciondos], [idestado], [idClasecategoria]) VALUES (1, CAST(N'2021-01-01' AS Date), 1, N'apellidosnombres', 1, N'46393958', N'direccion', N'distrito', 1, N'emp autorizada', N'RUC104369', N'numlicconduc', CAST(N'2021-05-05' AS Date), NULL, N'ABC123', N'lugar infra', N'ref infra', N'distrito infra', 1, 1, 1, N'manifestacion', N'descrhecho', N'obs1', N'obs2', 1, 1)
INSERT [dbo].[TbActaControl] ([idactacontrol], [fecharegistro], [idusuario], [condapellynomb], [idtipodocumento], [numdocumento], [direccion], [distrito], [vehautorizado], [empresaautorizada], [ruc], [numlicconducir], [fechainfraccion], [clasecategoria], [placarodaje], [lugarinfraccion], [referenciainfra], [distritoinfra], [idtipoinfraccion], [idcodigoinfraccion], [idmedidapreventiva], [manifestacioninterv], [descripcionhecho], [observacionuno], [observaciondos], [idestado], [idClasecategoria]) VALUES (2, CAST(N'2021-01-01' AS Date), 1, N'apellidosnombres', 1, N'46393958', N'direccion', N'distrito', 1, N'emp autorizada', N'RUC104369', N'numlicconduc', CAST(N'2021-05-05' AS Date), NULL, N'ABC123', N'lugar infra', N'ref infra', N'distrito infra', 1, 1, 1, N'manifestacion', N'descrhecho', N'obs1', N'obs2', 1, 1)
INSERT [dbo].[TbActaControl] ([idactacontrol], [fecharegistro], [idusuario], [condapellynomb], [idtipodocumento], [numdocumento], [direccion], [distrito], [vehautorizado], [empresaautorizada], [ruc], [numlicconducir], [fechainfraccion], [clasecategoria], [placarodaje], [lugarinfraccion], [referenciainfra], [distritoinfra], [idtipoinfraccion], [idcodigoinfraccion], [idmedidapreventiva], [manifestacioninterv], [descripcionhecho], [observacionuno], [observaciondos], [idestado], [idClasecategoria]) VALUES (3, CAST(N'2021-01-01' AS Date), 10, N'apellidosnombres', 1, N'46393958', N'direccion', N'distrito', 1, N'emp autorizada', N'RUC104369', N'numlicconduc', CAST(N'2021-05-05' AS Date), NULL, N'ABC123', N'lugar infra', N'ref infra', N'distrito infra', 1, 1, 1, N'manifestacion', N'descrhecho', N'obs1', N'obs2', 1, 1)
INSERT [dbo].[TbActaControl] ([idactacontrol], [fecharegistro], [idusuario], [condapellynomb], [idtipodocumento], [numdocumento], [direccion], [distrito], [vehautorizado], [empresaautorizada], [ruc], [numlicconducir], [fechainfraccion], [clasecategoria], [placarodaje], [lugarinfraccion], [referenciainfra], [distritoinfra], [idtipoinfraccion], [idcodigoinfraccion], [idmedidapreventiva], [manifestacioninterv], [descripcionhecho], [observacionuno], [observaciondos], [idestado], [idClasecategoria]) VALUES (5, CAST(N'2021-01-01' AS Date), 10, N'apellidosnombres', 1, N'46393958', N'direccion', N'distrito', 1, N'emp autorizada', N'RUC104369', N'numlicconduc', CAST(N'2021-05-05' AS Date), NULL, N'ABC123', N'lugar infra', N'ref infra', N'distrito infra', 1, 1, 1, N'manifestacion', N'descrhecho', N'obs1', N'obs2', 1, 1)
INSERT [dbo].[TbActaControl] ([idactacontrol], [fecharegistro], [idusuario], [condapellynomb], [idtipodocumento], [numdocumento], [direccion], [distrito], [vehautorizado], [empresaautorizada], [ruc], [numlicconducir], [fechainfraccion], [clasecategoria], [placarodaje], [lugarinfraccion], [referenciainfra], [distritoinfra], [idtipoinfraccion], [idcodigoinfraccion], [idmedidapreventiva], [manifestacioninterv], [descripcionhecho], [observacionuno], [observaciondos], [idestado], [idClasecategoria]) VALUES (6, CAST(N'2021-10-15' AS Date), 1, N'dwad', 0, N'dwad', N'awdawawd', N'awd', 1, N'adaw', N'dawd', N'wdwa', CAST(N'2021-01-01' AS Date), NULL, N'wda', N'ffg', N'trtrtr', N'reerer', 1, 2, 2, N'dawda', N'dawda', N'Negativa de firma', N'LIC. Conducir', 1, 1)
INSERT [dbo].[TbActaControl] ([idactacontrol], [fecharegistro], [idusuario], [condapellynomb], [idtipodocumento], [numdocumento], [direccion], [distrito], [vehautorizado], [empresaautorizada], [ruc], [numlicconducir], [fechainfraccion], [clasecategoria], [placarodaje], [lugarinfraccion], [referenciainfra], [distritoinfra], [idtipoinfraccion], [idcodigoinfraccion], [idmedidapreventiva], [manifestacioninterv], [descripcionhecho], [observacionuno], [observaciondos], [idestado], [idClasecategoria]) VALUES (7, CAST(N'2021-09-15' AS Date), 1, N'William Cubas Alegria', 1, N'46393958', N'Comas', N'Comas de comas', 1, N'Empresa autorizada', N'1046393958', N'AC1564564', CAST(N'2021-08-10' AS Date), NULL, N'ABC123', N'Lima Peru', N'refrencia', N'distrito de distrito', 1, 1, 2, N'Observacion y manifestacion', N'descripocion del hecho', N'Negativa de firma', N'LIC. Conducir', 1, 2)
INSERT [dbo].[TbActaControl] ([idactacontrol], [fecharegistro], [idusuario], [condapellynomb], [idtipodocumento], [numdocumento], [direccion], [distrito], [vehautorizado], [empresaautorizada], [ruc], [numlicconducir], [fechainfraccion], [clasecategoria], [placarodaje], [lugarinfraccion], [referenciainfra], [distritoinfra], [idtipoinfraccion], [idcodigoinfraccion], [idmedidapreventiva], [manifestacioninterv], [descripcionhecho], [observacionuno], [observaciondos], [idestado], [idClasecategoria]) VALUES (8, CAST(N'2021-09-15' AS Date), 1, N'Cubas alegria william', 1, N'46393958', N'Lima', N'Los olivos', 1, N'EMP SAC', N'1046393958', N'1054575248754', CAST(N'2021-09-15' AS Date), NULL, N'ABC123', N'Lima Peru', N'metro', N'comas', 1, 2, 2, N'observacion', N'descripción', N'Constancia de fuga', N'DNI', 1, 2)
SET IDENTITY_INSERT [dbo].[TbActaControl] OFF
GO
SET IDENTITY_INSERT [dbo].[TbClaseCategoria] ON 

INSERT [dbo].[TbClaseCategoria] ([idClasecategoria], [nombre], [idestado]) VALUES (1, N'AI', 1)
INSERT [dbo].[TbClaseCategoria] ([idClasecategoria], [nombre], [idestado]) VALUES (2, N'AII', 1)
INSERT [dbo].[TbClaseCategoria] ([idClasecategoria], [nombre], [idestado]) VALUES (3, N'AIIa', 1)
INSERT [dbo].[TbClaseCategoria] ([idClasecategoria], [nombre], [idestado]) VALUES (4, N'AIIb', 1)
INSERT [dbo].[TbClaseCategoria] ([idClasecategoria], [nombre], [idestado]) VALUES (5, N'AIII', 1)
SET IDENTITY_INSERT [dbo].[TbClaseCategoria] OFF
GO
SET IDENTITY_INSERT [dbo].[TbCodigoInfraccion] ON 

INSERT [dbo].[TbCodigoInfraccion] ([idcodigoinfraccion], [nombrecodigo], [idtipoinfraccion], [idestado]) VALUES (1, N'V.1', 1, 1)
INSERT [dbo].[TbCodigoInfraccion] ([idcodigoinfraccion], [nombrecodigo], [idtipoinfraccion], [idestado]) VALUES (2, N'V.2', 1, 1)
INSERT [dbo].[TbCodigoInfraccion] ([idcodigoinfraccion], [nombrecodigo], [idtipoinfraccion], [idestado]) VALUES (3, N'V.3', 1, 1)
INSERT [dbo].[TbCodigoInfraccion] ([idcodigoinfraccion], [nombrecodigo], [idtipoinfraccion], [idestado]) VALUES (4, N'V.4', 1, 1)
INSERT [dbo].[TbCodigoInfraccion] ([idcodigoinfraccion], [nombrecodigo], [idtipoinfraccion], [idestado]) VALUES (5, N'V.5', 1, 1)
INSERT [dbo].[TbCodigoInfraccion] ([idcodigoinfraccion], [nombrecodigo], [idtipoinfraccion], [idestado]) VALUES (6, N'V.6', 2, 1)
INSERT [dbo].[TbCodigoInfraccion] ([idcodigoinfraccion], [nombrecodigo], [idtipoinfraccion], [idestado]) VALUES (7, N'V.7', 2, 1)
INSERT [dbo].[TbCodigoInfraccion] ([idcodigoinfraccion], [nombrecodigo], [idtipoinfraccion], [idestado]) VALUES (8, N'V.8', 2, 1)
SET IDENTITY_INSERT [dbo].[TbCodigoInfraccion] OFF
GO
SET IDENTITY_INSERT [dbo].[TbMedidaPreventiva] ON 

INSERT [dbo].[TbMedidaPreventiva] ([idmedidapreventiva], [nombremedida], [idestado]) VALUES (1, N'INTERRUPCION DEL VIAJE', 1)
INSERT [dbo].[TbMedidaPreventiva] ([idmedidapreventiva], [nombremedida], [idestado]) VALUES (2, N'INTERNAMIENTO PREVENTIVO DEL VEHÍCULO', 1)
INSERT [dbo].[TbMedidaPreventiva] ([idmedidapreventiva], [nombremedida], [idestado]) VALUES (3, N'RETENCIÓN DE LA LICENCIA DE CONDUCIR', 1)
INSERT [dbo].[TbMedidaPreventiva] ([idmedidapreventiva], [nombremedida], [idestado]) VALUES (4, N'RETENCIÓN DEL VEHÍCULO', 1)
INSERT [dbo].[TbMedidaPreventiva] ([idmedidapreventiva], [nombremedida], [idestado]) VALUES (5, N'SUSPENCIÓN PRECAUTORIA DE LA HABILITACIÓN VEHICULAR', 1)
SET IDENTITY_INSERT [dbo].[TbMedidaPreventiva] OFF
GO
SET IDENTITY_INSERT [dbo].[TbObservacioSelectiva] ON 

INSERT [dbo].[TbObservacioSelectiva] ([idobservacionselectiva], [nombreobservacion], [idtipoobservacion], [idestado]) VALUES (1, N'NEGATIVA FIRMA', 1, 1)
INSERT [dbo].[TbObservacioSelectiva] ([idobservacionselectiva], [nombreobservacion], [idtipoobservacion], [idestado]) VALUES (2, N'CONSTANCIA FUGA', 1, 1)
INSERT [dbo].[TbObservacioSelectiva] ([idobservacionselectiva], [nombreobservacion], [idtipoobservacion], [idestado]) VALUES (3, N'NEGATIVA A IDENTIFICARSE', 1, 1)
INSERT [dbo].[TbObservacioSelectiva] ([idobservacionselectiva], [nombreobservacion], [idtipoobservacion], [idestado]) VALUES (4, N'LIC CONDUCIR', 2, 1)
INSERT [dbo].[TbObservacioSelectiva] ([idobservacionselectiva], [nombreobservacion], [idtipoobservacion], [idestado]) VALUES (5, N'TIV', 2, 1)
INSERT [dbo].[TbObservacioSelectiva] ([idobservacionselectiva], [nombreobservacion], [idtipoobservacion], [idestado]) VALUES (6, N'TUC', 2, 1)
INSERT [dbo].[TbObservacioSelectiva] ([idobservacionselectiva], [nombreobservacion], [idtipoobservacion], [idestado]) VALUES (7, N'DNI', 2, 1)
SET IDENTITY_INSERT [dbo].[TbObservacioSelectiva] OFF
GO
SET IDENTITY_INSERT [dbo].[TbTipoDocumento] ON 

INSERT [dbo].[TbTipoDocumento] ([idtipodocumento], [nombre], [idestado]) VALUES (1, N'DNI', 1)
INSERT [dbo].[TbTipoDocumento] ([idtipodocumento], [nombre], [idestado]) VALUES (2, N'CE', 1)
INSERT [dbo].[TbTipoDocumento] ([idtipodocumento], [nombre], [idestado]) VALUES (3, N'PTP', 1)
SET IDENTITY_INSERT [dbo].[TbTipoDocumento] OFF
GO
SET IDENTITY_INSERT [dbo].[TbTipoInfraccion] ON 

INSERT [dbo].[TbTipoInfraccion] ([idtipoinfraccion], [nombretipo], [idestado]) VALUES (1, N'DEL TRANSPORTISTA', 1)
INSERT [dbo].[TbTipoInfraccion] ([idtipoinfraccion], [nombretipo], [idestado]) VALUES (2, N'DEL CONDUCTOR', 1)
INSERT [dbo].[TbTipoInfraccion] ([idtipoinfraccion], [nombretipo], [idestado]) VALUES (3, N'DEL OPERADOR DE INFRAESTRUCTURA COMPLEMENTARIA', 1)
SET IDENTITY_INSERT [dbo].[TbTipoInfraccion] OFF
GO
SET IDENTITY_INSERT [dbo].[TbTipoObservacion] ON 

INSERT [dbo].[TbTipoObservacion] ([idtipoobservacion], [nombretipo], [idestado]) VALUES (1, N'Negativa firma', 1)
INSERT [dbo].[TbTipoObservacion] ([idtipoobservacion], [nombretipo], [idestado]) VALUES (2, N'Negativa de entrega de documentos', 1)
SET IDENTITY_INSERT [dbo].[TbTipoObservacion] OFF
GO
SET IDENTITY_INSERT [dbo].[TbUsuario] ON 

INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (1, N'fiscalizador', N'123456', 1, 1, N'46393958', N'Cubas Alegria', N'William', 1)
INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (2, N'administrador', N'123456', 2, 1, N'4444444', N'APELLIDOS', N'NOMBRES', 1)
INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (9, N'USUUNO', N'CLAVE1', 1, 1, N'4444444', N'APELLIDOS', N'NOMBRES', 1)
INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (10, N'USUUNO', N'CLAVE1', 1, 1, N'4444444', N'APELLIDOS', N'NOMBRES', 1)
INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (11, N'USUUNO', N'CLAVE1', 1, 1, N'4444444', N'APELLIDOS', N'NOMBRES', 1)
INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (12, N'USUUNO', N'CLAVE1', 1, 1, N'4444444', N'APELLIDOS', N'NOMBRES', 1)
INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (13, N'USUUNO', N'CLAVE1', 1, 1, N'4444444', N'APELLIDOS', N'NOMBRES', 1)
INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (14, N'USUUNO', N'CLAVE1', 1, 1, N'4444444', N'APELLIDOS', N'NOMBRES', 1)
INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (15, N'USUFUNO', N'CLAVE1', 1, 1, N'4444444', N'APELLIDOS', N'NOMBRES', 1)
INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (16, N'USUFSUNO', N'CLAVE1', 1, 1, N'4444444', N'APELLIDOS', N'NOMBRES', 1)
INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (17, N'usuario5', N'clave', 1, 1, N'5555555', N'cubas', N'wwwww', 1)
INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (18, N'fiscalizador01', N'123456', 1, 1, N'444444', N'cccccccc', N'wwwwwwwwwwww', 1)
INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (19, N'fiscalizador02', N'123456', 1, 1, N'4444444', N'wdad', N'dwdwad', 1)
INSERT [dbo].[TbUsuario] ([idusuario], [nombre], [clave], [idtipousuario], [idtipodocumento], [numerodocumento], [apellidos], [nombres], [idestado]) VALUES (20, N'fiscalizador08', N'123456', 2, 1, N'46393958', N'cubas alegria', N'william', 1)
SET IDENTITY_INSERT [dbo].[TbUsuario] OFF
GO
SET IDENTITY_INSERT [dbo].[TbUsuarioPerfil] ON 

INSERT [dbo].[TbUsuarioPerfil] ([idusuarioperfil], [nombre], [idestado]) VALUES (1, N'Fiscalizador', 1)
INSERT [dbo].[TbUsuarioPerfil] ([idusuarioperfil], [nombre], [idestado]) VALUES (2, N'Administrador', 1)
SET IDENTITY_INSERT [dbo].[TbUsuarioPerfil] OFF
GO
ALTER TABLE [dbo].[TbActaControl]  WITH CHECK ADD  CONSTRAINT [FK_TbActaControl_TbClaseCategoria] FOREIGN KEY([idClasecategoria])
REFERENCES [dbo].[TbClaseCategoria] ([idClasecategoria])
GO
ALTER TABLE [dbo].[TbActaControl] CHECK CONSTRAINT [FK_TbActaControl_TbClaseCategoria]
GO
ALTER TABLE [dbo].[TbActaControl]  WITH CHECK ADD  CONSTRAINT [FK_TbActaControl_TbCodigoInfraccion] FOREIGN KEY([idcodigoinfraccion])
REFERENCES [dbo].[TbCodigoInfraccion] ([idcodigoinfraccion])
GO
ALTER TABLE [dbo].[TbActaControl] CHECK CONSTRAINT [FK_TbActaControl_TbCodigoInfraccion]
GO
ALTER TABLE [dbo].[TbActaControl]  WITH CHECK ADD  CONSTRAINT [FK_TbActaControl_TbMedidaPreventiva] FOREIGN KEY([idmedidapreventiva])
REFERENCES [dbo].[TbMedidaPreventiva] ([idmedidapreventiva])
GO
ALTER TABLE [dbo].[TbActaControl] CHECK CONSTRAINT [FK_TbActaControl_TbMedidaPreventiva]
GO
ALTER TABLE [dbo].[TbActaControl]  WITH CHECK ADD  CONSTRAINT [FK_TbActaControl_TbTipoInfraccion] FOREIGN KEY([idtipoinfraccion])
REFERENCES [dbo].[TbTipoInfraccion] ([idtipoinfraccion])
GO
ALTER TABLE [dbo].[TbActaControl] CHECK CONSTRAINT [FK_TbActaControl_TbTipoInfraccion]
GO
ALTER TABLE [dbo].[TbActaControl]  WITH CHECK ADD  CONSTRAINT [FK_TbActaControl_TbUsuario] FOREIGN KEY([idusuario])
REFERENCES [dbo].[TbUsuario] ([idusuario])
GO
ALTER TABLE [dbo].[TbActaControl] CHECK CONSTRAINT [FK_TbActaControl_TbUsuario]
GO
ALTER TABLE [dbo].[TbObservacioSelectiva]  WITH CHECK ADD  CONSTRAINT [FK_TbObservacioSelectiva_TbTipoObservacion] FOREIGN KEY([idtipoobservacion])
REFERENCES [dbo].[TbTipoObservacion] ([idtipoobservacion])
GO
ALTER TABLE [dbo].[TbObservacioSelectiva] CHECK CONSTRAINT [FK_TbObservacioSelectiva_TbTipoObservacion]
GO
ALTER TABLE [dbo].[TbUsuario]  WITH CHECK ADD  CONSTRAINT [FK_TbUsuario_TbTipoDocumento] FOREIGN KEY([idtipodocumento])
REFERENCES [dbo].[TbTipoDocumento] ([idtipodocumento])
GO
ALTER TABLE [dbo].[TbUsuario] CHECK CONSTRAINT [FK_TbUsuario_TbTipoDocumento]
GO
ALTER TABLE [dbo].[TbUsuario]  WITH CHECK ADD  CONSTRAINT [FK_TbUsuario_TbUsuarioPerfil] FOREIGN KEY([idtipousuario])
REFERENCES [dbo].[TbUsuarioPerfil] ([idusuarioperfil])
GO
ALTER TABLE [dbo].[TbUsuario] CHECK CONSTRAINT [FK_TbUsuario_TbUsuarioPerfil]
GO
/****** Object:  StoredProcedure [dbo].[PROC_LISA_OBSUNO]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_LISA_OBSUNO]  
	@IDTIPOOBS   INTEGER

AS --[PROC_LISTA_CLASECAT]
BEGIN
	SELECT idobservacionselectiva, nombreobservacion
	FROM TbObservacioSelectiva
	WHERE idestado = 1 AND idtipoobservacion = @IDTIPOOBS
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_LISTA_CLASECAT]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_LISTA_CLASECAT]  

	@IDESTADO   INTEGER
AS --[PROC_LISTA_CLASECAT]
BEGIN
	SELECT idclasecategoria, nombre
	FROM TbClaseCategoria
	WHERE idestado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_LISTA_CODIGOINFRA]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_LISTA_CODIGOINFRA]  
	@IDTIPOINFRACCION   INTEGER
AS --[PROC_LISTA_CLASECAT]
BEGIN
	SELECT idcodigoinfraccion, nombrecodigo
	FROM TbCodigoInfraccion
	WHERE idestado = 1 AND idtipoinfraccion = @IDTIPOINFRACCION
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_LISTA_MEDIDAPREV]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_LISTA_MEDIDAPREV]  
	@IDESTADO   INTEGER
AS --[PROC_LISTA_CLASECAT]
BEGIN
	SELECT idmedidapreventiva, nombremedida
	FROM TbMedidaPreventiva
	WHERE idestado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_LISTA_PERFIL]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_LISTA_PERFIL]  

	@IDESTADO   INTEGER
AS --[[PROC_LISTA_PERFIL]]  

BEGIN
	SELECT idusuarioperfil, nombre
	FROM TbUsuarioPerfil
	WHERE idestado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_LISTA_TIPO_DOCUMENTO]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_LISTA_TIPO_DOCUMENTO]  ---[PROC_USUARIO_AUTENTICAR] 'fiscalizador','12346'
	@IDESTADO   INTEGER
AS --[PROC_LISTA_TIPO_DOCUMENTO]  1

BEGIN
	SELECT idtipodocumento,nombre
	FROM TbTipoDocumento
	WHERE idestado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_LISTA_TIPOINFRA]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_LISTA_TIPOINFRA]  
	@IDESTADO   INTEGER
AS --[PROC_LISTA_CLASECAT]
BEGIN
	SELECT idtipoinfraccion,nombretipo
	FROM TbTipoInfraccion
	WHERE idestado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_LISTAR_ACTAS]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PROC_LISTAR_ACTAS]  ---[PROC_LISTAR_ACTAS] '01/01/2021','01/01/2021'
	@FECHAINI DATE,
	@FECHAFIN DATE
AS --[PROC_USUARIO_REGISTRA] 1,'4444444','APELLIDOS', 'NOMBRES', 1, 'USUFSUNO', 'CLAVE1'

BEGIN

	SELECT	CONVERT(nvarchar(30), TACTA.fecharegistro, 3)  AS FECHAREGISTRO,
			TUSU.apellidos + ' ' + TUSU.nombre AS NOMBRESUSUARIO,
			TUSU.nombre AS USUARIO,
			TACTA.condapellynomb AS CONDUCTORINTRV,
			TTD.nombre AS TIPODOCUMENTOINTRV,
			TACTA.numdocumento AS NUMDOCUMENTOINTRV,
			TACTA.direccion AS DIRECCIONINTRV ,
			TACTA.distrito AS DISTRITOINTRV,
			TACTA.vehautorizado AS ISVEHICULOAUTORIZADOINTRV,
			TACTA.empresaautorizada AS EMPAUTORIZADA,
			TACTA.ruc AS RUC,
			TACTA.numlicconducir AS LICCONDUCIR,
			CONVERT(nvarchar(30), TACTA.fechainfraccion, 3)   AS FECINFRACCION,
			TACTA.placarodaje AS PLACA,
			TACTA.lugarinfraccion AS LUGARINFRACCION,
			TACTA.referenciainfra AS REFERENCIAINFRA,
			TACTA.distritoinfra AS DISTRITOINFRA,
			TTI.nombretipo AS TIPOINFRACCION,
			TCI.nombrecodigo AS CODIGOINFRA,
			TMP.nombremedida AS MEDIDAPREVENTIVA,
			TACTA.manifestacioninterv AS MANIFESTACIONINTERV,
			TACTA.descripcionhecho AS DESCRPHECHO,
			TACTA.observacionuno AS OBSUNO,
			TACTA.observaciondos AS OBSDOS,
			TCC.nombre AS CLASECATEGORIA
	FROM TbActaControl TACTA JOIN TbUsuario TUSU
	ON TACTA.idusuario = TUSU.idusuario JOIN TbTipoDocumento TTD 
	ON TUSU.idtipodocumento = TTD.idtipodocumento JOIN TbTipoInfraccion TTI 
	ON TACTA.idtipoinfraccion = TTI.idtipoinfraccion JOIN TbCodigoInfraccion TCI
	ON TACTA.idcodigoinfraccion = TCI.idcodigoinfraccion JOIN TbMedidaPreventiva TMP 
	ON TACTA.idmedidapreventiva = TMP.idmedidapreventiva JOIN TbClaseCategoria TCC 
	ON TACTA.idClasecategoria = TCC.idclasecategoria 
	WHERE TACTA.idestado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_REGISTRA_ACTA]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_REGISTRA_ACTA]  
	@fecharegistro   DATE,
	@idusuario INTEGER,
	@condapellynombre VARCHAR(200),
	@idtipodocumento INTEGER,
	@numerodocumento VARCHAR(50),
	@direccion  VARCHAR(250),
	@distrito  VARCHAR(100),
	@isvehiculoautorizad  INTEGER,
	@empresaautorizada VARCHAR(300),
	@ruc VARCHAR(20),
	@numlicenciaconducir VARCHAR(30),
	@fechainfraccion DATE,
	@placarodaje VARCHAR(10),
	@lugarinfraccion VARCHAR(300),
	@refenciainfraccion VARCHAR(300),
	@distritoinfraccion VARCHAR(300),
	@idtipoinfraccion INTEGER,
	@idcodigoinfraccion INTEGER,
	@idmedidapreventiva INTEGER,
	@manifestacioninterv VARCHAR(1000),
	@descripcionhecho VARCHAR(1000),
	@observacionuno VARCHAR(200),
	@observaciondos VARCHAR(200),
	@idclasecategoria INTEGER
AS --[PROC_LISTA_CLASECAT]
	DECLARE @CODIGO INTEGER  = NULL;
	DECLARE	@MENSAJE NVARCHAR(100) = '';
	DECLARE	@CODIGOREGISTRO INTEGER  = NULL;
BEGIN

	BEGIN TRY  

		INSERT INTO TbActaControl (fecharegistro, idusuario, condapellynomb, idtipodocumento, numdocumento, direccion, distrito, vehautorizado, empresaautorizada,
		ruc, numlicconducir, fechainfraccion, placarodaje, lugarinfraccion, referenciainfra, distritoinfra, idtipoinfraccion, idcodigoinfraccion, idmedidapreventiva,
		manifestacioninterv, descripcionhecho, observacionuno, observaciondos, idestado, idClasecategoria)
		VALUES (@fecharegistro, @idusuario, @condapellynombre, @idtipodocumento, @numerodocumento, @direccion, @distrito, @isvehiculoautorizad, @empresaautorizada,
		@ruc, @numlicenciaconducir, @fechainfraccion, @placarodaje, @lugarinfraccion, @refenciainfraccion, @distritoinfraccion, @idtipoinfraccion, @idcodigoinfraccion, @idmedidapreventiva,
		@manifestacioninterv, @descripcionhecho, @observacionuno, @observaciondos, 1, @idclasecategoria)
	
		SET @CODIGOREGISTRO = SCOPE_IDENTITY()

		IF @CODIGOREGISTRO > 0
		BEGIN
			SET @CODIGO = 1
			SET @MENSAJE = 'Registró ok'
		END
		ELSE
		BEGIN
			SET @CODIGO = 0
			SET @MENSAJE = 'No registró'
		END

	END TRY 
	BEGIN CATCH  
	   -- statements that handle exception
	   	SET @CODIGO = 0
		SET @MENSAJE = ERROR_MESSAGE()
	END CATCH  

	SELECT @CODIGO AS CODIGO, @MENSAJE AS MENSAJE
END
GO
/****** Object:  StoredProcedure [dbo].[PROC_USUARIO_AUTENTICAR]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PROC_USUARIO_AUTENTICAR]  ---[PROC_USUARIO_AUTENTICAR] 'fiscalizador','12346'
	@USUARIO   NVARCHAR(50),
	@PASSWORD  NVARCHAR(50)

AS --[PROC_USUARIO_AUTENTICAR] 'admin', '123456'
	DECLARE @CODIGO INTEGER  = NULL;
	DECLARE	@MENSAJE NVARCHAR(100) = '';
	DECLARE	@NOMBRESYAPELLIDOS NVARCHAR(200) = '';
	DECLARE @PERFIL  NVARCHAR(100) = '';
BEGIN

	SELECT	@CODIGO = tusu.idusuario,
			@PERFIL = tusup.nombre,
			@NOMBRESYAPELLIDOS = tusu.nombres + ' ' + tusu.apellidos
	FROM	TbUsuario tusu JOIN TbUsuarioPerfil tusup 
	ON		tusu.idtipousuario = tusup.idusuarioperfil
	WHERE	tusu.nombre = @USUARIO
	AND		tusu.clave = @PASSWORD AND tusu.idestado = 1;


	IF @CODIGO > 0
	BEGIN
		SET @CODIGO =1;
		SET @MENSAJE = 'Ok'
	END
	ELSE
	BEGIN
		SET @CODIGO =0;
		SET @MENSAJE = 'Contraseña de usuario no es válido';
	END    

	SELECT	@CODIGO as CODIGO, 
			@MENSAJE AS MENSAJE,
			@CODIGO AS AUXILIAR,
			@NOMBRESYAPELLIDOS AS NOMBRESYAPELL,
			@PERFIL AS PERFIL

END
GO
/****** Object:  StoredProcedure [dbo].[PROC_USUARIO_REGISTRA]    Script Date: 16/09/2021 12:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PROC_USUARIO_REGISTRA]  ---[PROC_USUARIO_AUTENTICAR] 'fiscalizador','123456'
	@IDTIPODOCUMENTO   INTEGER,
	@NUMERODOCUMENTO  NVARCHAR(50),
	@APELLIDOS NVARCHAR(100),
	@NOMBRES NVARCHAR(100),
	@IDTIPOUSURAIO    INTEGER,
	@USUARIO NVARCHAR(50),
	@CLAVE NVARCHAR(50)

AS --[PROC_USUARIO_REGISTRA] 1,'4444444','APELLIDOS', 'NOMBRES', 1, 'USUFSUNO', 'CLAVE1'
	DECLARE @CODIGO INTEGER  = NULL;
	DECLARE	@MENSAJE NVARCHAR(100) = '';
	DECLARE @CANTUSUARIO INTEGER = 0;
	DECLARE	@CODIGOREGISTRO INTEGER  = NULL;
BEGIN

	BEGIN TRY  
		SELECT @CANTUSUARIO = COUNT(*) 
		FROM TbUsuario 
		WHERE nombre = @USUARIO AND idestado = 1

		IF @CANTUSUARIO > 0
			BEGIN
			  	SET @CODIGO = 0
				SET @MENSAJE = 'el usuario ya existe'
			END
		ELSE
		BEGIN
			INSERT INTO TbUsuario (idtipousuario,idtipodocumento, numerodocumento, apellidos, nombres, nombre, clave, idestado)
			VALUES (@IDTIPOUSURAIO,@IDTIPODOCUMENTO, @NUMERODOCUMENTO, @APELLIDOS, @NOMBRES, @USUARIO, @CLAVE, 1)

			SET @CODIGOREGISTRO = SCOPE_IDENTITY()
	

			IF @CODIGOREGISTRO > 0
			BEGIN
				SET @CODIGO = 1
				SET @MENSAJE = 'Registró ok'
			END
			ELSE
			BEGIN
				SET @CODIGO = 0
				SET @MENSAJE = 'No registró'
			END
		END
	END TRY 
	BEGIN CATCH  
	   -- statements that handle exception
	   	SET @CODIGO = 0
		SET @MENSAJE = 'ocurrió un error'
	END CATCH  


	SELECT @CODIGO AS CODIGO, @MENSAJE AS MENSAJE
END
GO
