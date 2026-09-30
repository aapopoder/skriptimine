#!/bin/bash
# Skript arvutab vajaliku busside arvu vastavalt reisijate arvule.

echo -n "Sisesta reisijate arv: "
read reisijad

echo -n "Sisesta kohtade arv bussis: "
read kohad

bussid=$(expr $reisijad / $kohad)
maha=$(expr $reisijad % $kohad)

if [ $maha -gt 0 ]
then
    bussid=$(expr $bussid + 1)
fi

echo "Kokku on vaja $bussid bussi"
