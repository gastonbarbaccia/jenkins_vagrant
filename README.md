# jenkins_vagrant

El siguiente script fue creado para poder ejecutarse en un entorno linux, sin embargo puede funcionar sin problemas en entornos windows. La unica diferencia esta en que en linux hay que usar el siguiente codigo para poder acceder desde localhost a la virtual (config.vm.network "public_network" ), ingresando a la maquina virtual por SSH y verificar con ifconfig que ip tiene actualmente en el rango de 192.168... .

## Requisitos:

Tener instalado vagrant y virtal box


## comandos de vagrant:

vagrant up: levanta la maquina virtual

vagrant up --provision: levanta la maquina virtual y ejecuta el script bash

vagrant destroy: destruye la maquina virtual

vagrant ssh: sirve para conectarse a la maquina virtual mediante terminal

