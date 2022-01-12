create database EDteamFac

use EDteamFac

CREATE  TABLE Clientes (
  idCliente int,
  identificacion nvarchar (50),
  nombre nvarchar(50),
  correo nvarchar(25),
  direccion nvarchar(100),
  CONSTRAINT PK_Cliente PRIMARY KEY (idCliente)
)


CREATE TABLE Productos(
codigo int,
nombre nvarchar (150),
presentacion nvarchar(50),
precio float,
impuesto int
CONSTRAINT PK_Producto PRIMARY KEY (codigo),

)


CREATE TABLE Facturacion(
idCliente int,
codigoproducto int,
idFactura int,
idVenta int,
cantidad int,
costos float,
fecha datetime
FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
FOREIGN KEY (codigoproducto) REFERENCES Productos(codigo)
)