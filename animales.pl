animal(cheeta,cuatro_patas,no_vuela,no_nada).
animal(tigre,cuatro_patas,no_vuela,no_nada).
animal(jirafa,cuatro_patas,no_vuela,no_nada).
animal(zebra,cuatro_patas,no_vuela,no_nada).
animal(avestruz,dos_patas,no_vuela,no_nada).
animal(pinguino,dos_patas,no_vuela,nada).
animal(albatros,dos_patas,vuela,nada).
animal(perro,cuatro_patas,no_vuela,no_nada).
animal(mono,cuatro_patas,no_vuela,no_nada).
animal(caballo,cuatro_patas,no_vuela,no_nada).
animal(gallo,dos_patas,no_vuela,no_nada).

es_animal(cheeta,mamifero,carnivoro,leonado_puntos_negros,garras,mediano).
es_animal(tigre,mamifero,carnivoro,leonado_rayas,garras,mediano).
es_animal(jirafa,mamifero,herbivoro,amarillo,ungulado,cuello_pierna_larga).
es_animal(zebra,mamifero,herbivoro,rayas_negras,ungulado,cuello_pierna_mediano).
es_animal(avestruz,oviparo,herbivoro,negro_marron,pata,cuello_largo).
es_animal(pinguino,oviparo,carnivoro,blanco_negro,pata_palmeada,mediano).
es_animal(albatros,oviparo,carnivoro,blanco_negro,pata,pequeño).
es_animal(perro,mamifero,omnivoro,multiple,pata,grande_pequeño).
es_animal(caballo,mamifero,herbivoro,multiple,ungulado,cuello_pierna_mediano).
es_animal(mono,mamifero,herbivoro,negro_marron,pata,mediano).
es_animal(gallo,oviparo,herbivoro,multiple,pata,mediano).
%QUE ANIMALES TIENEN DOS PATAS
%animal(ANIMAL,dos_patas,_,_).
%QUE ANIMAL TINE 4 PATAS ES CARNIVORO Y TIENE GARRAS
%animal(ANIMAL,cuatro_patas,_,_),es_animal(ANIMAL,_,carnivoro,_,_,_).
%EL PINGUINO ES HERVIBORO     SABE NADA Y QUE COLOR ES
%
% animalito(X,_,_,nada):-
% es_animal(X,_,carnivoro,blanco_negro,_,_).es_animal(pinguino,_,ES,COLOR,_,_),animal(pinguino,_,_,SABE).
%
