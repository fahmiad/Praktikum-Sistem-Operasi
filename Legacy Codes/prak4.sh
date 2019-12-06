#!/bin/bash

angka=1;

echo "1. Menu Utama "
echo "2. Exit Program"
echo -n  "pilihan 1 atau 2 : "
read pilihan;
if [ $pilihan==1 ]
then
echo -n "masukkan nilai : "
read nilai;

        for ((angka=1;angka<=$nilai;angka=angka+1))
        do
                if [[ "($angka%5)" -eq 0 ]]
                then
                printf "kode $angka khusus";
                printf "\n"
                elif [[ "($angka%2)" -ne 0 ]]
                then
                printf "kode $angka ganjil";
                elif [[ "($angka%2)" -eq 0 ]]
                then
                printf "kode angka genap";
        fi
     done
elif [ $pilihan==2 ]
  then
break;
 fi
