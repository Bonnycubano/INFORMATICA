#/bin/bash
somma=0

while [ $# -ge $i ]; do
echo "inserisci un numero intero: "
read num
    
    ((somma += ${!i}))
    ((i++))  
done
echo "la somma delgi argomenti e'= $somma"