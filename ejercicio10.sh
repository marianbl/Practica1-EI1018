#!/bin/bash

if test -d /home/$1/tmp # test o [] ???
then
  a=0
  for fich in /home/$1/tmp; do  
    if [$fich -eq *.aux]; then
      if test -f $fich; then # test o [] ???
	b=´ls -l $fich|sed "s/ */#/g" |cut -f5 d#´
	let a+=b
	rm $fich
      fi
    fi
  done
  echo "Se borran ficheros del usuario $1"
  echo "Total de bytes eliminados $b"

  
else 
  echo "No se ha encontrado el directorio $1"
fi
