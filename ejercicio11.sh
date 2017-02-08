#!/bin/bash

if test $# -lt 1; then
  echo "Numero de argumentos no validos"
fi

if test -d $1; then # test o [] ???
  cd $1
  for d in `ls -l |grep ^d`; do
      cd $d
      direct = `ls -l $d |grep ^d |wc -l`
      fichero = `ls -l $d |grep ^- |wc -l`
      echo "El subdirectorio $d tiene $direct directorios y $fichero ficheros"
      cd ..
   done
   
else
  echo "No se ha encontrado el directorio $1"
fi
