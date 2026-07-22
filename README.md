# BaseDeDatos - MER
ModeloEntidadRelacion


Genera un Modelo Entidad-Relación (MER) profesional utilizando la notación de Chen para un Sistema de Gestión de un Gimnasio.

El diagrama debe parecer creado directamente en Draw.io (diagrams.net).

Características del diseño:

•  Fondo completamente transparente.
• Estilo vectorial limpio (SVG).
• Sin sombras.
• Sin degradados.
• Sin efectos 3D.
• Sin texturas.
• Líneas rectas de color negro.
• Bordes negros de grosor fino.
• Todo perfectamente alineado.
• Mucho espacio entre entidades para evitar cruces de líneas.
• Calidad alta (4K).

Utiliza los siguientes colores:

- Entidades: Rectángulos azul claro.
- Atributos: Óvalos verde claro.
- Relaciones: Rombos amarillo claro.
- Texto negro.

Subraya únicamente las llaves primarias.

Las cardinalidades deben mostrarse únicamente con:

1
N

Utiliza exclusivamente la notación de Chen.

No utilizar llaves foráneas (FK).

No utilizar tablas del modelo relacional.

Las entidades son:

ENTRENADOR
- idEntrenador (PK)
- nombre
- apellido
- especialidad
- telefono
- correo
- añosExperiencia

PLAN_ENTRENAMIENTO
- idPlan (PK)
- nombre
- objetivo
- nivel
- duracionSemanas

CLIENTE
- idCliente (PK)
- documento
- nombre
- apellido
- fechaNacimiento
- genero
- direccion
- telefono
- correo
- fechaInscripcion

CLASE
- idClase (PK)
- nombre
- cupoMaximo
- duracion
- horaInicio
- horaFin

ASISTENCIA
- idAsistencia (PK)
- fecha
- horaIngreso
- estado

MEMBRESÍA
- idMembresia (PK)
- tipo
- fechaInicio
- fechaVencimiento
- estado
- valor

VENTA
- idVenta (PK)
- fecha
- total

DETALLE_VENTA
- idDetalle (PK)
- cantidad
- precioUnitario
- subtotal

PRODUCTO
- idProducto (PK)
- nombre
- marca
- precio
- stock

Relaciones:

ENTRENADOR (1) DISEÑA (N) PLAN_ENTRENAMIENTO

PLAN_ENTRENAMIENTO (1) ES SEGUIDO POR (N) CLIENTE

ENTRENADOR (1) DIRIGE (N) CLASE

CLIENTE (1) ADQUIERE (N) MEMBRESÍA

CLIENTE (1) REGISTRA (N) ASISTENCIA

CLASE (1) TIENE (N) ASISTENCIA

CLIENTE (1) REALIZA (N) VENTA

VENTA (1) CONTIENE (N) DETALLE_VENTA

PRODUCTO (1) APARECE EN (N) DETALLE_VENTA

Distribución:

Parte superior:
ENTRENADOR -------- PLAN_ENTRENAMIENTO

Parte central:
CLASE ------ ASISTENCIA ------ CLIENTE

Parte inferior:
VENTA ------ DETALLE_VENTA ------ PRODUCTO

MEMBRESÍA debe ubicarse debajo de CLIENTE.

Todas las entidades deben estar perfectamente alineadas, con suficiente espacio para que ninguna línea se cruce.
