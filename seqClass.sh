# Cambiosss
#!/bin/bash
seq=$1 #Crea la variable
seq=$(echo $seq | tr a-z A-Z)  # Pasa de minúscula a mayúscula
if [[ $seq =~ ^[ACGTU]+$ ]]; then  #Si el argumento tiene alguno de los valores entrara dentro 
  if [[ $seq =~ T ]]; then #Si contiene una T entrara dentro
    echo "The sequence is DNA"  #Mostrara el mensaje
  elif [[ $seq =~ U ]]; then #Si contiene una T entrara dentro
    echo "The sequence is RNA" #Mostrara el mensaje
  else #Si no es una U o T entrara dentro
    echo "The sequence can be DNA or RNA" #Mostrara el mensaje
  fi
else #Si no es ninguno de los valors anteriores entrara dentro
  echo "The sequence is not DNA nor RNA" #Mostrara el mensaje
fi
