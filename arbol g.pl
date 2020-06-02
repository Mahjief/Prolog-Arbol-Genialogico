padre(enrique7,enrique8).
padre(enrique7,arturo).
padre(enrique7,margarita).

padre(enrique8,maria).
padre(enrique8,isabel).
padre(enrique8,eduardo).

madre(catalina,maria).
madre(ana,isabel).
madre(juana,eduardo).


genero(hombre,enrique8).
genero(hombre,enrique7).
genero(hombre,arturo).
genero(hombre,eduardo).

genero(mujer,margarita).
genero(mujer,maria).
genero(mujer,isabel).
genero(mujer,catalina).
genero(mujer,ana).
genero(mujer,juana).




progenitor(A,B,C):-
    padre(B,A);
    madre(C,A).


antepasado(A,Antepasado):-
    padre(Antepasado,A),
    antepasado(Antepasado,Antepasado),
    not(A == false).


hermano(A,B):-
    padre(X,B), padre(X,A),genero(hombre,B), not(B==A).

hermana(A,B):-
    padre(X,B), padre(X,A),genero(mujer,B), not(B==A).

abuelo(A,B):-
    padre(P,A),padre(B,P),genero(hombre,B).
