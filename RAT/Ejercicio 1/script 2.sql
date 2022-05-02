
-- punto 1
-- Algebra relacional:
Π{ciudad}(σ{nombre='SALES'}(departamentos))
--MySQL
SELECT ciudad FROM departamentos WHERE nombre = 'SALES'

-- puto 2
-- Algebra relacional:
Π{rut, nombre}(σ{comuna='PROVINCIA'}(clientes))
-- MySQL:
SELECT rut, nombre FROM clientes WHERE comuna = 'PROVINCIA'

-- punto 3
-- Algebra relacional: 
Π{nombre, precio}(σ{nombre='TELEVISOR'  ∨ nombre='PROYECTOR'  }(productos))
-- MySQL:
SELECT nombre, precio FROM productos WHERE nombre = 'TELEVISOR' OR nombre = 'PROYECTOR'

-- punto 3
-- Algebra relacional:
Π{nombre}(σ{num_ventas=55 ∧ productos.codigo=ventas_detalle.productos_codigo}(productos, ventas_detalle))
-- MySQL
  SELECT nombre FROM productos,ventas_detalle WHERE num_ventas = 55 AND       productos.codigo = ventas_detalle.productos_codigo

-- punto 4
-- Algebra relacional:
Π{num_venta}(σ{ nombre='WARD' ∧ ventas.empleados_rut=empleados.rut}(ventas, empleados))

--MySQL:
SELECT num_venta FROM ventas, empleados WHERE nombre = 'WARD' AND ventas.empleados_rut = empleados.rut

-- punto 5
Π{clientes.nombre}(σ{empleados.nombre='TURNER' ∧ ventas.empleados_rut=empleados.rut ∧ ventas.clientes_rut=clientes.rut}(clientes, ventas, empleados))

SELECT clientes.nombre FROM clientes,ventas,empleados WHERE empleados.nombre = 'TURNER' AND ventas.empleados_rut = empleados.rut AND ventas.clientes_rut = clientes.rut

-- punto 6
Π{productos.precio,productos.nombre}(σ{empleados.nombre='MARTIN' ∧ventas.empleados_rut=empleados.rut ∧ventas.num_venta=ventas_detalle.num_ventas ∧ventas_detalle.productos_codigo=productos.codigo}(productos, ventas, empleados,ventas_detalle))

SELECT productos.precio,productos.nombre FROM    productos,ventas,empleados,ventas_detalle WHERE empleados.nombre = 'MARTIN' AND ventas.empleados_rut = empleados.rut AND ventas.num_venta = ventas_detalle.num_ventas AND ventas_detalle.productos_codigo = productos.codigo

-- punto 7
Π{grados.grado}(σ{empleados.sueldo≥grados.sueldo_inf ∧ empleados.sueldo≤grados.sueldo_sup  ∧ empleados.nombre='CLARK' }(grados, empleados))

SELECT grados.grado FROM grados,empleados WHERE empleados.sueldo >= grados.sueldo_inf AND empleados.sueldo <= grados.sueldo_sup AND empleados.nombre = 'CLARK'

-- punto 8
Π{productos.nombre}(σ{productos.codigo=ventas_detalle.productos_codigo ∧ventas_detalle.num_ventas=ventas.num_venta ∧ventas.clientes_rut=clientes.rut   ∧clientes.comuna='LAS CONDES' }(productos,ventas_detalle,ventas,clientes))

SELECT productos.nombre FROM productos,ventas_detalle,ventas,clientes WHERE productos.codigo = ventas_detalle.productos_codigo AND ventas_detalle.num_ventas = ventas.num_venta AND ventas.clientes_rut = clientes.rut AND clientes.comuna = 'LAS CONDES'

--punto 9
Π{clientes.nombre}(σ{clientes.rut=ventas.clientes_rut ∧ventas.num_venta=ventas_detalle.num_ventas ∧ventas_detalle.productos_codigo=productos.codigo ∧ productos.precio=2000000 }(clientes,ventas,ventas_detalle,productos))

