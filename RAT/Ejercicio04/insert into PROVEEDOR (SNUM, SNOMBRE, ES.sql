--prveedor

insert into EMPRESA.PROVEEDOR (SNUM, SNOMBRE, ESTADO, CIUDADPROVEEDOR) values ('S1', 'Cosmo', '10', 'Londres');
insert into EMPRESA.PROVEEDOR (SNUM, SNOMBRE, ESTADO, CIUDADPROVEEDOR) values ('S2', 'Elisha', '20', 'Lorica');
insert into EMPRESA.PROVEEDOR (SNUM, SNOMBRE, ESTADO, CIUDADPROVEEDOR) values ('S3', 'Eleanora', '30', 'Bogota');
insert into EMPRESA.PROVEEDOR (SNUM, SNOMBRE, ESTADO, CIUDADPROVEEDOR) values ('S4', 'Karney', '40', 'Londres');
insert into EMPRESA.PROVEEDOR (SNUM, SNOMBRE, ESTADO, CIUDADPROVEEDOR) values ('S5', 'Georgianne', '50', 'Lorica');
insert into EMPRESA.PROVEEDOR (SNUM, SNOMBRE, ESTADO, CIUDADPROVEEDOR) values ('S6', 'Madonna', '60', 'Medellin');
insert into EMPRESA.PROVEEDOR (SNUM, SNOMBRE, ESTADO, CIUDADPROVEEDOR) values ('S7', 'Wendell', '70', 'Monteria');
insert into EMPRESA.PROVEEDOR (SNUM, SNOMBRE, ESTADO, CIUDADPROVEEDOR) values ('S8', 'Betsy', '80', 'Monteria');
insert into EMPRESA.PROVEEDOR (SNUM, SNOMBRE, ESTADO, CIUDADPROVEEDOR) values ('S9', 'Nowell', '90', 'Lorica');
insert into EMPRESA.PROVEEDOR (SNUM, SNOMBRE, ESTADO, CIUDADPROVEEDOR) values ('S10', 'Debby', '100', 'Londres');

--pieza

insert into EMPRESA.PIEZA (PNUM, PNOMBRE, COLOR, PESO, CIUDADPIEZA) values ('P1', 'Tuerca', 'Azul', 11, 'Londres');
insert into EMPRESA.PIEZA (PNUM, PNOMBRE, COLOR, PESO, CIUDADPIEZA) values ('P2', 'Tornillo', 'Verde', 12, 'Lorica');
insert into EMPRESA.PIEZA (PNUM, PNOMBRE, COLOR, PESO, CIUDADPIEZA) values ('P3', 'Engranaje', 'Amarillo', 13, 'Bogota');
insert into EMPRESA.PIEZA (PNUM, PNOMBRE, COLOR, PESO, CIUDADPIEZA) values ('P4', 'Brilo', 'Cafe', 14, 'Londres');
insert into EMPRESA.PIEZA (PNUM, PNOMBRE, COLOR, PESO, CIUDADPIEZA) values ('P5', 'Piston', 'Negro', 15, 'Lorica');
insert into EMPRESA.PIEZA (PNUM, PNOMBRE, COLOR, PESO, CIUDADPIEZA) values ('P6', 'Tornillo', 'Gris', 16, 'Medellin');
insert into EMPRESA.PIEZA (PNUM, PNOMBRE, COLOR, PESO, CIUDADPIEZA) values ('P7', 'Birlo', 'Azul', 17, 'Monteria');
insert into EMPRESA.PIEZA (PNUM, PNOMBRE, COLOR, PESO, CIUDADPIEZA) values ('P8', 'pasador', 'Rojo', 18, 'Monteria');
insert into EMPRESA.PIEZA (PNUM, PNOMBRE, COLOR, PESO, CIUDADPIEZA) values ('P9', 'soporte', 'Esmeralda', 19, 'Lorica');
insert into EMPRESA.PIEZA (PNUM, PNOMBRE, COLOR, PESO, CIUDADPIEZA) values ('P10', 'bastidor', 'Naranja', 10, 'Londes');



--envio

insert into EMPRESA.ENVIO (PROVEEDOR_SNUM, PIEZA_PNUM, CANTIDAD) values ('S1', 'P1', 11);
insert into EMPRESA.ENVIO (PROVEEDOR_SNUM, PIEZA_PNUM, CANTIDAD) values ('S10', 'P10', 10);
insert into EMPRESA.ENVIO (PROVEEDOR_SNUM, PIEZA_PNUM, CANTIDAD) values ('S2', 'P2', 12);
insert into EMPRESA.ENVIO (PROVEEDOR_SNUM, PIEZA_PNUM, CANTIDAD) values ('S3', 'P3', 13);
insert into EMPRESA.ENVIO (PROVEEDOR_SNUM, PIEZA_PNUM, CANTIDAD) values ('S4', 'P4', 14);
insert into EMPRESA.ENVIO (PROVEEDOR_SNUM, PIEZA_PNUM, CANTIDAD) values ('S5', 'P5', 15);
insert into EMPRESA.ENVIO (PROVEEDOR_SNUM, PIEZA_PNUM, CANTIDAD) values ('S6', 'P6', 16);
insert into EMPRESA.ENVIO (PROVEEDOR_SNUM, PIEZA_PNUM, CANTIDAD) values ('S7', 'P7', 17);
insert into EMPRESA.ENVIO (PROVEEDOR_SNUM, PIEZA_PNUM, CANTIDAD) values ('S8', 'P8', 18);
insert into EMPRESA.ENVIO (PROVEEDOR_SNUM, PIEZA_PNUM, CANTIDAD) values ('S9', 'P9', 19);

