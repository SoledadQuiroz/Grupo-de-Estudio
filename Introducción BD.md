# Introducción a las Bases de Datos
## 1. Datos y Archivos

El propio nombre **Informática** hace referencia al hecho de ser una ciencia que trabaja con información.En informática se conoce como **dato** a cualquier elemento informativo que tenga relevancia para el
sistema.

El ser humano desde siempre ha necesitado gestionar datos,Como herramienta el ser humano al principio sólo poseía su memoria y cálculo y como mucho la ayuda de sus dedos.
La escritura fue la herramienta que permitió al ser humano poder gestionar bases cada vez más grandes de datos.

La informática adaptó sus herramientas para que los elementos que el usuario maneja en el ordenador se parezcan a los que utilizaba manualmente. Así en informática se sigue hablado de ficheros,
formularios, carpetas, directorios.

## 2. Sistemas de información
**2.1 La empresa como sistema.**

El sistema completo que forma la empresa se suele dividir en los siguientes subsistemas:
- Subsistema productivo. También llamado subsistema real o físico. Representa la parte de la
empresa encargada de gestionar la producción de la misma.
- Subsistema financiero. Encargado de la gestión de los bienes económicos de la empresa
- Subsistema directivo. Encargado de la gestión organizativa de la empresa

**2.2 Sistemas de información.**

Un sistema de información genérico está formado por los siguientes elementos:
- Recursos físicos. Carpetas, documentos, equipamiento, discos.
- Recursos humanos. Personal que maneja la información.
- Protocolo. Normas que debe cumplir la información para que sea manejada (formato de la
información, modelo para los documentos,etc)

**2.3 Componentes de un sistema de información electrónico.**

En el caso de una gestión electrónica de la información , los componentes son:

- Datos. Se trata de la información relevante que almacena y gestiona el sistema de información.
- Hardware. Equipamiento físico que se utiliza para gestionar los datos. cada uno de los
dispositivos electrónicos que permiten el funcionamiento del sistema de información.
- Software. Aplicaciones informáticas que se encargan de la gestión de la base de datos y de las
herramientas que facilitan su uso.
- Recursos humanos. Personal que maneja el sistema de información.

## 3. Archivos

Los ficheros o archivos son la herramienta fundamental de trabajo en una computadora.
Los datos deben de ser almacenados en componentes de almacenamiento permanente, lo que se
conoce como **memoria secundaria**.

En general sobre los archivos se pueden realizar las siguientes operaciones:
- Abrir (***open***). Prepara el fichero para su proceso.
- Cerrar (***close***). Cierra el fichero impidiendo su proceso inmediato.
- Leer (***read***). Obtiene información del fichero.
- Escribir (***write***). Graba información en el fichero.
- Posicionarse (***seek***). Coloca el puntero de lectura en una posición
concreta del mismo (no se puede realizar en todos los tipos de ficheros).

**3.1 ficheros secuenciales.**

En estos ficheros, los datos se organizan secuencialmente en el orden en el que fueron grabados. Para
leer los últimos datos hay que leer los anteriores.

**Ventajas**
- Rápidos para obtener registros contiguos de una base de datos
- No hay huecos en el archivo al grabarse los datos seguidos, datos más compactos.

**Desventajas**
- Consultas muy lentas al tener que leer todos los datos anteriores al dato que queremos leer
- Algoritmos de lectura y escritura más complejos
- No se pueden eliminar registros del fichero (se pueden marcar de manera especial para que no
sean tenidos en cuenta, pero no se pueden borrar)
- El borrado provoca archivos que no son compactos
 La ordenación de los datos requiere volver a crearle de nuevo
- Fin de fichero (***eof***). Indica si hemos llegado al final del fichero.

**3.2 Ficheros de acceso directo o aleatorio.**

Se puede leer una posición concreta del fichero, con saber la posición (normalmente en bytes) del dato a leer, lo quese hace es colocar el llamado puntero de archivo en esa posición y después leer.

**Ventajas**
-Acceso rápido al no tener que leer los datos anteriores
-La modificación de datos es más sencilla
-Permiten acceso secuencial
-Permiten leer y escribir a la vez
-Aptos para organizaciones relativas directas, en las que la clave del registro se relaciona con
su posición en el archivo

**Desventajas**
Salvo en archivos relativos directos, no es apto por sí mismo para usar en bases de datos, ya que
los datos se organizan en base a una clave
-No se pueden borrar datos (sí marcar para borrado, pero generarán huecos)
-Las consultas sobre multitud de registros son más lentas que en el caso anterior.

**3.3 Ficheros secuenciales encadenados.**

Son ficheros secuenciales gestionados mediante punteros.

**Ventajas**
-El fichero mantiene el orden en el que se añadieron los registros y un segundo orden en base a
una clave
-La ordenación no requiere reorganizar todo el fichero, sino sólo modificar los punteros
-Las mismas ventajas que el acceso secuencial
-En esta caso sí se borran los registros y al reorganizar, se perderán definitivamente

**Desventajas**
-No se borran los registros, sino que se marcan para ser ignorados. Por lo que se malgasta
espacio
-Añadir registros o modificar las claves son operaciones que requieren recalcular los punteros

# **3.4 Ficheros secuenciales indexados.**

Se utilizan dos ficheros para los datos, uno posee los registros almacenados de forma secuencial, pero
que permite su acceso aleatorio. El otro posee una tabla con punteros a la posición ordenada de los
registros. Ese segundo fichero es el índice, una tabla con la ordenación deseada para los registros y la
posición que ocupan en el archivo. 


