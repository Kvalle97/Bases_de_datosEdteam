/* 1) Esta consulta muestra los clientes que ha comprado m�s en valor, primeramente, se selecciona
el "idcliente" y el "nombre", se utiliza �inner join" para traer los datos de estas dos tablas
utilizando las llaves foraneas,que este caso la relaci�n es el valor "idCliente",se utilizo
la funci�n "MAX" para filtar el costo mayor, tambi�n se utiliz� la funci�n 
"group by" para agrupar segun cliente y nombre, por �ltimo, la funci�n �order by" para ordenar el costo mayor de
forma descendente, mostrando el cliente que ha comprado m�s en valor
*/

select top 1  a.idCliente,b.nombre, Max (a.costos) as costos 
from Facturacion a inner join Clientes b 
ON a.idCliente = b.idCliente
group by a.idCliente, b.nombre
order by costos desc
/*resuelve el primer punto*/

/* 2) Esta consulta muestra el cliente que ha comprado m�s en cantidad, se utiliz� "inner join" para traer
datos de la tabla facturaci�n y la tabla cliente, haciendo uso de la relaci�n a trav�s de la llave for�nea,
se hizo uso de la funci�n  "SUM"  para sumar los valores de la columna, tambi�n se utiliz� la funci�n "group by" 
para agrupar los datos "idcliente" y "nombre�, por �ltimo se utiliz� la funci�n "order by" 
haciendo que  alias "masencantidad",que apunta al valor cantidad,ordene de forma descendente
y muestre la cantidad mayor*/
select top 1  a.idCliente,b.nombre, SUM (a.cantidad) as masencantidad
from Facturacion a inner join Clientes b 
ON a.idCliente = b.idCliente
group by a.idCliente, b.nombre
order by masencantidad desc
/*resuleve punto dos.*/ 

/*3) Esta consulta muestra los productos m�s vendidos en valor, se utiliz� "inner join" para traer
datos de la tabla facturaci�n y la tabla producto, haciendo uso de la relaci�n a trav�s de la llave for�nea,
se utiliz� la funci�n "MAX" para filtrar el costo mayor, seguido de esto se utiliz� la funcion  group by para
agrupar por "codigoproducto", "nombre" y cantida y por �ltimo un "order by"  */
select top 1  a.codigoproducto,b.nombre,  MAX (a.costos) as masvendidoenvalor
from Facturacion a inner join  Productos b
ON a.codigoproducto = b.codigo
group by a.codigoproducto,b.nombre,a.cantidad
order by sum(a.cantidad) desc
/*resuelve punto3*/

/*4)Esta consulta muestra los productos m�s vendidos en cantidad se utiliz� "inner join" para traer
datos de la tabla facturaci�n y la tabla producto, haciendo uso de la relaci�n a trav�s de la llave for�nea,
se utiliz� la funci�n "SUM" para realizar suma  de los valores en la columna "cantidad" , 
seguido de esto se utiliz� la funcion  group by para
agrupar por "codigoproducto" y  "nombre" , y por �ltimo un "order by" */
select top 1 a.codigoproducto,b.nombre, SUM (a.cantidad) as productomasvendido
from Facturacion a inner join  Productos b
ON a.codigoproducto = b.codigo
group by a.codigoproducto,b.nombre
order by sum(a.cantidad) desc
--resuelve punto4

/*5) Esta consulta muestra los productos menos vendidos en valor, se utiliz� "inner join" para traer
datos de la tabla facturaci�n y la tabla producto, haciendo uso de la relaci�n a trav�s de la llave for�nea,
se utiliz� la funci�n "MIN" para filtrar el costo menor, seguido de esto se utiliz� la funcion  group by para
agrupar por "codigoproducto", "nombre" y cantidad y por �ltimo un "order by"  */
select top 1  a.codigoproducto,b.nombre,  min (a.costos) as menosvendidoenvalor
from Facturacion a inner join  Productos b
ON a.codigoproducto = b.codigo
group by a.codigoproducto,b.nombre,a.cantidad
order by sum(a.cantidad) asc
--resuelve punto 5

/*6)Esta consulta muestra los productos menos vendidos en cantidad, se utiliz� "inner join" para traer
datos de la tabla facturaci�n y la tabla producto, haciendo uso de la relaci�n a trav�s de la llave for�nea,
se utiliz� la funci�n "MIN" para realizar resta en  los valores de la columna "cantidad" , 
seguido de esto se utiliz� la funcion  group by para
agrupar por "codigoproducto" y  "nombre" , y por �ltimo un "order by" */
select top 1 a.codigoproducto,b.nombre, SUM (a.cantidad) as productomenosvendido
from Facturacion a inner join  Productos b
ON a.codigoproducto = b.codigo
group by a.codigoproducto,b.nombre
order by sum(a.cantidad) asc
--resuelve punto 6

/*7) la siguiente consulta  muestra  el valor de las ventas agrupadas por mes haciendo  uso de la funcion MONTH 
que facilita el filtraje por mes*/
select month(fecha) as mes , sum(costos) as costos from Facturacion group by MONTH(fecha);
--resuelve punto 7 

/*8) la consulta que se muestra continuaci�n, muestra el valor de las ventas agrupadas por producto y mes */
select month(a.fecha) as mes ,b.nombre, sum(a.costos) as costos from Facturacion a
inner join productos b on b.codigo=a.codigoproducto
group by MONTH(a.fecha),b.nombre
order by 1 asc;



