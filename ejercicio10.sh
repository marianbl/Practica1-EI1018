#!/bin/bash

if test -d /home/$1/tmp # 
then
  a=0
  cd /home/$1/tmp | ls *.aux #Vuelca todos los ficheros *.aux a algun lugar que se necesita saber para hacer el for
  #for fich in /home/$1/tmp; do  
    #if [$fich -eq *.aux]; then
      if test -f $fich; then 
	b=´ls -l $fich|sed "s/  */#/g" |cut -f5 d#´
	let a+=b
	rm $fich
      fi
    #fi
  #done
  echo "Se borran ficheros del usuario $1"
  echo "Total de bytes eliminados $b"

  
else 
  echo "No se ha encontrado el directorio $1"
fi
