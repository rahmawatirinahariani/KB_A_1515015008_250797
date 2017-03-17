PREDICATES							%Predikat
	putra(STRING,STRING)					%putra merupakan predikat dengan tipe data (string,string
	saudara_perempuan(STRING,STRING)			%saudara_perempuan merupakan predikat dengan tipe data (string,string
	saudara_laki(STRING,STRING)				%saudara_laki merupakan predikat dengan tipe data (string,string)
	menikah(STRING,STRING)					%menikah merupakan predikat dengan tipe data (string,string)
	ayah(STRING ayah,STRING putra)				%ayah merupakan predikat dengan tipe data (string,string) parameter ayah dan putra
	kakek(STRING kakek,STRING cucu)				%kakek merupakan predikat dengan tipe data (string,string) parameter kakek dan cucu				
	nondeterm ipar_perempuan(STRING,STRING)			%ipar_perempuan dengan tipe data (string,string)
CLAUSES								%Clauses merupakan tempat pendklarasian fakta dan aturan dalam visual prolog
	putra("Ikhsan","Bentang").				%putra merupakan predikat dengan parameter(ikhas dan Bentang)		
	saudara_perempuan("Dini","Dina").			%saudara_perempuan merupakan predikat dengan parameter(dini dan dina)
	saudara_laki("Adi","Lintang").				%saudara_laki merupakan predikat dengan parameter(adi dan lintang)
	menikah("Ikhsan","Dini").				%menikah merupakan predikat dengan parameter(Ikhsan dan dini)
	menikah("Lintang","Surga").				%menikah merupakan predikat dengan parameter yang berbeda dengan sebelumnya(Lintang dan surga)
	ayah(A,B):-putra(B,A).					%ayah merupakan predikat dengan parameter(A dan B) jika maka putranya(B dan A)
	kakek(A,B):-ayah(A,C), ayah(C,B).			%kakek merupakan predikat dengan parameter(A dan B) jika maka ayah(A dan C) dan ayah(C dan B) 
	ipar_perempuan(A,B):-menikah(A,C), saudara_perempuan(C,B). %ipar_perempuan merupakan predikat dengan parameter(A dan B)jika maka menikah(A dan C)dan saudara_perempuan(C dan B)
	ipar_perempuan(A,B):-saudara_laki(A,C), menikah(C,B).   %ipar_perempuan merupakan predikat dengan parameter(A dan B)jika maka saudara_laki(A dan C)dan menikah(C dan B)
GOAL								%Tujuan akhir program
	ipar_perempuan("Ikhsan",X).				%ipar_perempuan merupakan predikat dengan parameter(Ikhsan dan variabel X)dimana siapa ipar_perempuan dari ikhsan