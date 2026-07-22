# BaseDeDatos - MER
ModeloEntidadRelacion


Caso de Estudio: Sistema de Gestión para un Gimnasio.
Contexto.

El gimnasio "PowerFit Gym" ha crecido considerablemente y ya no puede administrar sus procesos mediante hojas de cálculo y registros en papel. La administración desea desarrollar un sistema que permita controlar la información de sus clientes, entrenadores, planes de entrenamiento, membresías y clases grupales.

Como desarrollador de software, tu tarea es diseñar la base de datos que soporte todas las operaciones del gimnasio.

Requerimientos.

El gimnasio registra a todas las personas que desean convertirse en clientes.

De cada cliente se debe almacenar la siguiente información:

Número de identificación.
Nombre completo.
Fecha de nacimiento.
Género.
Dirección.
Teléfono.
Correo electrónico.
Fecha de inscripción.

El gimnasio cuenta con varios entrenadores.

De cada entrenador se registra:

Código.
Nombre completo.
Especialidad.
Teléfono.
Correo electrónico.
Años de experiencia.

Cada cliente adquiere una membresía.

De cada membresía se necesita registrar:

Código.
Tipo de membresía (Mensual, Trimestral, Semestral o Anual).
Fecha de inicio.
Fecha de vencimiento.
Estado (Activa, Suspendida o Vencida).
Valor pagado.

Un cliente puede adquirir varias membresías a lo largo del tiempo, pero solo una puede estar activa simultáneamente.

El gimnasio ofrece diferentes planes de entrenamiento.

Cada plan contiene:

Código.
Nombre.
Objetivo (Pérdida de peso, Hipertrofia, Resistencia, Rehabilitación, etc.).
Nivel de dificultad.
Duración en semanas.

Un entrenador puede diseñar varios planes.

Cada plan es diseñado únicamente por un entrenador.

Un cliente puede seguir un plan de entrenamiento.

Un mismo plan puede ser asignado a muchos clientes.

Además, el gimnasio ofrece clases grupales como:

Spinning.
Yoga.
CrossFit.
Pilates.
Funcional.

De cada clase se registra:

Código.
Nombre.
Cupo máximo.
Duración.
Hora de inicio.
Hora de finalización.

Cada clase es dirigida por un entrenador.

Un entrenador puede dirigir varias clases.

Los clientes pueden inscribirse en varias clases.

Cada clase puede tener muchos clientes inscritos, siempre que no se supere el cupo máximo.

Para controlar la asistencia, cada vez que un cliente asiste a una clase se registra:

Fecha.
Hora de ingreso.
Estado de asistencia (Asistió o No asistió).

El gimnasio también vende productos como:

Proteínas.
Vitaminas.
Guantes.
Botellas.
Camisetas.

De cada producto se almacena:

Código.
Nombre.
Marca.
Precio.
Stock disponible.

Cuando un cliente compra productos, el sistema registra:

Número de venta.
Fecha.
Total pagado.

Una venta puede incluir varios productos.

Un producto puede aparecer en muchas ventas diferentes.

Información adicional

El sistema debe permitir posteriormente:

Consultar los clientes con membresía activa.
Saber qué entrenador tiene más clientes asignados.
Conocer qué clases tienen mayor asistencia.
Identificar los productos más vendidos.
Consultar el historial de membresías de un cliente.
Ver el historial de compras realizadas por cada cliente.
