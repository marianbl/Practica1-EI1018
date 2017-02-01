#!/bin/bash

if test $# -lt 1; then
  echo "Numero de argumentos no validos"
fi

if test -d $1; then # test o [] ???
  for d in $1; do
    direct=0
    fichero=0
    cont=1
    if test -d $d; then
      for a in $d; do
	if test -d $a; then
	  let direct+=cont
	fi
	if test -f a; then
	  let fichero+=cont
	fi
	echo "El directorio $d tiene $direct directorios y $fichero ficheros"
      done
    fi
   done
fi