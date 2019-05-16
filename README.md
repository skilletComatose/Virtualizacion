# Virtualizacion
En el siguiente ejemplo se pretende virtualizar una base de datos Mysql usando la tecnologia Docker 

### nota
La tecnología Docker usa el Kernel de Linux y las funciones de este, como Cgroups y namespaces, para segregar los procesos, de     modo que puedan ejecutarse de manera independiente, por lo cual recominedo usar un sistema tipo linux,para hacerlo en este ejemplo usare ubuntu,tambien  es posible hacerlo en otros sistemas operativos, pero eso te lo dejo de consulta :P 

## Prerrequisito
   1) Tener instalado docker y docker compose.
   2) Agregar mi usuario al grupo docker.
    
         Como en este ejemplo estamos usando Ubuntu,la forma de hacer lo anteriormente dicho mediante la terminal es :
         
          a) Sudo apt install docker docker-compose     -> Para hacer el Prerrequisito #1
          b) Sudo usermod  -aG docker $USER             -> Para hacer el Prerrequisito #2
          c) reboot                                     -> Reinicia el PC para que el paso (b) se vea reflejado
          
  ## Proceso 
   
   Paso 1 : Copiar el enlace del directorio "Virtualizacion" y dirigirse a la terminal del servidor
             
        https://github.com/skilletComatose/Virtualizacion.git
   
   Paso 1.2 : Una vez en la terminal escribir el comando git clone " y se añade en enlace anteriormente copiado"
           
           git clone https://github.com/skilletComatose/Virtualizacion.git
   
   Paso 2 : Entrar al directorio del Proyecto 
            
             cd Virtualizacion/
   
   Paso 2.1 : Desplegar el contenedor usando Docker compose y esperar que se inicialice el  servicio, una vez de halla ejecutado      este comando, se se tendra Mysql ejecutandose de Forma virtual dentro del contenedor llamado MYDATABASE 
             
            1) docker-compose up    -> Despliega el contenedor 
            2) despues de esto, abrir otra terminal y repetir el paso 2
            3) docker ps            -> Esto es opcional, esto te mostrara la informacion de los contenedores que se estan ejecutando 
             
   Paso 3 : Añadir a la raiz del contenedor el archivo hacer2.sql de nuestro directorio, el cual contiene la base de datos para el ejemplo
        
         docker cp hacer2.sql MYDATABASE:/        --> copia el archvo de nuestro pc a la raiz contenedor 
         
 Paso 4 : Final mente accedemos al bash de nuestro contenedor, nos autenticamos en sel servicio de Mysql para ello utilizaremos el usuario root y su contraseña ,ejecutaremos el archivo hacer2.sql sobre nuestro schema "Arriendo" para crear nuestras tablas
 ##### nota : se autentica con las variables de entorno definidas en nuestro docker-compose.yml, leer para saber cual es la contraseña del usuario root
                  
                  1) docker exec -it MYDATABASE bash 
                  2) mysql -u root -p Arriendo < hacer2.sql 
                  3) Escribir la contraseña del usuario root    -> Ya debería hacer hecho los cambios en "Arriendo"
  
  Paso Final (verificacion) : verificamos que todo halla salido segun lo planeado, para ello nos autenticamos en el sevicio Mysql, entramos al schema "Arriendo" y verificamos que se hallas efectuado los cambios, es decir que no este vacia 
        
        1) mysql -u root -p            -> despues de escribir esto, pedira nuevamente el la contraseña del usuario root, colorla 
        2) use Arriendo;               -> entrar al schema Arriendo
        3) show tables;                -> listar las tablas, si aparecen  las 3 tablas : "Apartamento" - "Convenio" - " Persona " nuestro trabajo habra sido un éxito  

            
                   
                
   
