enfant(E,P) :- 
	pere(P,E).
enfant(E,P) :-
	mere(P,E).

parent(P,E) :-
	enfant(E,P).

grand_pere(G,E) :-
	pere(G,X),
	parent(X,E).

frere(F,E) :- 
	homme(F),
	parent(P,F),
	parent(P,E).

oncle(O,N) :-
	frere(O,F),
	parent(F,N).

cousin(C,E) :-
	grand_pere(GP,C),
    grand_pere(GP,E).

le_roi_est_mort_vive_le_roi(R1,D,R2) :-
    roi(R1,_,_,D),
    roi(R2,_,D,_).

ancetre(X,Y) :-
    parent(X,Y).
ancetre(X,Y) :-
    parent(X,Z),
    ancetre(Z,Y).


	
