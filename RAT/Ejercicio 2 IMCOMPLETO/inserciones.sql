-- hospital
insert into HOSPITAL (HOSPITAL_COD, NOMBRE, DIRECCION, TELEFONO, NUM_CAMA) values (1, 'Judi', '711 Brentwood Point', 78552274, 48);
insert into HOSPITAL (HOSPITAL_COD, NOMBRE, DIRECCION, TELEFONO, NUM_CAMA) values (2, 'Jenna', '9804 Loeprich Hill', 35292998, 39);
insert into HOSPITAL (HOSPITAL_COD, NOMBRE, DIRECCION, TELEFONO, NUM_CAMA) values (3, 'Gleda', '91 Sommers Point', 43358288, 87);
insert into HOSPITAL (HOSPITAL_COD, NOMBRE, DIRECCION, TELEFONO, NUM_CAMA) values (4, 'Salim', '8 Johnson Drive', 36843868, 20);
insert into HOSPITAL (HOSPITAL_COD, NOMBRE, DIRECCION, TELEFONO, NUM_CAMA) values (5, 'Karlis', '47174 Macpherson', 96009842, 25);
insert into HOSPITAL (HOSPITAL_COD, NOMBRE, DIRECCION, TELEFONO, NUM_CAMA) values (6, 'Jean', '1 Debra Trail', 94234315, 34);
insert into HOSPITAL (HOSPITAL_COD, NOMBRE, DIRECCION, TELEFONO, NUM_CAMA) values (7, 'Araldo', '0 Declaration Pass', 97861529, 81);
insert into HOSPITAL (HOSPITAL_COD, NOMBRE, DIRECCION, TELEFONO, NUM_CAMA) values (8, 'Wileen', '7 Prentice Lane', 4113036, 90);
insert into HOSPITAL (HOSPITAL_COD, NOMBRE, DIRECCION, TELEFONO, NUM_CAMA) values (9, 'Georas', '5586 Lerdahl Lane', 20767829, 22);

--sala
insert into SALA (HOSPITAL_COD	, SALA_COD, NOMBRE, NUM_CAMA) values (1, 1, 'urgencias', 42);
insert into SALA (HOSPITAL_COD	, SALA_COD, NOMBRE, NUM_CAMA) values (2, 2, 'cirugias', 30);
insert into SALA (HOSPITAL_COD	, SALA_COD, NOMBRE, NUM_CAMA) values (3, 3, 'covid', 87);
insert into SALA (HOSPITAL_COD	, SALA_COD, NOMBRE, NUM_CAMA) values (4, 4, 'fiebre', 28);
insert into SALA (HOSPITAL_COD	, SALA_COD, NOMBRE, NUM_CAMA) values (5, 5, 'odotologos', 20);
insert into SALA (HOSPITAL_COD	, SALA_COD, NOMBRE, NUM_CAMA) values (6, 6, 'radiografias', 28);
insert into SALA (HOSPITAL_COD	, SALA_COD, NOMBRE, NUM_CAMA) values (7, 7, 'fracturas', 92);
insert into SALA (HOSPITAL_COD	, SALA_COD, NOMBRE, NUM_CAMA) values (8, 8, 'intensivos', 48);
insert into SALA (HOSPITAL_COD	, SALA_COD, NOMBRE, NUM_CAMA) values (9, 9, 'fiebre', 49);

--dpt2
insert into DPT2 (DEPT_NO, DNOMBRE, LOC) values (1, 'Sistemas', 'Piso 1');
insert into DPT2 (DEPT_NO, DNOMBRE, LOC) values (2, 'Recursos H', 'Piso 2');
insert into DPT2 (DEPT_NO, DNOMBRE, LOC) values (3, 'Medicina', 'Piso 3');
insert into DPT2 (DEPT_NO, DNOMBRE, LOC) values (4, 'Cirugia', 'Piso 4');
insert into DPT2 (DEPT_NO, DNOMBRE, LOC) values (5, 'Enfermeria', 'Piso 5');
insert into DPT2 (DEPT_NO, DNOMBRE, LOC) values (6, 'Emergencias', 'Piso 6');
insert into DPT2 (DEPT_NO, DNOMBRE, LOC) values (7, 'Consultorios E', 'Piso 7');
insert into DPT2 (DEPT_NO, DNOMBRE, LOC) values (8, 'Economia', 'Piso 8');
insert into DPT2 (DEPT_NO, DNOMBRE, LOC) values (9, 'Logistica', 'Piso 9');

