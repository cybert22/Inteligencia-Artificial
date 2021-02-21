enfermo_de(manuel,gripe).

tiene_sintoma(alicia,cansancio).

sintoma_de(fiebre,gripe).
sintoma_de(tos,gripe).
sintoma_de(cansancio,anemia).

elimina(vitaminas,cansancio).
elimina(aspirinas,fiebre).
elimina(jarabe,tos).
     %aspirina cura  gripe si  aspirina elimina fiebre y fiebre es sintoma de gripe
cura(MEDICINA,ENFERMEDAD):- elimina(MEDICINA,Malestar),sintoma_de(Malestar,ENFERMEDAD).

para(RECETA,PACIENTE):-enfermo_de(PACIENTE,ENFERMEDAD),cura(RECETA,ENFERMEDAD).
enfermo(Persona,Enfermedad):- tiene_sintoma(Persona,Malestar),sintoma_de(Malestar,Enfermedad).

%EJERCICIO 02

transporte(roma,20000).
transporte(londres,25000).
transporte(tunez,15000).

alojamiento(hotel,roma,25000).
alojamiento(hotel,londres,15000).
alojamiento(hotel,tunez,10000).
alojamiento(hostal,roma,15000).
alojamiento(hostal,londres,10000).
alojamiento(hostal,tunez,8000).
alojamiento(camping,roma,10000).
alojamiento(camping,londres,5000).
alojamiento(camping,tunez,5000).

viatico(DESTINO,TELO,GASTOTOTAL):-transporte(DESTINO,PRECIO),alojamiento(TELO,DESTINO,PRECIOTELO),GASTOTOTAL is PRECIO+PRECIOTELO.
viaje(W,X,Y,Z):-transporte(W,A),alojamiento(Y,W,C),B is C*X,Z is A+B.

% viatico(DESTINO,X,HotelCamping,PrecioHotelmaspasaje) A MEDIAS NO
% ENTENDÍ COMO FUNCIONA EL SISTEMA EXPERTO
%
% EJERCICIO DE OROSCOPO

/* horoscopo(Signo,DiaIni,MesIni,DiaFin,MesFin)
 <- son del signo Signo los nacidos entre el DiaIni/MesIni y el DiaFin/MesFin */
horoscopo(aries,21,3,21,4).
horoscopo(tauro,21,4,21,5).
horoscopo(geminis,21,5,21,6).
horoscopo(cancer,21,6,21,7).
horoscopo(leo,21,7,21,8).
horoscopo(virgo,21,8,21,9).
horoscopo(libra,21,9,21,10).
horoscopo(escorpio,21,10,21,11).
horoscopo(sagitario,21,11,21,12).
horoscopo(capricornio,21,12,21,1).
horoscopo(acuario,21,1,21,2).
horoscopo(piscis,21,2,21,3).
/* signo(Dia,Mes,Signo) <- los nacidos el Dia/Mes pertenecen al signo Signo */
signo(Dia,Mes,Signo) :- horoscopo(Signo,D1,M1,D2,M2),
 ( (Mes=M1,Dia>=D1) ; (Mes=M2,Dia=<D2) ).
%signo(8,5,tauro). consultas
%signo(7,8,Signo).
%signo(7,X,Signo).
%signo(X,7,Signo).

%operadores de corte sumatoria
/* sumatorio(Num,Sum) <- Sum es el sumatorio desde 1 hasta Num */
sumatorio(1,1) :- !.
sumatorio(N,S) :- N1 is N-1,
 sumatorio(N1,S1),
S is N+S1.
/* natural(Num) <- Num es un número perteneciente a los Naturales */
natural(0).
natural(X) :- natural(Y),
 X is Y+1.
/* diventera(Dividendo,Divisor,Cociente) <- Cociente es el resultado de la división */
diventera(A,B,C) :- natural(C),
 Y1 is C*B,
Y2 is (C+1)*B,
Y1=<A, Y2>A, !.


