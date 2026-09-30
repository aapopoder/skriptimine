#!/bin/bash

ajutine_fail=$(mktemp)

while [ "$(wc -l < "$ajutine_fail")" -lt 5 ]
do
    number=$((RANDOM % 50 + 1))

    if ! grep -qx "$number" "$ajutine_fail"
    then
        echo "$number" >> "$ajutine_fail"
    fi
done

echo "Genereeritud 5 erinevat lotonumbrit:"
cat "$ajutine_fail"

echo
echo "Kuhu soovid tulemuse salvestada?"
echo "1 - Terminali"
echo "2 - Faili"

read -p "Vali 1 või 2: " valik

if [ "$valik" -eq 1 ]
then
    echo
    echo "Lotonumbrid:"
    cat "$ajutine_fail"
    echo "Kuupäev ja kellaaeg: $(date)"

elif [ "$valik" -eq 2 ]
then
    fail="lotonumbrid.txt"

    echo "Kuupäev ja kellaaeg: $(date)" >> "$fail"
    echo "Lotonumbrid:" >> "$fail"
    cat "$ajutine_fail" >> "$fail"
    echo "" >> "$fail"

    echo "Tulemus salvestati faili $fail"

else
    echo "Vigane valik."
fi

rm "$ajutine_fail"
