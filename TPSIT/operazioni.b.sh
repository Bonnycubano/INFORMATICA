#/bin/bash
somma=0

while [ $num -ne 0 ]; do
echo "inserisci un numero intero: "
read num
    
    ((somma += ${!i}))
    ((i++))  
done
echo "la somma delgi argomenti e'= $somma"