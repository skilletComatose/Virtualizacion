 create table if not exists Apartamento (idApartamento int not null primary key , Habitaciones int not null ,banios int not null ,EstadoActual varchar(15));

  insert into Apartamento values (1,2,1,"ocupado");
  insert into Apartamento values (2,4,2,"disponible");
  insert into Apartamento values (3,6,4,"disponible");
  insert into Apartamento values (4,5,2, "ocupado");
  insert into Apartamento values (5,3,3, "ocupado");
  insert into Apartamento values (6,6,2, "disponible");
  insert into Apartamento values (7,8,8, "disponible");
  insert into Apartamento values (8,10,10, "ocupado");
  insert into Apartamento values (9,4,3, "ocupado");
  insert into Apartamento values (10,5,5, "ocupado");

 create table if not exists Persona (idPersona int not null primary key ,Nombre varchar(15), Apellidos varchar(100) ,Cedula int not null ,mora float not null );

 	insert into Persona values (1,"Mauricio","Londoño-perez",1103845288,0.0);
    insert into Persona values (2,"Arnovis","Correa-Lopez",1103845288,190.150);
    insert into Persona values (3,"Carlos","Cabarcas-Romero",1103845288,250000);
    insert into Persona values (4,"Romario","Martines-Gonzales",1103845288,990.999);
    insert into Persona values (5,"Victor","Padilla-Padilla",1103845288,0.0);
    insert into Persona values (6,"Mauricio","MArtines-Correa",1103845288,0.0);	


 create table if not exists Convenio (idConvenio int not null primary key,idPersona int not null,foreign key(idPersona) references Persona(idPersona),idApartamento int not null, foreign key (idApartamento) references Apartamento(idApartamento), ValorMes float not null);


  insert into Convenio values (1,2,4,900000);
  insert into Convenio values (2,5,10,900000);
  insert into Convenio values (3,3,8,900000);
  insert into Convenio values (4,1,1,900000);
  insert into Convenio values (5,6,5,900000);
  insert into Convenio values (6,4,9,900000);	