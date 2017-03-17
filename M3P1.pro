DOMAINS						%Domain adalah tempat dimana memberi nama khusus parameter
kali,jumlah = integer				%parameter kali dan jumlah dengan tipe data integer

PREDICATES					%Predikat adalah tempat deklarasi relasi
tambahkan(jumlah,jumlah,jumlah)			%tambahkan merupakan parameter dengan tipe data(jumlah,jumlah,jumlah)
kalikan(kali,kali,kali)				%kalikan merupakan parameter dengan tipe data(kali,kali,kali)

CLAUSES						%Clauses adalah tempat menuliskan fakta dan himpunan 
tambahkan(X,Y,Jumlah):-Jumlah=X+Y.		%tambahkan merupakan parameter dengan predikat(X dan Y dan Jumlah)jika maka jumlah sama dengan X+Y
kalikan(X,Y,Kali):-Kali=X*Y.			%kalikan merupakan parameter dengan predikat(X dan Y dan Kali)jika maka kali=X*Y

GOAL						%Goal merupakan tujuan dari program
tambahkan(32,54,Jumlah).			%jawaban dari tambahkan dengan nilai 32 dan 54 dijumlahkan.