plat_resistance(P) :-
    poisson(P).
plat_resistance(P) :-
    viande(P).

repas(HO, P, D) :- 
	hors_d_oeuvre(HO), 
	plat_resistance(P), 
	dessert(D).

calor_200_400(P) :-
    calories(P,Cal),
    Cal > 200,
    Cal < 400.

plus_calor_bar(P) :-
    calories(bar_aux_algues, C_bar),
    calories(P,C-p),
    C_bar > C_p.

calories_repas(HO, P, D, C_total) :- 
	repas(HO, P, D),
	calories(HO, C_ho),
	calories(P, C_p),
	calories(D, C_d),
	C_total is C_ho + C_p + C_d.

repas_equilibre(HO, P, D, C_total) :-
	calories_repas(HO, P, D, C_total),
	C_total < 800.
