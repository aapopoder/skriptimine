#!/bin/bash
# Skript arvutab täielikult täidetud busside arvu ja maha jäänud reisijate arvu.

echo -n "Mitu reisijat on grupis: "
read reisijad

echo -n "Mitu kohta on ühes bussis: "
read kohad

bussid=$(expr $reisijad / $kohad)
maha=$(expr $reisijad % $kohad)

echo "Täielikult täidetud busse: $bussid"
echo "Maha jäänud inimesi: $maha"
