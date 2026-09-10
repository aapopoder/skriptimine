#!/bin/bash
# Skripti eesmärk: Väljastada kasutajale suurtähega kohandatud tervitus "Tere, Kasutajanimi !"

# 1. Väljasta "Tere, " ilma reavahetuseta (-n lipp hoiab ära uue rea)
echo -n "Tere, "

# 2. Tekita muutuja, mille väärtus on kasutaja nimi suure algustähega, ning väljasta ilma reavahetuseta
kasutaja="${USER^}"
echo -n "$kasutaja"

# 3. Väljasta "!" ja tee reavahetus
echo " !"