SELECT clientes.nombre FROM clientes,ventas,ventas_detalle,productos WHERE clientes.rut = ventas.clientes_rut AND ventas.num_venta = ventas_detalle.num_ventas AND ventas_detalle.productos_codigo = productos.codigo AND productos.precio = 2000000

-- punto 10
Π{COUNT(precio)}(σ{ precio≥1000000}(productos))

SELECT COUNT(precio) AS productos_mayor_1M FROM productos WHERE precio>1000000;

-- punto 11
Π{SUM(monto)}(Ventas)

SELECT SUM(monto) AS monto_total FROM ventas;

-- punto 12
Π{SUM(ventas_detalle.cantidad)}(σ{ ventas_detalle.productos_codigo=productos.codigo ∧productos.nombre='MICROONDAS'}(ventas_detalle, productos))

SELECT SUM(ventas_detalle.cantidad) AS cantidad_total_vendida FROM ventas_detalle, productos WHERE ventas_detalle.Productos_codigo=productos.codigo AND productos.nombre='MICROONDAS';

-- punto 13
Π{SUM(ventas.monto)}(σ{ventas.Clientes_rut=clientes.rut  ∧clientes.nombre='FANNYS'}(ventas,clientes))

SELECT SUM(ventas.monto) AS total_pagado FROM ventas, clientes WHERE ventas.Clientes_rut=clientes.rut AND clientes.nombre='FANNYS';

-- punto 14
Π{SUM((empleados.comision)/100*ventas.monto)}(σ{empleados.rut=ventas.empleados_rut  ∧ empleados.nombre='WARD' }(empleados, ventas))

SELECT SUM((empleados.comision)/100*ventas.monto) AS comisiones_ganadas FROM empleados, ventas WHERE empleados.rut=ventas.Empleados_rut AND empleados.nombre='WARD';

-- punto 15
R1 ←Π{rut-jefe}(σ{nombre='SCOTT'}(empleados)) 
R2 ←Π{nombre}(σ{empleado.rut=alias1.rut_jefe}(empleados × R1))

SELECT nombre AS nombre_jefe FROM empleados WHERE rut=(SELECT rut_jefe FROM empleados WHERE nombre='SCOTT');

-- punto 16
Π{nombre, precio}(σ{precio= MAX(precio) }(productos))

SELECT nombre, precio FROM productos WHERE precio=(SELECT MAX(precio)FROM productos);

-- punto 17
Π{empleados.nombre, empleados.sueldo}(σ{empleados.num_dep=departamentos.numdep ∧sueldo=Π{empleados.sueldo}(σ{empleados.num_dep=departamentos.numdep ∧departamentos.ciudad='BARRANQUILLA'}(empleados,departamentos))  ∧ departamentos.ciudad ='BARRANQUILLA' }(empleados, departamentos))

SELECT empleados.nombre, empleados.sueldo FROM empleados, departamentos WHERE empleados.num_dep=departamentos.numdep AND sueldo=(SELECT empleados.sueldo FROM empleados, departamentos WHERE empleados.num_dep=departamentos.numdep AND departamentos.ciudad='BARRANQUILLA')AND departamentos.ciudad='BARRANQUILLA';

-- punto 18
Π{empleados.nombre}(σ{empleados.rut=ventas.empleados_rut ∧ventas.num_venta=ventas_detalle.num_ventas  ∧ventas_detalle.productos_codigo=productos.codigo  ∧productos.precio=Π{MAX(productos.precio)}(productos)}(empleados,ventas_detalle, ventas,productos))

SELECT empleados.nombre FROM empleados, ventas_detalle, ventas, productos WHERE empleados.rut=ventas.Empleados_rut AND ventas.num_venta=ventas_detalle.num_ventas AND ventas_detalle.Productos_codigo=productos.codigo AND productos.precio=(SELECT MAX(productos.precio)FROM productos);

