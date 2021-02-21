%Ingreso

enfermedad('dengue').
enfermedad('dengue_hemorragico').

es_Sintoma_de('fiebre_alta','dengue').
es_Sintoma_de('dolor_de_cabeza','dengue').
es_Sintoma_de('dolor_de_espalda','dengue').
es_Sintoma_de('dolor_en_coyunturas','dengue').
es_Sintoma_de('nausea','dengue').
es_Sintoma_de('vomito','dengue').
es_Sintoma_de('dolor_en_los_ojos','dengue').
es_Sintoma_de('erupcion_de_la_piel','dengue').
es_Sintoma_de('acidez','dengue').
es_Sintoma_de('dolor_del_cuerpo','dengue').

es_Sintoma_de('temperatura_subitamente_alta','dengue_hemorragico').
es_Sintoma_de('sangrado_por_diferentes_partes_del_cuerpo','dengue_hemorragico').
es_Sintoma_de('dificultad_de_respiracion','dengue_hemorragico').
es_Sintoma_de('fuerte_dolor_abdominal','dengue_hemorragico').
es_Sintoma_de('vomito','dengue_hemorragico').
es_Sintoma_de('diarrea','dengue_hemorragico').
es_Sintoma_de('alteraciones_en_la_presion','dengue_hemorragico').
es_Sintoma_de('falta_de_apetito','dengue_hemorragico').
es_Sintoma_de('palidez','dengue_hemorragico').
es_Sintoma_de('sudoracion','dengue_hemorragico').
es_Sintoma_de('sueño','dengue_hemorragico').

padece_de('Juan','fiebre_alta').
padece_de('Marco','nausea').
padece_de('Maria','dolor_del_cuerpo').
padece_de('Alex','diarrea').
padece_de('Jose','palidez').

%Regla

tiene(X,Y):- padece_de(X,Z), es_Sintoma_de(Z,Y).

%Consulta
%padece_de(Juan,X).

%tiene(Juan,X).
