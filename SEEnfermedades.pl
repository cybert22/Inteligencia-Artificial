%%declaraciones de enfermedades
enfermedad(gripe).
enfermedad(rubeola).
enfermedad(malaria).
enfermedad(hepatitis).
enfermedad(tuberculosis).
enfermedad(anemia).

sintomade(tos, gripe).

%la tos es síntoma de gripe
sintomade(cansancio, gripe).
%el cansancio es síntoma de gripe
sintomade(fiebre, gripe).

%la fiebre es síntoma de gripe
sintomade(dolorcabeza, gripe). %dolor de cabeza es síntoma de gripe
sintomade(nauseas, hepatitis).
%las nauseas son síntoma de hepatitis
sintomade(diarrea, hepatitis).
%la diarrea es síntoma de hepatitis
sintomade(ictericia, hepatitis)
.%la ictericia es síntoma de hepatitis
sintomade(cansancio, anemia).
%cansancio es síntoma de anemia
sintomade(apatia, anemia).
%apatía es síntoma de anemia
sintomade(nausea, anemia).
%las nauseas son síntomas de anemia
sintomade(tos, tuberculosis).
%la tos es síntoma de la tuberculosis
sintomade(cansancio, tuberculosis). %el cansancio es síntoma de tuberculosis
sintomade(fiebre, tuberculosis). %la fiebre es síntoma de la tuberculosis
sintomade(escalofrios, tuberculosis). %los escalofríos es síntoma de tuberculosis
sintomade(escalofrios, malaria). %los escalofríos son síntomas de la malaria
sintomade(fiebre , malaria).
%la fiebre es síntoma de malaria
sintomade(diarrea , malaria).
%la diarrea es síntoma de malaria
sintomade(ictericia, malaria).
%la ictericia es síntoma de malaria
sintomade(fiebre, rubeola).
%la fiebre es síntoma de rubéola
sintomade(jaqueca, rubeola).
%la jaqueca es síntoma de rubéola
sintomade(secrecion, rubeola).
%la secreción es síntoma de rubeola

medicinade([contrex,jarabe,paracetamol], gripe).
%contrex es medicamento de la gripe
medicinade([clorenamina,pirozinamida], tuberculosis). %pastillas es medicamento de la tubercolosis
medicinade([vacuna], malaria).


%vacuna es medicamento de la malaria
medicinade([vacuna], rubéola).


%vacuna es medicamento de la rubeola
medicinade([ferrol,welton,vitaminas], anemia).
%vitaminas es medicamento de la anemia
medicinade([hepabionta], hepatitis).

%hepabionta es medicamento de hepatitis

especialistade(otorrino, gripe).
especialistade(nutricionista, anemia).
especialistade(endocrinologia, hepatitis).
especialistade(medicinageneral, rubéola).
especialistade(nutricionista, tuberculosis).
especialistade(medicinageneral, malaria).
%---------------------------------------------------------------------------------------------------------------------
%Reglas
%---------------------------------------------------------------------------------------------------------------------
recetade(M, S):-sintomade(S, Z),medicinade(M, Z).
atiende_especialista(E, S):- sintomade(S,Z),especialistade(E, Z).

%¿1 Si tengo la enfermedad de malaria que medicamento debo tomar?
%medicinade(X,malaria).
%2. ¿Si tengo enfermedad de gripe que medicamento debo tomar?
   %medicinade(X,gripe).
%4. ¿Si Juan tiene gripe que especialista lo atiende?
%especialistade(X,gripe).
%5. Si María tiene enfermedad de la gripe ¿qué especialista lo atiende y que medicina le recetan?
%Respuesta: especialistade(Especialista, gripe),medicinade(Medicamento, gripe).
%especialistade(X,gripe),medicinade(Y,gripe).
%6. si juan tiene tos simple, que enfermedad tiene, que especialista debe atenderlo y que medicamento debe tomar.
 %Consulta
  %sintomade(tos, Enfermedad),especialistade(Especialista, Enfermedad),medicinade(Medicamento,Enfermedad).
 % si tiene diarrea que enfermedad tiene
 %CONSULTA     sintomade(diarrea , Enfermedad).
 %tengo fiaebre que medico me atiende y que me puede recetar
 %CONSULTA
 %sintomade(fiebre, Enfermedad),especialistade(Especialista, Enfermedad),medicinade(Medicamento, Enfermedad).

%FUNIONA PERFECTAMENTE GENIAL TODAS LAS CONSULTAS




