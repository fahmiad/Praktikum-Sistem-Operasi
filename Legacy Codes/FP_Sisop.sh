declare -a namabuku
declare -a nobuku
declare -a jnsbuku
declare -a bit
declare -a lis
declare -a isbn
while :; do


echo "================================="
echo ""
echo "Data Buku Perpustakaan"
echo "1. Input data Buku : "
echo "2. View data Buku : "
echo "3. Update data Buku : "
echo "4. eksport .txt :"
echo "5. Exit"
echo ""
echo "================================="
echo ""
echo "Fahmi AD (18081010128)"
echo ""
echo -n "Pilih : " 
read pil

##buat data

case $pil in 
1)

	clear

   echo "masukkan jumlah Buku yang akan diinput : "
   read jml
	
	 for(( i=0; i<$jml; i++))
	 do

    	echo -n $(( $i + 1))". judul : "
    	read nama
    	namabuku[$i]=$nama

    	echo -n " kode buku :  "
    	read code
    	nobuku[$i]=$code

		echo -n " genre buku : "
		read genre
		jnsbuku[$i]=$genre

		echo -n " Penerbit buku : "
		read pnbt
		bit[$i]=$pnbt

		echo -n " Penulis buku : "
		read pnls
		lis[$i]=$pnls

		echo -n " isbn buku : "
		read is
		isbn[$i]=$is
		clear

	done

;;
##lihat data

2)

	clear

   echo  "nama "

   for ((i=0; i<$jml; i++)) 
   do

    	echo  $(( $i + 1))". judul : ${namabuku[$i]}"

    	echo  " kode  : ${nobuku[$i]}"

		echo  " genre : ${jnsbuku[$i]}"

		echo "penerbit :  ${bit[$i]}"

		echo "penulis :  ${lis[$i]}"

		echo "isbn :  ${isbn[$i]}"

    	echo ""



done

##update data
;;

3)
	
	clear

	echo -n "masukkan nomor buku yang diubah : "
	read updt

	echo -n "judul : "
	read nama

	echo -n "kode : "
	read code

	echo -n "genre : "
	read genre

	echo -n "penerbit : "
	read pnbt

	echo -n "penulis : "
	read pnls

	echo -n "isbn : "
	read is


	namabuku[$updt-1]=$nama
	##judul buku
	nobuku[$updt-1]=$code
	##code buku di perpus
	jnsbuku[$updt-1]=$genre
	#genre buku
	bit[$updt-1]=$pnbt
	##penerbit
	lis[$updt-1]=$pnls
	##penulis
	isbn[$updt-1]=$is
	##ISBN

##hapus data

;;
4)
	clear
	echo -n "Code Buku : "
    read nobuku
    for ((i=0; i<$jml; i++)) do
        echo  -e "        ==================================\n

                    DATA BUKU PERPUSTAKAAN\n
        ==================================\n
           Nama Buku         : ${namabuku[$i]}\n
           Nomor Buku     : ${nobuku[$i]}\n
           Genre Buku : ${jnsbuku[$i]}\n
           Penerbit         : ${bit[$i]}\n
           Penulis : ${lis[$i]}\n
           ISBN     : ${is[$i]}\n

           ===========================================\n
           				===========================================\n

           				" > $nobuku[$i].txt

        echo ""

        clear

        echo "Pembuatan file telah berhasil!!"
        read
    done

##exit
;;

5)
	exit
	read
esac
done
