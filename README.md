# desafio-agile-ch01
Este es el README de la aplicación para el Desafío Agile 2017.

Para esta prueba se ha usado el ejemplo CH01, inserto en el rar que se ha enviado a los postulantes. 

Se ha usado como modelo "productos", los cuales se podrán visualizar a través de la api generada como a su vez desde el front end, en el que se ha usado Angular y BoostStrap.


Creación BD
===
Se ha usado para este ejemplo una base de datos Mysql de nombre "testdb", y una tabla asociada llamada "products" por tres campos: id, name y price. El código sql para su generación es el siguiente:


CREATE TABLE 'product' (
  'id' int(11) NOT NULL,
  'name' varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  'price' decimal(19,2) DEFAULT NULL,
  'product_id' varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

Las credenciales solo son el username "root", y el puerto 3306 (Ver application.services de /resources)


Acceso a datos
===
Para trabajos con entidades en la tabla de base de datos se crea un DAO con Spring Data JPA, siendo los métodos para la interfaz: save, delete, findOne y findAll. También se crean servicios donde se implementará los métodos del CRUD y luego serán utilizados por el controller.


Documentación API Rest
===
La documentación se ha creado por medio de Postman, las URL Públicas son las siguientes:

 https://www.getpostman.com/collections/b2faf3fd264b4eb3b5e4
 https://documenter.getpostman.com/view/3274140/desafio-agile/7EG7XVZ



Visualización frontend
===
Para la visualización y manipulación de los datos, luego de levantar el tomcat incluído del proyecto de springboot se debe ingresar a la ruta:

http://localhost:8080/ch01/portal