--emp
insert into EMP (EMP_NO, APELLIDO, OFICIO, DIR, FECHA_ALTA, SALARIO, COMISION, DPT2_DPT_NO) values (1, 'IBARRA', 'Doctor', '1', '2022-04-29', 9099373, 35000, 1);
insert into EMP (EMP_NO, APELLIDO, OFICIO, DIR, FECHA_ALTA, SALARIO, COMISION, DPT2_DPT_NO) values (2, 'TORRES', 'Analista', '2', '2022-04-28', 6396001, 84000, 2);
insert into EMP (EMP_NO, APELLIDO, OFICIO, DIR, FECHA_ALTA, SALARIO, COMISION, DPT2_DPT_NO) values (3, 'CASTILLO', 'Enfermero', '3', '2022-04-27', 2300000, 16000, 3);
insert into EMP (EMP_NO, APELLIDO, OFICIO, DIR, FECHA_ALTA, SALARIO, COMISION, DPT2_DPT_NO) values (4, 'QUINTANA', 'Enfermera', '4', '2022-04-26', 2995000, 93000, 4);
insert into EMP (EMP_NO, APELLIDO, OFICIO, DIR, FECHA_ALTA, SALARIO, COMISION, DPT2_DPT_NO) values (5, 'SAMORA', 'Enfermero', '5', '2022-04-25', 2100000, 49000, 5);
insert into EMP (EMP_NO, APELLIDO, OFICIO, DIR, FECHA_ALTA, SALARIO, COMISION, DPT2_DPT_NO) values (6, 'MACHADO', 'Pediatra', '6', '2022-04-24', 4719759, 95000, 6);
insert into EMP (EMP_NO, APELLIDO, OFICIO, DIR, FECHA_ALTA, SALARIO, COMISION, DPT2_DPT_NO) values (7, 'PARODI', 'Enfermera', '7', '2022-04-23', 2900000, 7000, 7);
insert into EMP (EMP_NO, APELLIDO, OFICIO, DIR, FECHA_ALTA, SALARIO, COMISION, DPT2_DPT_NO) values (8, 'RAMOS', 'Enfermero ', '8', '2022-04-22', 2700000, 5000, 8);
insert into EMP (EMP_NO, APELLIDO, OFICIO, DIR, FECHA_ALTA, SALARIO, COMISION, DPT2_DPT_NO) values (9, 'PADILLA', 'Enfermera', '9', '2022-04-21', 2500000, 91000, 9);


--plantilla
insert into PLANTILLA (HOSPITAL_COD, SALA_COD, EMP_NO, APELLIDO, FUNCION, TURNO, SALARIO) values (1, 1, 1, 'IBARRA', 'Doctor','M', 9099373);
insert into PLANTILLA (HOSPITAL_COD, SALA_COD, EMP_NO, APELLIDO, FUNCION, TURNO, SALARIO) values (2, 2, 2, 'TORRES', 'Analista','T', 6396001);
insert into PLANTILLA (HOSPITAL_COD, SALA_COD, EMP_NO, APELLIDO, FUNCION, TURNO, SALARIO) values (3, 3, 3, 'CASTILLO', 'Enfermero', 'T', 2300000);
insert into PLANTILLA (HOSPITAL_COD, SALA_COD, EMP_NO, APELLIDO, FUNCION, TURNO, SALARIO) values (4, 4, 4, 'QUINTANA',  'Enfermera','M', 2995000);
insert into PLANTILLA (HOSPITAL_COD, SALA_COD, EMP_NO, APELLIDO, FUNCION, TURNO, SALARIO) values (5, 5, 5, 'SAMORA',  'Enfermero','T', 2100000);
insert into PLANTILLA (HOSPITAL_COD, SALA_COD, EMP_NO, APELLIDO, FUNCION, TURNO, SALARIO) values (6, 6, 6, 'MACHADO',  'Pediatra','T', 4719759);
insert into PLANTILLA (HOSPITAL_COD, SALA_COD, EMP_NO, APELLIDO, FUNCION, TURNO, SALARIO) values (7, 7, 7, 'PARODI', 'Enfermera', 'M', 2900000);
insert into PLANTILLA (HOSPITAL_COD, SALA_COD, EMP_NO, APELLIDO, FUNCION, TURNO, SALARIO) values (8, 8, 8, 'RAMOS',  'Enfermero','M',  2700000);
insert into PLANTILLA (HOSPITAL_COD, SALA_COD, EMP_NO, APELLIDO, FUNCION, TURNO, SALARIO) values (9, 9, 9, 'PADILLA',  'Enfermera','T', 2500000);

--ENFERMO 