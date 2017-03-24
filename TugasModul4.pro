DOMAINS   						%Domains digunakan untuk memberikan nama pada parameter
	nama,jender,pekerjaan,benda,alasan,zat = symbol %baris pertama ini menggunak tipe data symbol
	umur=integer 					%umur menggunakan tipe data integer
 
PREDICATES						%predicates digunakan untuk mendklarasikan relasi    
	nondeterm orang(nama, umur, jender, pekerjaan)  %relasi dari orang yaitu nama,umur, jender dan pekerjaan
	nondeterm selingkuh(nama, nama)			%relasi dari selingkuh yaitu nama dan nama
		terbunuh_dengan(nama, benda)   		%relasi dari terbunuh dengan yaitu nama dengan benda apa
		terbunuh(nama)   			%relasi dari tebunuh yaitu nama 
	nondeterm pembunuh(nama)   			%relasi dari predikat pembunuh yaitu parameter nama
		motif(alasan)   			%relasi dari predikat motif adalah parameter alasan 
		ternodai(nama, zat)   			%relasi dari predikat ternodai yaitu dengan parameter nama dan zat
		milik(nama, benda)   			%relasi dari predikat milik yaitu parameter nama dan benda
	nondeterm cara_kerja_mirip(benda, benda)	%relasi dari predikat cara  kerjanya mirip yaitubenda danbenda   
	nondeterm kemungkinan_milik(nama, benda)   	%relasi dari predikat kemungkinan milik yaitu parameter nama dan benda
	nondeterm dicurigai(nama) 			%relasi dari predikat dicurigai yaitu parameternama
 
/* * * Fakta-fakta tentang pembunuhan * * */ 
CLAUSES 						%clauses berisi fakta
  	orang(budi,55,m,tukang_kayu).   		%budi seorang tukang kayu yang berumur 55 dengan bejender m  
  	orang(aldi,25,m,pemain_sepak_bola).   		%aldi seorang pemain sepak bola yang berumur 55 dengan bejender m  
  	orang(joni,25,m,pencopet). 			%budi seorang tukang kayu yang berumur 55 dengan bejender m  
 
 	selingkuh(ina,joni).   				%ina selingkuh dengan joni
 	selingkuh(ina,budi).   				%ina selingkuh dengan budi
 	selingkuh(siti,joni). 				%siti selingkuh dengan joni
 
  	terbunuh_dengan(siti,pentungan).   		%siti terbunuh dengan pentungan
  	terbunuh(siti). 				%siti terbunuh dengan siti
 
  	motif(uang).   					%motif dari pembunuhan tersebut yaitu uang
  	motif(cemburu).   				%motif dari pembunuhan tersebut yaitu cemburu
  	motif(dendam). 					%motif dari pembunuhan tersebut yaiyu dendam
 
  	ternodai(budi, darah).  			%budi ternodai dengan darah 
  	ternodai(siti, darah).   			%siti ternodai dengan darah
  	ternodai(aldi, lumpur).   			%aldi ternodai dengan lumpur
  	ternodai(joni, coklat).   			%joni ternodai dengan coklat
  	ternodai(ina, coklat). 				%ina ternodai dengan coklat
 
  	milik(budi,kaki_palsu).   			%budi milik kaki palsu
  	milik(joni,pistol). 				%joni milik pistol
 
