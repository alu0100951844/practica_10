# Practica 7: POO. Herencia.

1. Crear una clase Ruby para representar y gestionar listas doblemente enlazadas (List) de manera
que se puedan recorrer en ambos sentidos.

Ejemplos de descripci´on de espectativas son las siguientes:
Debe existir un Nodo de la lista con sus datos, su siguiente y su previo
Debe existir una Lista con su cabeza y su cola
Se puede insertar un elemento en la Lista
Se pueden insertar varios elementos en la Lista
Se extrae el primer elemento de la Lista
Se extrae el ´ultimo elemento de la Lista

2. Considere las clases Ruby para representar alimentos de pr´acticas anteriores. Siguiendo la “pir´amide
alimenticia”, cree una jerarqu´ıa de clases que permita clasificar los alimentos por grupos:
‘huevos, l´acteos y helados’ , ‘carnes y derivados’ , ‘pescados y mariscos’, ‘alimentos grasos’,
‘alimentos ricos en carbohidratos’, ‘verduras y hortalizas’, ‘frutas’ y ‘bebidas’

Genere pruebas para comprobar la clase de un objeto, el tipo de un objeto y su pertenecia a
una jerarquía

3. Utilizar la herramienta Guard de Comprobaci´on Continua con el c´odigo Ruby desarrollado.
Se ha de configurar de manera que permita la ejecuci´on de las pruebas definidas con Rspec
cuando se modifiquen.

A ñadir Guard como una dependencia de desarrollo en el fichero de especificaciones de la
gema .gemspec.

spec.add_development_dependency "guard"
spec.add_development_dependency "guard-rspec"
spec.add_development_dependency "guard-bundler"

Instalar Guard a través de Bundler.
bin/setup

Generar un fichero de guardia por defecto (Guardfile).
bundle exec guard init

Ejecutar Guard a través de Bundler en una terminal.
bundle exec guard