-- punto 19

Π{SUM(ventas.monto),clientes.rut}(σ{ ventas.clientes_rut=clientes.rut}(ventas,clientes))GROUP BY  clientes.rut

SELECT SUM(ventas.monto) AS monto_total, clientes.rut FROM ventas, clientes WHERE ventas.Clientes_rut=clientes.rut;

-- punto 20
Π{clientes.nombre, SUM(ventas.monto)}(σ{ ventas.clientes_rut=clientes.rut  GRUOP BY clientes.nombre, clientes.rut} (ventas, clientes)) GROUP BY clientes.nombre, clientes.rut

SELECT clientes.nombre, SUM(ventas.monto) AS monto_total FROM ventas, clientes WHERE ventas.Clientes_rut=clientes.rut GROUP BY clientes.nombre, clientes.rut;

-- punto 21
Π{empleados.nombre,SUM(ventas.monto)}(σ{ventas.empleados_rut=empleados.rut  GRUOP BY empleados.nombre, empleados.rut} (ventas, empleados)) GROUP BY empleados.nombre, empleados.rut

SELECT empleados.nombre, SUM(ventas.monto)AS monto_total FROM empleados, ventas WHERE ventas.Empleados_rut=empleados.rut GROUP BY empleados.nombre, empleados.rut;

