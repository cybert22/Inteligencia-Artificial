enfermo_de(manuel,gripe).
enfermo_de(jose,gripe).

tiene_sintoma(alicia,cansancio).

sintoma_de(fiebre,gripe).
sintoma_de(tos,gripe).
sintoma_de(cansancio,anemia).

elimina(vitaminas,cansancio).
elimina(aspirinas,fiebre).
elimina(jarabe,tos).

alivia(MEDI,ENFER):- elimina(MEDI,Y),sintoma_de(Y,ENFER).
recetar_a(X,Y):- enfermo_de(Y,A),alivia(X,A).
enfermo_de(X,Y):- tiene_sintoma(X,Z),sintoma_de(Z,Y).


