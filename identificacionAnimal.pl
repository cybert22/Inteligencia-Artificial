%IDENTIFICACION DE ANIMALES

animal(perro)  :- is_true('tiene pelaje'), is_true('dice guau').
animal(gato)  :- is_true('tiene pelaje'), is_true('dice miau').
animal(pato) :- is_true('tiene plumas'), is_true('dice charlatán').
animal(cerdo) :- is_true('tiene pelaje'), is_true('dice heu').


is_true(Q) :-
        format("~w?\n", [Q]),
        read(si).

