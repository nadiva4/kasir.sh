#!/usr/bin/bash
#DAFTAR MENU 
echo "======MENU WARUNG DIVA======"
echo "1). Nasi goreng	- Rp10000"
echo "2). Mie ayam	- Rp12000"
echo "3). Bakso	- Rp12000"
echo "4). Le minerale	- Rp5000"
echo "5). Thai tea	- Rp5000"
echo "6). Teajus	- Rp3000"

#Jumlah item yang dibeli
echo ""
echo -n "Berapa item yang ingin dibeli? "
read jumlah_item

total_=0

#Loop untuk input item
for ((i=1; i<=jumlah_item; i++)) do
	echo " "
	echo "item ke-$i: "
	echo -n "Pilih menu (1-6): "
	read menu
	echo -n "Jumlah porsi: "
	read porsi

	#Menghitung subtotal berdasarkan menu
	case $menu in
		1) subtotal=$((porsi * 10000));;
		2) subtotal=$((porsi * 12000));;
		3) subtotal=$((porsi * 12000));;
		4) subtotal=$((porsi * 5000));;
		5) subtotal=$((porsi * 5000));;
		6) subtotal=$((porsi * 3000));;
		*) echo "Menu tidak valid!"; exit 1;;
	esac

	echo "Subtotal: Rp$subtotal"
	total_belanja=$((total_belanja + subtotal))
	echo ""
done

#Menampilkan total belanja dan kembalian
echo "Total belanja: Rp$total_belanja"
echo -n "Masukkan jumlah uang: "
read uang 

kembalian=$((uang - total_belanja))

if [ $kembalian -ge 0 ]; then
	echo "Kembalian: Rp$kembalian"
else
	echo "Uang tidak cukup!"
fi
echo "===Terima kasih telah berbelanja!==="
