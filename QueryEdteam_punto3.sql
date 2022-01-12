/* 1) Esta consulta muestra los clientes que ha comprado más en valor, primeramente, se selecciona
el "idcliente" y el "nombre", se utiliza “inner join" para traer los datos de estas dos tablas
utilizando las llaves foraneas,que este caso la relación es el valor "idCliente",se utilizo
la función "MAX" para filtar el costo mayor, también se utilizó la función 
"group by" para agrupar segun cliente y nombre, por último, la función “order by" para ordenar el costo mayor de
forma descendente, mostrando el cliente que ha comprado más en valor
*/

select top 1  a.idCliente,b.nombre, Max (a.costos) as costos 
from Facturacion a inner join Clientes b 
ON a.idCliente = b.idCliente
group by a.idCliente, b.nombre
order by costos desc
/*resuelve el primer punto*/

/* 2) Esta consulta muestra el cliente que ha comprado más en cantidad, se utilizó "inner join" para traer
datos de la tabla facturación y la tabla cliente, haciendo uso de la relación a través de la llave foránea,
se hizo uso de la función  "SUM"  para sumar los valores de la columna, también se utilizó la función "group by" 
para agrupar los datos "idcliente" y "nombre”, por último se utilizó la función "order by" 
haciendo que  alias "masencantidad",que apunta al valor cantidad,ordene de forma descendente
y muestre la cantidad mayor*/
select top 1  a.idCliente,b.nombre, SUM (a.cantidad) as masencantidad
from Facturacion a inner join Clientes b 
ON a.idCliente = b.idCliente
group by a.idCliente, b.nombre
order by masencantidad desc
/*resuleve punto dos.*/ 

/*3) Esta consulta muestra los productos más vendidos en valor, se utilizó "inner join" para traer
datos de la tabla facturación y la tabla producto, haciendo uso de la relación a través de la llave foránea,
se utilizó la función "MAX" para filtrar el costo mayor, seguido de esto se utilizó la funcion  group by para
agrupar por "codigoproducto", "nombre" y cantida y por último un "order by"  */
select top 1  a.codigoproducto,b.nombre,  MAX (a.costos) as masvendidoenvalor
from Facturacion a inner join  Productos b
ON a.codigoproducto = b.codigo
group by a.codigoproducto,b.nombre,a.cantidad
order by sum(a.cantidad) desc
/*resuelve punto3*/

/*4)Esta consulta muestra los productos más vendidos en cantidad se utilizó "inner join" para traer
datos de la tabla facturación y la tabla producto, haciendo uso de la relación a través de la llave foránea,
se utilizó la función "SUM" para realizar suma  de los valores en la columna "cantidad" , 
seguido de esto se utilizó la funcion  group by para
agrupar por "codigoproducto" y  "nombre" , y por último un "order by" */
select top 1 a.codigoproducto,b.nombre, SUM (a.cantidad) as productomasvendido
from Facturacion a inner join  Productos b
ON a.codigoproducto = b.codigo
group by a.codigoproducto,b.nombre
order by sum(a.cantidad) desc
--resuelve punto4

/*5) Esta consulta muestra los productos menos vendidos en valor, se utilizó "inner join" para traer
datos de la tabla facturación y la tabla producto, haciendo uso de la relación a través de la llave foránea,
se utilizó la función "MIN" para filtrar el costo menor, seguido de esto se utilizó la funcion  group by para
agrupar por "codigoproducto", "nombre" y cantidad y por último un "order by"  */
select top 1  a.codigoproducto,b.nombre,  min (a.costos) as menosvendidoenvalor
from Facturacion a inner join  Productos b
ON a.codigoproducto = b.codigo
group by a.codigoproducto,b.nombre,a.cantidad
order by sum(a.cantidad) asc
--resuelve punto 5

/*6)Esta consulta muestra los productos menos vendidos en cantidad, se utilizó "inner join" para traer
datos de la tabla facturación y la tabla producto, haciendo uso de la relación a través de la llave foránea,
se utilizó la función "MIN" para realizar resta en  los valores de la columna "cantidad" , 
seguido de esto se utilizó la funcion  group by para
agrupar por "codigoproducto" y  "nombre" , y por último un "order by" */
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

/*8) la consulta que se muestra continuación, muestra el valor de las ventas agrupadas por producto y mes */
select month(a.fecha) as mes ,b.nombre, sum(a.costos) as costos from Facturacion a
inner join productos b on b.codigo=a.codigoproducto
group by MONTH(a.fecha),b.nombre
order by 1 asc;



