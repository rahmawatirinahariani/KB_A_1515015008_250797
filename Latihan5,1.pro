Domains									%memberi nama khusus pada parameter
	orang			       = orang(nama,alamat)		%orang dengan predicates orang dan parameter nama dan alamat
	nama                           = nama(pertama,kedua)   		%nama dengan predicates nama dan parameter pertama dan kedua
	alamat                         = alamat(jalan,kota_kab,propinsi) %alamat dengan predicates alamat dan parameter jalan,kabupaten kota dan provinsi 
	jalan                          = jalan(nama_jalan,nomor) 	%jalan dengan predicates jalan dan parameter nama jalan dan nomor  
	kota_kab,propinsi,nama_jalan   = string   			%kabupaten kota, provinsi dan nama jalan menggunakan parameter string
	pertama,kedua                  = symbol   			%pertama dan kedua menggunakan parameter symbol
	nomor                          = integer 			%nomor menggunakan parameter integer

Goal 
	P1=orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma",12),"Berbah","DIY")), %Data pertama berisi dua nama yang tinggal di alamat jalan dan nomor dan kabupaten kota dari provinsi
	P1=orang(nama(_,fatihah),Alamat),				%Data P1 akan memanggil nama orang pertama dengan menambahkan alamat
	P2=orang(nama(nur,fatihah),Alamat),				%Data P2 akan memanggil nama pertama dan kedua dengan ditambahkan alamat
	write("P1=",P1),nl,						%program menuliskan data P1 dengan menampilkan secara lengkap data pada P1
	write("P2=",P2),nl.						%program menuliskan data P2 dengan menampilkan secara lengkap data pada P2