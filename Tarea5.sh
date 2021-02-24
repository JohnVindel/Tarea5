#!/bin/bash


echo "**************************"
echo "*          Menu	       *"
echo "* 1. Crear carpeta       *"
echo "* 2. Eliminar carpeta    *"
echo "* 3. Crear archivo       *"
echo "* 4. Salir    	       *"
echo "**************************"

echo "Ingrese opcion: "
read opcion

while [ "$opcion" !=4
do
	clear

	if [ "$opcion" = 1 ]; then
		echo "Ingrese la ruta: "
		read ruta
		
		rutaCarpeta=$ruta
		
		mkdir $rutaCarpeta
		echo "Carpeta creada. Ruta asignada: "$rutaCarpeta

	elif [ "$opcion" == 2 ]; then
		echo "Ingrese la ruta de carpeta: "
		read ruta

		rmdir $ruta
		echo "El archivo fue eliminada"

	elif [ "$opcion" = 3 ]; then
		echo "Ingrese la ruta: "
		read ruta

		touch $ruta
		echo "Archivo creado. Ruta asignada: "/$ruta

	elif [ "$opcion" == 4 ]; then
		exit

		echo "Adios"
	fi

	echo "**************************"
	echo "*          Menu	       *"
	echo "* 1. Crear carpeta       *"
	echo "* 2. Eliminar carpeta    *"
	echo "* 3. Crear archivo       *"
	echo "* 4. Salir    	       *"
	echo "**************************"
	echo "Ingrese opcion: "
	read opcion
done