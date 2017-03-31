DOMAINS   					%Domains adalah tempat memberikan nama khusus untuk parameter
	benda	= buku(judul, pengarang) ;	%yang termasuk dalam benda yaitu ada buku dengan parameter judul dan pengarang
		  kuda(nama) ; kapal ;		%kuda dengan parameter nama dan terdapat dua predicate yaitu kuda dan kapal       
		  bukubank(saldo)   		%bukubank dengan parameter saldo 
		  judul, pengarang, nama = symbol   %judul,pengarang, nama dengan parameter symbol
		  saldo                = real 	%saldo dengan tipe data real
 
PREDICATES   					%tempat dimana mendeklarasikan relasi
	nondeterm milik(nama,benda)  		%nondeterm digunakan untuk memunculkan beberapa kemungkinan dengan predicate milik dan parameter nama dan benda
	
CLAUSES   					%tempat mendklarasikan fakta dan tujuan yang ada didalam predicate
	milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")).   %erwin memiliki buku dengan judul Markesot Betutur dan pengarang Emha Ainun Najib
	milik(erwin, kuda(buraq)). 		%erwin memiliki kuda dengan nama buraq  
	milik(erwin, kapal).   			%erwin memiliki kapal
	milik(erwin, bukubank(1000)). 		%erwin memiliki buku bank dengan saldo 1000
 
 
GOAL   						%Tujuan dari akhir program yang dinyatakan dalam bentuk pertanyaan ataupun pernyataan
	milik(erwin, Benda). 			%jadi didalam goal tersebut ingin mencari apa saja yang dimiliki oleh erwin yang berupa benda.