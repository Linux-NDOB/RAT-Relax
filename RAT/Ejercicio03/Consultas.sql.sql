--1
SELECT SNOMBRE,CIUDADPROVEEDOR FROM proveedor NATURAL JOIN (SELECT SNUM,PNUM FROM envio NATURAL JOIN (SELECT PNUM FROM pieza WHERE COLOR = 'Azul')alias1 )alias2
--2
SELECT AVG(PESO)'PESO PROMEDIO DE LAS PIEZAS' FROM pieza;
--3
SELECT SNOMBRE,PNOMBRE,CANTIDAD FROM pieza NATURAL JOIN (SELECT * FROM proveedor NATURAL JOIN (SELECT SNUM,PNUM,CANTIDAD FROM envio)alias1  WHERE CIUDADPROVEEDOR = 'Londres')alias2
--4

--5
SELECT * FROM proveedor NATURAL JOIN (SELECT SNUM FROM envio WHERE PNUM = 'P4')alias1  NATURAL JOIN (SELECT SNUM FROM envio WHERE PNUM = 'P5')alias2



