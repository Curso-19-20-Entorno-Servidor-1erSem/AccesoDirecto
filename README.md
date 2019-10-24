# AvesFranciscoAMP
Creación de proyecto AvesFranciscoAMP en el que se recolpilan datos de distintas aves que estan insertados previamente en una base de datos llamada pruebasjava dentro de la cual hay una tabla llamada aves.

## Preparación Base de Datos.
Procedemos a la instalación y configuración de MSQL en el equipo para poder realizar la conexión de la BD (Base de datos).

Una vez instalado y configurado MSQL en el equipo, procedemos a la creación y configuración de la BD (Base de datos).

Nombre BD (Base de datos): ***"pruebasjava", usuario: "java2019" y password "2019"***.

Para la creación de la BD, usuario y password, accedemos por terminal a MSQL. En mi caso que tengo Ubuntu pongo la sentencia:
~~~
sudo mysql -u root -p
~~~
Para Windows, abrimos un terminal como administrador y ejecutamos la misma sentencia sin el *sudo*
~~~
mysql -u root -p
~~~
Al introducir la sentencia, nos aparecerá:
~~~
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 5.7.27-0ubuntu0.18.04.1 (Ubuntu)

Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
~~~

Una vez aparezca el promt introducimos la instrucción :  
~~~
create user java2019@localhost identified by '2019';
~~~
para crear el usuario y la contraseña de la BD(Base de Datos).

Seguidamente, daremos permisos al usuario sobre la BD (Base de Datos) con la sentencia:
~~~
grant all on pruebajava.* to java2019@localhost;
~~~
A continuación crearemos la Base de datos con la característica de que le tenmeos que poner ***UTF8*** para que coja los acentos y las ñ de la manera siguiente:
~~~
create database pruebajava charset utf8 collate utf8_spanish_ci;
~~~
Le daremos los permisos:
~~~
grant all on pruebasjava.* to java2019@localhost;
~~~
Y ya tendríamos creada la BD y el usuario y la contraseña.

Si ponemos:
~~~
mysql> show databases;
~~~
Nos indicará las BD que podemos acceder atraves de root. Para trabajar con nuestra BD tendremos que ejectuar la sentencia para entra con la diferencia de que en vez de poner root pondremos ***"java2019"***.
~~~
mysql -u java2019 -p
~~~
Volviendo a lo que estabamos explicando, al ejecutar el siguiente comando nos aparcerá esto:
~~~
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| pruebajava         |
| pruebasjava        |
| sys                |
+--------------------+
6 rows in set (0.00 sec)
~~~
A continuación, pondremos use pruebasjava para cargar la BD.
~~~
mysql> use pruebasjava
Database changed
~~~
Despues, pondremos shoe tables; y ahora no nos dirá que está vacío y procederemos a crear los elementos de la tabla aves con CREATE TABLE y los valores que nos han indicado que en este caso son:

- anilla --> varchar(3) -- primarykey -- No Null
- especie -> varchar(20) -		 No Null
- lugar ---> varchar(50) - 		 No Null
- fecha ---> date 			 No null
~~~
mysql> CREATE TABLE aves(
    -> anilla varchar(3) not null,
    -> especie varchar(20) not null,
    -> lugar varchar(50) not null,
    -> fecha varchar(10) not null,
    -> PRIMARY KEY (anilla)
    -> );
~~~
Una vez ejecutada la sentencia, para ver como nos ha quedado la tabla, introducimos el comando siguiente.
~~~
mysql> describe aves;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| anilla  | varchar(3)  | NO   | PRI | NULL    |       |
| especie | varchar(20) | NO   |     | NULL    |       |
| lugar   | varchar(50) | NO   |     | NULL    |       |
| fecha   | varchar(10) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)
~~~

Una vez creada la tabla, procedemos a insertar los datos de la siguiente manera:
~~~
mysql> INSERT INTO aves (anilla,especie,lugar,fecha)
    -> VALUES ('002','Canario','En el salón de mi casa','20-06-2017');
~~~
o bien todos los datos de golpe así:
~~~
mysql> INSERT INTO aves (anilla,especie,lugar,fecha)
    -> VALUES('458','Jilguero','En la terraza','16-04-2016'),
    -> ('115','Petirojo','En un árbol del parque','15-08-2018'),
    -> ('203','Gorrión','En la ventana de Pepe','18-10-2018');
~~~
Para ver como nos ha quedado la tabla:
~~~
mysql> select * from aves;
+--------+----------+-------------------------+------------+
| anilla | especie  | lugar                   | fecha      |
+--------+----------+-------------------------+------------+
| 002    | Canario  | En el salón de mi casa  | 20-06-2017 |
| 115    | Petirojo | En un árbol del parque  | 15-08-2018 |
| 203    | Gorrión  | En la ventana de Pepe   | 18-10-2018 |
| 458    | Jilguero | En la terraza           | 16-04-2016 |
+--------+----------+-------------------------+------------+
4 rows in set (0.00 sec)
~~~
Y ya tendremos nuestro BD completa y la tabla rellena y lista para ser usada.

##Organización y Estructura del proyecto.
Una vez creada la BD, procedemos a la creación del proyecto, el cual nos presentará una pantalla inicial en la que nos pide que introduzcamos un nuemro de anilla y tenemos la posibilidad de ver esa anilla, otro botón que nos da la opción de ver un listado de todas la aves y otro botón no incluido en este proyecto.

Se añade dependewncia de Mysql en el archivo pom.xml

Se esgtrutura de la siguiente manera:

Dentro de Web Pages sustituimos el index.html por el archivo index.jsp.

Creamos los directorios:
- CSS -> Se crea el archivo avesStyle.css, donde van los estilos de todas las páginas del
         proyecto.
- JSP -> Se crean los archivos error.jsp, unRegistro.jsp y variosRegistros.jsp

En Source Packages, creamos un beans y un Servlets. Estos paquetes son:

- es.albarregas.persistencia, dentro del cual se crea el Servlet para el acceso a la base de datos AccesoBD.java.
- es.albarregas.beans, dentro se crean la clase ave.java
