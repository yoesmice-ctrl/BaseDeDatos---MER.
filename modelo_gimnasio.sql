create table entrenador (
    identrenador serial primary key,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    especialidad varchar(50),
    telefono varchar(20),
    correo varchar(100),
    anosexperiencia int
);

create table plan_entrenamiento (
    idplan serial primary key,
    nombre varchar(50) not null,
    objetivo varchar(100),
    nivel varchar(30),
    duracionsemanas int,
    identrenador int not null,
    constraint fk_plan_entrenador
        foreign key (identrenador) references entrenador(identrenador)
);

create table clase (
    idclase serial primary key,
    nombre varchar(50) not null,
    cupomaximo int,
    duracion int,
    horainicio time,
    horafin time,
    identrenador int not null,
    constraint fk_clase_entrenador
        foreign key (identrenador) references entrenador(identrenador)
);

create table cliente (
    idcliente serial primary key,
    documento varchar(20) not null unique,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    fechanacimiento date,
    genero varchar(15),
    direccion varchar(100),
    telefono varchar(20),
    correo varchar(100),
    fechainscripcion date,
    idplan int,
    constraint fk_cliente_plan
        foreign key (idplan) references plan_entrenamiento(idplan)
);

create table membresia (
    idmembresia serial primary key,
    tipo varchar(30) not null,
    fechainicio date,
    fechavencimiento date,
    estado varchar(20),
    valor decimal(10,2),
    idcliente int not null,
    constraint fk_membresia_cliente
        foreign key (idcliente) references cliente(idcliente)
);

create table asistencia (
    idasistencia serial primary key,
    fecha date not null,
    horaingreso time,
    estado varchar(20),
    idcliente int not null,
    idclase int not null,
    constraint fk_asistencia_cliente
        foreign key (idcliente) references cliente(idcliente),
    constraint fk_asistencia_clase
        foreign key (idclase) references clase(idclase)
);

create table venta (
    idventa serial primary key,
    fecha date not null,
    total decimal(10,2),
    idasistencia int not null,
    constraint fk_venta_asistencia
        foreign key (idasistencia) references asistencia(idasistencia)
);

create table producto (
    idproducto serial primary key,
    nombre varchar(50) not null,
    marca varchar(50),
    precio decimal(10,2),
    stock int
);

create table detalle_venta (
    iddetalle serial primary key,
    cantidad int not null,
    preciounitario decimal(10,2) not null,
    subtotal decimal(10,2) not null,
    idventa int not null,
    idproducto int not null,
    constraint fk_detalle_venta
        foreign key (idventa) references venta(idventa),
    constraint fk_detalle_producto
        foreign key (idproducto) references producto(idproducto)
);
