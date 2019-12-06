declare -a namamhsw
declare -a nimmhsw
declare -a jrsnmhsw

while :; do
clear

echo "Data Mahasiswa"
echo "1. Input data Mahasiswa : "
echo "2. View data Mahasiswa : "
echo "3. Update data Mahasiswa : "
echo "4. Exit"

read pilih

if [ $pilih == 1 ]
then
	clear
   echo -n "masukkan jumlah mahasiswa yang akan diinput : "
   read jml
	for ((i=0; i<$jml; i++)) do
    	echo -n $(( $i + 1))". nama : "
    	read nama
    	namamhsw[$i]=$nama
    	echo -n " NIM :  "
    	read nim
    	nimmhsw[$i]=$nim
	echo -n " jurusan : "
	read jrsn
	jrsnmhsw[$i]=$jrsn
	done
fi

if [ $pilih == 2 ]
then
	clear
   echo  "Nama, NIM, dan Jurusan "
   for ((i=0; i<$jml; i++)) do
    	echo  $(( $i + 1))". Nama : ${namamhsw[$i]}"
    	echo  " NIM  : ${nimmhsw[$i]}"
		echo  " Jurusan : ${jrsnmhsw[$i]}"
    	echo ""
	done$updt-1]=$jrsn
fi

if [ $pilih == 4 ]
then
	exit
fi
done
	read
fi

if [ $pilih == 3 ]
	then
	clear
	echo -n "masukkan nomor mahasiswa yang akan diubah : "
	read updt
	echo -n "nama : "
	read nama
	echo -n "NIM : "
	read nim
	echo -n "jurusan : "
	read jrsn
	namamhsw[$updt-1]=$nama
	nimmhsw[$updt-1]=$nim
    jrsnmhsw[
