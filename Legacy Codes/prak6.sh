declare -a matriks_satu
declare -a matriks_dua

while :; do
clear

echo "Program Perkalian Matriks"
echo "1. Input nilai"
echo "2. Lihat nilai matriks"
echo "3. Kalikan matriks"
echo "4. Keluar program"

read pilih

if [ $pilih == 1 ]
then
	clear
	echo "Masukkan nilai pada matriks satu :"
	for ((i=0; i<=3; i++)) do
		echo "Nilai ke "$(( $i + 1))
		read nilai
		
		matriks_satu[$i]=$nilai
	done
	
	echo ""
	echo "Masukkan nilai pada matriks dua :"
	for ((i=0; i<=3; i++)) do
		echo "Nilai ke "$(( $i + 1))
		read nilai
		
		matriks_dua[$i]=$nilai
	done
fi

if [ $pilih == 2 ]
then
	clear
	echo "Nilai pada matriks satu"
	for ((i=0; i<4; i++)) do
		echo -n "${matriks_satu[$i]} "

		if [ $i == 1 ]
		then
			echo ""
		fi
	done

	echo ""
	echo ""
	
	echo "Nilai pada matriks dua"
	for ((i=0; i<4; i++)) do
		echo -n "${matriks_dua[$i]} "

		if [ $i == 1 ]
		then
			echo ""
		fi
	done

	read
fi

if [ $pilih == 3 ]
	then
	clear
	declare -a matriks_tiga

	for ((i=0; i<2; i++)) do
		for ((j=0; j<2; j++)) do
			let matriks_tiga[$i]+=matriks_satu[$j]*matriks_dua[$i+$j*2]
		done
	done

	for ((i=0; i<2; i++)) do
		for ((j=0; j<2; j++)) do
			let matriks_tiga[$i+2]+=matriks_satu[$j+2]*matriks_dua[$i+$j*2]
		done	
	done
	
	echo "Hasil perkalian"
	for ((i=0; i<4; i++)) do
		echo -n "${matriks_tiga[$i]} "

		if [ $i == 1 ]
		then
			echo ""
		fi
	done
	unset matriks_tiga
	read
fi

if [ $pilih == 4 ]
then
	exit
fi

done
