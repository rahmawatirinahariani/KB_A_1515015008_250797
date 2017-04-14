/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */	%digunakan untuk mendeklarasikan list dengan tipe data integer

predicates
  length_of(list,integer) - procedure (i,o)			%ada predikat length_of dengan parameter list dan integer dengan aturan input dan output

clauses
  length_of([], 0).						% dari aturan length_of memiliki nilai 0 jika list tersebut kosong
  length_of([_|T],L):-						% jika length_of memiliki kepala yaitu T dari list L maka
	length_of(T,TailLength),				% length_of memiliki ekor dan kepala pada list 
	L = TailLength + 1.					% jadi list L = ekor + 1

goal				
  length_of([1,2,3],L).						% cara dari menentukan jawaban yg tampil tersebut yaitu
  								% kepala(head) = 1	-> 1
  								% ekor(tail) = 2 dan 3	-> 2
  								% maka L = TailLength + 1
  								%	 =	2     + 1
  								%	 =	    3
  								% Jadi panjang list dari L adalah 3
  												
