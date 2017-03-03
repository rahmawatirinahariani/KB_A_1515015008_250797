predicates
nondeterm melakukan(symbol,symbol)
nondeterm dapat(symbol,symbol)
nondeterm hewan(symbol)
nondeterm proses(symbol)
	  
	  
clauses
melakukan(X,Y):-
     	hewan(X),
     	proses(Y).
     	
     hewan(kucing).
     hewan(ular).
     hewan(amoeba).
     
     
     proses(beranak).
     proses(bertelur).
     proses(membelah_diri).
     
     dapat(kucing,beranak).
     dapat(ular,bertelur).
     dapat(ular,membelah_diri).
     dapat(amoeba,membelah_diri).
     
goal
   dapat(X,membelah_diri).
     
	  
      
	  