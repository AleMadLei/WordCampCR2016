# WordCamp Costa Rica 2016 
Presentación para el WordCamp Costa Rica 2016: Flujo de trabajo, desde el desarrollo hasta el deployment.

## Requerimientos
* Bower debe estar instalado

## Presentación
La presentación esta montada con Reveal.js, por lo que el archivo index.html no se va a ver bien de buenas a primeras.
Es necesario ejectuar

```
bower install
```

Esto descargará las bibliotecas necesarias para que la presentación se vea bien

## Ejemplos
Los primeros ejemplos (del 01 al 03) se deben ejecutar con el archivo ejemplo.sh. Limpiar las instancias de docker se
ejecutando el archivo limpiar.sh en la carpeta Ejemplos.

Los demás ejemplos usan docker-compose, para limpiar las instancias se ejecuta 

```
docker-compose down
```

## Feedback
Pueden levantar issues (los revisaré cuando tenga tiempo libre.)
