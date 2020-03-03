# deloin
proyecto Deloin prueba tecnica



# Descripcion

este proyecto se creo para la empresa deloin como una prueba requerida por estos. cuyo fin es la realizacion de una prueba tecnica.
Esta prueba consiste en crear un proyecto en este caso de node js por simplicidad y recursos disponibles en el momento; desde este se conecta a una base de datos (mysql) que contiene la tabla vinculados con un registro para prueba, para despues consultar esa tabla y generar un reporte en csv de forma automatica y descargable.



## Tecnologias

el proyecto se creo en node js en la version 12.16.1 para el servidor
html, css, bootstrap basico para crear una vista con el boton.
las dependencia instaladas en nodejs:
  express para las rutas y levantar el serv.
  fs propia de node para crear el archivo csv sobre el cual se van a escribir los datos.
  fast-csv para escribir sobre el archivos csv es el que hace la magia.
  y el plugin de mysql para acceder a la bd desde el proyecto de node.
  doker para empaquetar la app con dos imagenes una donde esta el node y la otra donde esta el mysql.
  
  
  
  ## Instalacion
  
    usando doker y doker-compose se puede levantar el proyecto con los siguientes comandos.
    
    sudo docker-compose down && sudo docker-compose build && sudo docker-compose up -d

    docker-compose up -d
    
    
    
  ## Recomendaciones
  
  cuando se ejecuten los comandos del doker es necesario esperar un tiempo para que este ejecute el script de la bd despues de crearla.
  
  luego de que carge la pagina se puede acceder en el puerto 3000 de localhost.