-- punto 22
R1 ←Π{nombre,SUM(cantidad)}(σ{codigo=productos_codigo}(ventas_detalle × producto)) GROUP BY productos_codigo
R2 ←Π{mombre, cantidad}(σ{cantidad=MAX(cantidad}(A))

SELECT productos.nombre FROM productos, (SELECT productos_codigo, SUM(cantidad) as SUM FROM ventas_detalle GROUP BY productos_codigo) as total WHERE productos.codigo=total.productos_codigo AND total.SUM = (SELECT MAX(SUM)FROM (SELECT productos_codigo, SUM(cantidad) as SUM FROM ventas_detalle GROUP BY productos_codigo) as total);

-- punto 23
R1 ←Π{clientes.nombre}(clientes × R2) 
R2 ←Π{clientes_rut,COUNT(clientes_rut)}(σ{clientes.rut=total.clientes_rut    ∧total.suma=R2}(ventas))GROUP BY clientes_rut 
R3 ←Π{ MAX(suma)}(R3) 
R4 ← Π{clientes_rut, COUNT(clientes_rut}(ventas)GROUP BY clientes_rut

SELECT clientes.nombre FROM clientes, (SELECT clientes_rut, COUNT(clientes_rut) as suma FROM ventas GROUP BY clientes_rut) as total WHERE clientes.rut=total.clientes_rut AND total.suma=(SELECT MAX(suma)FROM (SELECT clientes_rut, COUNT(clientes_rut) as suma FROM ventas GROUP BY clientes_rut) as total);


-- punto 24
R1 ←Π{productos.nombre}(productos)
R2 ←Π{ventas_detalle.productos_codigo}(ventas_detalle)  
R3 ←[R1]―[R2]
SELECT productos.nombre FROM productos WHERE productos.codigo NOT IN (SELECT ventas_detalle.Productos_codigo FROM ventas_detalle);

-- punto 25
R1 ←Π{clientes.comuna}(clientes)
R2←Π{ventas.clientes_rut,SUM(ventas_detalle.cantidad)}(σ{ventas.num_venta=ventas_detalle.num_ventas ∧ventas_detalle.productos_codigo=productos.codigo ∧productos.nombre='TELEVISOR'}(ventas, ventas_detalle_productos × R3))  GROUP BY ventas.clientes_rut
R3 ←Π{ventas.clientes_rut, SUM(ventass_detalle.cantidad)}(σ{ventas.num_venta=ventas_detalle.num_ventas ∧ventas_detalle.productos_codigo=productos.codigo ∧productos.nombre='TELEVISOR'}(ventas, ventas_detalle,productos × R2)) GROUP BY ventas.clientes_rut

SELECT clientes.comuna FROM clientes, (SELECT ventas.Clientes_rut, SUM(ventas_detalle.cantidad) as suma FROM ventas, ventas_detalle, productos WHERE ventas.num_venta=ventas_detalle.num_ventas AND ventas_detalle.Productos_codigo=productos.codigo AND productos.nombre='TELEVISOR'GROUP BY ventas.Clientes_rut) as total WHERE clientes.rut=total.clientes_rut AND total.suma=(SELECT MAX(suma)FROM (SELECT ventas.Clientes_rut, SUM(ventas_detalle.cantidad) as suma FROM ventas, ventas_detalle, productos WHERE ventas.num_venta=ventas_detalle.num_ventas AND ventas_detalle.Productos_codigo=productos.codigo AND productos.nombre='TELEVISOR'GROUP BY ventas.Clientes_rut) as total);

-- punto 26
Π{empleados.nombre,empleados.sueldo, grados.grado}(σ{empleados.sueldo≥grados.sueldo_inf ∧empleados.sueldo≤grados.sueldo_sup ∧ empleados.cargo='CEO' }(empleados, grados))

SELECT empleados.nombre, empleados.sueldo, grados.grado FROM empleados, grados WHERE empleados.sueldo > grados.sueldo_inf AND empleados.sueldo < grados.sueldo_sup AND empleados.cargo='CEO';

-- punto 27
Π{COUNT(codigo)}(σ{ productos.precio≤Π{AVG(precio)}(productos)}(productos))

SELECT COUNT(codigo) AS cantidad_producto FROM productos WHERE productos.precio<(SELECT AVG(precio)FROM productos);

-- 28
R1 ←Π{SUM(ventas.monto}(ventas × R2) 
R2 ←Π{clientes_rut,COUNT(clientes_rut)}(σ{ventas.clientes_rut=total.clientes_rut ∧ total.suma=MAX(suma)}(ventas × R3))GROUP BY clientes_rut 
R3 ←Π{clientes_rut, COUNT(clientes_rut)}(ventas)GROUP BY clientes_rut

SELECT SUM(ventas.monto) AS monto FROM ventas, (SELECT Clientes_rut, COUNT(Clientes_rut) as suma FROM ventas GROUP BY Clientes_rut) as total WHERE ventas.Clientes_rut=total.clientes_rut AND total.suma=(SELECT MAX(suma)FROM (SELECT Clientes_rut, COUNT(Clientes_rut) as suma FROM ventas GROUP BY Clientes_rut) as total);

-- punto 29
SELECT departamentos.nombre, SUM(empleados.sueldo)AS total_sueldos FROM empleados, departamentos WHERE departamentos.numdep=empleados.num_dep GROUP BY departamentos.nombre, departamentos.numdep;

-- punto 30
Π{empleados.rut}(σ{empleados.sueldo≥grados.sueldo_inf∧ empleados.sueldo≤grados.sueldo_sup ∧ grados.grado=2}(empleados, grados))

SELECT COUNT(empleados.rut) AS Num_empleados FROM empleados, grados WHERE empleados.sueldo > grados.sueldo_inf AND empleados.sueldo < grados.sueldo_sup AND grados.grado=2;

-- 31
Π{clientes.comuna,SUM(ventas.monto)}(σ{ventas.clientes_rut=clientes.rut}(ventas, clientes))GROUP BY clientes.comuna

SELECT clientes.comuna, SUM(ventas.monto)AS Monto_total FROM ventas, clientes WHERE ventas.Clientes_rut=clientes.rut GROUP BY clientes.comuna;
-- punto 32
Π{productos.nombre,SUM(ventas_detalle.cantidad)}(σ{productos.codigo=ventas_detalle.productos_codigo }(productos, ventas_detalle))

SELECT productos.nombre, SUM(ventas_detalle.cantidad)AS cantidad_total FROM productos, ventas_detalle WHERE productos.codigo=ventas_detalle.Productos_codigo GROUP BY productos.nombre, productos.codigo;

-- punto 33
R1 ←Π{COUNT(clientes.rut)}(σ{clientes.rut=total.clientes_rut}(clientes × R2))
R2 ←Π{ventas.clientes_rut }(σ{ventas.num_venta=ventas_detalle.num_ventas ∧ ventas_detalle.productos_codigo=productos.codigo ∧ productos.nombre='PROYECTOR'}(ventas,ventas_detalle,productos))GROUP BY ventas.clientes_rut  

SELECT COUNT(clientes.rut) AS Nro_clientes FROM clientes, (SELECT ventas.Clientes_rut FROM ventas, ventas_detalle, productos WHERE ventas.num_venta=ventas_detalle.num_ventas AND ventas_detalle.Productos_codigo=productos.codigo AND productos.nombre='PROYECTOR'GROUP BY ventas.Clientes_rut) AS total WHERE clientes.rut=total.clientes_rut;

-- punto 34
R1 ←Π{departamentos.nombre}(departamentos × R2)
R2 ←Π{num_dep,COUNT(rut)}(σ{departamentos.numdep=total.num_dep    ∧total.suma=R4}(empleados))GROUP BY num_dep  
R3 ← Π{MAX(suma) }(R4)
R4 ←Π{num_dep,COUNT(rut)  AS suma}(empleados)GROUP BY num_dep

SELECT departamentos.nombre FROM departamentos, (SELECT num_dep, COUNT(rut) AS suma FROM empleados GROUP BY num_dep) AS total WHERE departamentos.numdep=total.num_dep AND total.suma=(SELECT MAX(suma)FROM (SELECT num_dep, COUNT(rut) AS suma FROM empleados GROUP BY num_dep) AS total);

-- punto 35
R1 ←Π{a.nombre, COUNT(empleados.rut)}(σ{empleados.rut_jefe=a.rut}(empleados × R2))
R2 ←Π{rut, nombre}(σ{cargo='CEO'}(empleados))  

SELECT a.nombre, COUNT(empleados.rut)AS Nro_emple FROM empleados, (SELECT rut, nombre FROM empleados WHERE cargo=’CEO’)AS a WHERE empleados.rut_jefe=a.rut GROUP BY a.nombre, a.rut 

-- punto 36
R1 ← Π{empleados.nombre}(empleados × R2)
R2 ← Π{empleados.rut,COUNT(num_venta)}(σ{empleados.rut=ventas.empleados_rut }(empleados,ventas))GROUP BY empleados.rut
R3 ←σ{empleados.rut=total.rut  ∧total.suma=R4}(R2) 
R4 ← Π{MAX(suma)}(R4)
R5←Π{empleados.rut,COUNT(num_venta) AS suma}(σ{empleados.rut=ventas.empleados_rut}())GROUP BY empleados.rut) AS total

SELECT empleados.nombre FROM empleados, (SELECT empleados.rut, COUNT(num_venta) AS suma FROM empleados, ventas WHERE empleados.rut=ventas.Empleados_rut GROUP BY empleados.rut) AS total WHERE empleados.rut=total.rut AND total.suma=(SELECT MAX(suma)FROM (SELECT empleados.rut, COUNT(num_venta) AS suma FROM empleados, ventas WHERE empleados.rut=ventas.Empleados_rut GROUP BY empleados.rut) AS total);

-- punto 37
Π{nombre, sueldo}(σ{ sueldo=Π{ MAX(sueldo)}}(empleados))

SELECT nombre, sueldo FROM empleados WHERE sueldo=(SELECT MAX(sueldo)FROM empleados);

-- punto 38
R1←Π{productos.nombre,productos.precio}(productos × R2)
R2←Π{productos_codigo, SUM(cantidad)} AS total(σ{productos.codigo=total.productos_codigo ∧ total.suma=R3}(vetas_detalles ))
R3←Π{MIN(suma)}(R4)
R4←Π{productos_codigo,SUM(cantidad) AS suma}(ventas_detalle)GROUP BY productos_codigo

SELECT productos.nombre, productos.precio FROM productos, (SELECT productos_codigo, SUM(cantidad) AS suma FROM ventas_detalle GROUP BY productos_codigo) AS total WHERE productos.codigo=total.productos_codigo AND total.suma=(SELECT MIN(suma)FROM (SELECT productos_codigo, SUM(cantidad) AS suma FROM ventas_detalle GROUP BY productos_codigo) AS total);

-- punto 39
R1 ←Π{empleados.nombre}(empleados × R2) 
R2 ←Π{empleados_rut,SUM(monto) AS suma}(σ{ empleados.rut=total.empleados_rut ∧ total.suma=R3}(ventas))GROUP BY empleados_rut 
R3 ←Π{MAX(suma}(R4) 
R4←Π{empleados_rut,SUM(monto) AS suma}(ventas)GROUP BY empleados_rut

SELECT empleados.nombre FROM empleados, (SELECT empleados_rut, SUM(monto) AS suma FROM ventas GROUP BY empleados_rut) AS total WHERE empleados.rut=total.empleados_rut AND total.suma=(SELECT MAX(suma)FROM (SELECT empleados_rut, SUM(monto) AS suma FROM ventas GROUP BY empleados_rut) AS total);

-- punto 40
R1 ←Π{AVG(ProdProv.precio) AS promedio}(R2)
R2←Π{productos.nombre,porductos.precio}(σ{ productos.codigo=ventas_detalles.productos_codigo ∧ ventas_detalle.num_ventas=ventas.num_venta ∧ ventas.clientes_rut=clientes.rut ∧ clientes.comuna='LAS CONDE'}(productos,ventas_detalle,ventas,clientes))GROUP BY productos.nombre,productos.codigo,productos.precio  

SELECT AVG(ProdProv.precio)AS promedio FROM (SELECT productos.nombre, productos.precio FROM productos, ventas_detalle, ventas, clientes WHERE productos.codigo=ventas_detalle.Productos_codigo AND ventas_detalle.num_ventas=ventas.num_venta AND ventas.Clientes_rut=clientes.rut AND clientes.comuna='LAS CONDES'GROUP BY productos.nombre, productos.codigo,productos.precio) AS ProdProv;

-- punto 41
R1 ←Π{clientes.rut,clientes.nombre,clientes.comuna}(σ{clientes.rut=ventas.clientes_rut ∧ ventas.empleados_rut}(clientes, ventas × R2)) 
R2 ← Π{empleados.rut}(empleados)
R3 ← Π{empleados_rut,SUM(monto) AS suma}(σ{empleados.rut=total.empleados_rut ∧ total.suma}(empleados × R4))
R4 ← Π{SUM(max)}(R5)
R5 ← Π{empleados_rut,SUM(monto) AS suma }(ventas  × R1)GROUP BY clientes.rut,clientes.nombre,clientes.comuna

SELECT clientes.rut, clientes.nombre, clientes.comuna FROM clientes, ventas WHERE clientes.rut=ventas.Clientes_rut AND ventas.Empleados_rut=(SELECT empleados.rut FROM empleados, (SELECT empleados_rut, SUM(monto) AS suma FROM ventas GROUP BY empleados_rut) AS total WHERE empleados.rut=total.empleados_rut AND total.suma=(SELECT MAX(suma)FROM (SELECT empleados_rut, SUM(monto) AS suma FROM ventas GROUP BY empleados_rut) AS total))GROUP BY clientes.rut, clientes.nombre, clientes.comuna;












