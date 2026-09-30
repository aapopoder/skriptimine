#!/bin/bash
# Skript arvutab küpsisetordi valmistamiseks vajaliku küpsisepakkide arvu.

echo -n "Aluskandiku pikkus cm: "
read pikkus

echo -n "Aluskandiku laius cm: "
read laius

echo -n "Küpsise pikkus cm: "
read küpsis

echo -n "Küpsise laius cm: "
read küpsis_laius

echo -n "Tordi kihtide arv: "
read kihid

echo -n "Mitu küpsist on ühes pakis: "
read pakis

küpsiseid_reas=$(expr $pikkus / $küpsis)
küpsiseid_veerus=$(expr $laius / $küpsis_laius)
küpsiseid_kihis=$(expr $küpsiseid_reas \* $küpsiseid_veerus)
küpsiseid_kokku=$(expr $küpsiseid_kihis \* $kihid)
pakke=$(expr $küpsiseid_kokku + $pakis - 1)
pakke=$(expr $pakke / $pakis)

echo "Poes tuleb osta $pakke pakki küpsiseid."