/* * * Basis Pengetahuan * * */
  	cara_kerja_mirip(kaki_palsu, pentungan).   	%cara kerja kaki palsu mirip denganpentungan 
  	cara_kerja_mirip(balok, pentungan).   		%cara kerja balok mirip dengan pentungan
  	cara_kerja_mirip(gunting, pisau).   		%cara kerja gunting mirip dengan pisau
  	cara_kerja_mirip(sepatu_bola, pentungan). 	%cara kerja sepatu bola mirip denganpentungan
 
  	kemungkinan_milik(X,sepatu_bola):-  		%kemungkinan sepatu bola milik X jika maka 
  		orang(X,_,_,pemain_sepak_bola).   	%X dan orang lainnya pemain sepakbola
  	kemungkinan_milik(X,gunting):-  		%kemungkinan gunting milik X jika maka
  		orang(X,_,_,pekerja_salon).   		%X dan orang lainnya adalah pekerja salon
  	kemungkinan_milik(X,Benda):-  			%kemungkinan benda milik X jika maka
  		milik(X,Benda). 			%X memiliki benda itu
 
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *  
* dicurigai semua orang yang memiliki senjata yang *  
* kerjanya mirip dengan senjata penyebab siti terbunuh. *  
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */

   	dicurigai(X):-  				%X dicurigai jika maka
   		terbunuh_dengan(siti,Senjata) ,		%Siti terbunuh dengan senjata dan
   		cara_kerja_mirip(Benda,Senjata) ,  	%Cara kerja benda tersebut mirip dengan senjata dan
   		kemungkinan_milik(X,Benda). 		%Kemungkinan X memiliki benda 
 
/* * * * * * * * * * * * * * * * * * * * * * * * * *  
* dicurigai laki-laki yang selingkuh dengan siti. *
* * * * * * * * * * * * * * * * * * * * * * * * * */ 
 
  	dicurigai(X):-  				%X dicurigai jika maka
  		motif(cemburu),  			%cemburu adalah motifnya dan
  		orang(X,_,m,_),  			%X adalah orang tersebut yang berjender m dan
  		selingkuh(siti,X). 			%siti selingkuh dengan X
  		
/* * * * * * * * * * * * * * * * * * * * * * *  
* dicurigai perempuan yang selingkuh dengan *  
* laki-laki yang juga selingkuh dengan siti *  
* * * * * * * * * * * * * * * * * * * * * * */ 
 
  	dicurigai(X):-  				%X dicurigai jika maka
  		motif(cemburu),  			%cemburu adalah motifnya dan
  		orang(X,_,f,_),  			%X adalah orang tersebut yang berjender f dan
  		selingkuh(X,Lakilaki),  		%Laki - laki tersebut selingkuh dengan X dan
  		selingkuh(siti,Lakilaki). 		%Siti selingkuh dengan laki-laki
 
/* * * * * * * * * * * * * * * * * * * * * * * * * * *  
* dicurigai pencopet yang mempunyai motif uang.*  
* * * * * * * * * * * * * * * * * * * * * * * * * * */ 
 
 	dicurigai(X):-					%X dicurigai jika maka   
 		motif(uang),  				%motifnya adalah uang dan 
 		orang(X,_,_,pencopet). 			%X adalah seorang pencopet
 
  	pembunuh(Pembunuh):-  				%pembunuh tersebut dikatakan pembunuh jika maka
  		orang(Pembunuh,_,_,_),  		%orang tersebut adalah pembunuh dan orang lainnya dan
  		terbunuh(Terbunuh),  			%jika orang tersebut terbunuh dan
  		Terbunuh <> Pembunuh, /* Bukan bunuh diri */  %relasi dari terbunuh adalah pembunuh dan
  		dicurigai(Pembunuh),  			%pembunuh tersebut dicurigai dan 	
  		ternodai(Pembunuh,Zat),  		%pembunuh ternodai oleh zat dan
  		ternodai(Terbunuh,Zat). 		%yang terbunuh ternodai oleh zat
  		
 GOAL   						%Goal adalah jawaban yang berisi pernyataan dan pertanyaan
 	pembunuh(X). 					%Jawaban dari pembunuh tersebut adalah budi
 							%karena pembunuh yang ternodai zat adalah budi. 
 							%Yang terdapat di rule ada dua yaitu siti dan budi yang ternodai dengan zat yaitu darah
 							%karena di goal yang ditanyakan adalah pembunuh maka jawabannya budi
 							%sebab siti adalah orang yang terbunuh  
