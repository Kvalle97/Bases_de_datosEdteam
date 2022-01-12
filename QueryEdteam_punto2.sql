--Clientes (
--  idCliente int,
--  identificacion nvarchar (50),
--  nombre nvarchar(50),
--  correo nvarchar(25),
--  direccion nvarchar(100),

 INSERT Clientes VALUES ('0011802970001T','Keyner valle','keyner18@gmail.com','managua')
 INSERT Clientes VALUES ('0011802970001T','Jose moncada','jose@gmail.com','detras del supermercado')
 INSERT Clientes VALUES ('0011802970001T','Marcos lopez','marcos@gmail.com','esquina sureste')
 INSERT Clientes VALUES ('0011802970001T','ramiro hernandez','hernandez@gmail.com','frente al parqueo quiroz')
 INSERT Clientes VALUES ('0011802970001T','carlos ozuna','carlos@gmail.com','carazo')
 INSERT Clientes VALUES ('0011802970001T','jorge salgado','jorge18@gmail.com','calle 8')
 INSERT Clientes VALUES ('0011802970001T','lorenzo quimales','loregmail.com','detras del colegio jehova es mi pastor')
 INSERT Clientes VALUES ('0011802970001T','francisco carcamo','fran12@gmail.com','frente al supermercado')
 INSERT Clientes VALUES ('0011802970001T','rene cordero','renecito@gmail.com','de la nunciatura 34c al sur')
 INSERT Clientes VALUES ('0011802970001T','jaime olivas','j1998@gmail.com','frente al puente desnivel')
 INSERT Clientes VALUES ('0011802970001T','fran jou','fjou@gmail.com','costado sur de gasolinera')
 INSERT Clientes VALUES ('0011802970001T','carmen osorio','carosorio@gmail.com','calle sur de avenida watson')
 INSERT Clientes VALUES ('0011802970001T','rommel lopez','romello@gmail.com','calle 238')
 INSERT Clientes VALUES ('0011802970001T','hancel ortiz','han2@gmail.com','residencial montecielo')
 INSERT Clientes VALUES ('0011802970001T','karelia martinez','kare28gmail.com','mercado oriental')
 INSERT Clientes VALUES ('0011802970001T','romelio perez','romp@gmail.com','masaya')

-- Productos(
--codigo int,
--nombre nvarchar (150),
--presentacion nvarchar(50),
--precio float,
--impuesto int

INSERT INTO  Productos  (nombre,presentacion,precio,impuesto)
VALUES 
				('desarmadores trupper','caja 12und',250.50,25.05),
				('llave 1/4','caja 24und',300.00,30.00),
				('alicate','und',100.50,10.05),
				('cepillo madera','caja 30und',500.57,50.057),
				('cincel','caja 12und',180.00,18),
				('luz led','caja 12und',250.50,25.05),
				('martillo','caja 12und',250.50,25.05),
				('taladro','caja 12und',250.50,25.05),
				('pulidora','und',250.50,25.05),
				('motosierra maquita','und',250.50,25.05),
				('set de herramienta multiuso','caja 5und',250.50,25.05),
				('set de desarmadores','caja 10und',450,45),
				('pala metalica de construccion','und',180,18),
				('torni 2pulg','caja 200und',140,14)


--delete from  Productos

--CREATE TABLE Facturacion(
--idCliente int,
--codigoproducto int,
--idFactura int,
--fecha datetime,
--stock int,
--descuento int



INSERT  INTO Facturacion (idCliente,codigoproducto,idFactura,idVenta,cantidad,costos,Fecha)
select a.idCliente,b.codigo,11,MAX(f.idVenta + 1) as maximo,12,(12*b.precio) as costo,SYSDATETIME() 
from [dbo].Clientes a, [dbo].Productos b , [dbo].Facturacion f
where a.idCliente=11 and b.codigo=10057
group by a.idCliente,b.codigo, b.precio


select  * from Facturacion
select * from Productos
select * from Clientes
