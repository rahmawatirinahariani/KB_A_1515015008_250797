/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */		%list tersebut betipe data integer

predicates
  length_of(list,integer,integer) - procedure (i,o,i)			% didalam predikat terdapat length_of dengan parameter list dengan inputan, integer dengan output dan integer yang berikutnya dengan keluaran inputan

clauses
  length_of([], Result, Result).					% jika aturan dari length_of tersebut kosong maka keluaran dari list tersebut adalah nilai dari result pertama
  									% dengan nilai dari result kedua sama dengan nilai result pertama. Karena result pertama berupa inputan.
  length_of([_|T],Result,Counter):-					% aturan kedua yaitu kita memakai counter untuk menjadi inputan dalam list untuk mencari head dalam list maka 
	NewCounter = Counter + 1,					% counter baru = counter + 1
	length_of(T, Result, NewCounter).				% list tersebut aku muncul T sebagai inputan nilai Result sebagai outputan dan nilai newcounter yang dihitung dari aturan diatas

goal
  length_of([1,2,3],L,0). /* start with Counter = 0 */			%jadi caranya adalah 
  									% counter bernilai 0
  									% kepala(head) = 1 	-> 1
  									% ekor(tail) = 2 dan 3	-> 2
  									% counter 0
  									% NewCounter = Counter + 1
  									%	     = 0 + 1
  									%	     =   1
  									
  									%length_of = length_tail + counter
  									%	   =      2	 +   1
  									%	   = 		3
  									
  									%Jadi hasil dari panjang list dari L tersebut adalah 3