%Desarrollar un sistema experto para diagnosticar 8 fallas y sus soluciones de una computadora, y por lo menos realizar 6 consultas

%enviar en archivo pdf con las consultas realizadas con sus resultados
%SISTEMA EXPERTO SOBRE LOS ERRORES DE UNA COMPUTADORA

error('pc no enciende').
error('pc enciende sin imagen').
error('no reconoce mouse').
error('puntero lento').
error('solo prende luz del mouse').
error('no reconoce teclado').
error('teclas no reconocen').
error('pc enciende sin imagen').
error('solo prende luz del teclado').
error('pantalla azul').
error('parpadeo constante').
error('pantalla negra').
error('pantalla con rayas').
error('Cierres inesperados de programas').
error('Bajó el rendimiento de la PC').
error('El Wi-Fi se desconecta muy seguido').
error('La computadora enciende dificil').
error('Ruidos extraños y vibraciones').
error('La impresora no imprime').
error('no se abre juegos pesados').

causante_error(fuente_poder,'pc no enciende').
causante_error(ventilador,'pc enciende sin imagen').
causante_error(mouse,'no reconoce mouse').
causante_error(ram,'puntero lento').
causante_error(teclado,'no reconoce teclado').
causante_error(monitor,'pc enciende sin imagen').
causante_error(sistema_operativo,'pantalla azul').
causante_error(bateria,'parpadeo constante').
causante_error(monitor,'pantalla negra').
causante_error(sistema_operativo,'pantalla negra').
causante_error(monitor,'pantalla con rayas').
causante_error(virus,'Cierres inesperados de programas').
causante_error(ram,'Cierres inesperados de programas').
causante_error(procesador,'Cierres inesperados de programas').
causante_error(virus,'Bajó el rendimiento de la PC').
causante_error(disco_duro,'Bajó el rendimiento de la PC').
causante_error(adaptador_red,'El Wi-Fi se desconecta muy seguido').
causante_error(virus,'La computadora enciende dificil').
causante_error(ram,'Ruidos extraños y vibraciones').
causante_error(disco_duro,'Ruidos extraños y vibraciones').
causante_error(tarjeta_video,'no se abre juegos pesados').

soluciona('verificar el funcionamiento de la fuente, cable power',fuente_poder).
soluciona('verificar el cable del fluido,verificar la memoria ram',fluido_electrico).
soluciona('verificar que no esté roto, cambiar si es así',ventilador).
soluciona('Comprobar con otro mouse, verificar entrada del cable usb,cambiar otro mouse',mouse).
soluciona('limpiar con borrador blanco con cuidado, o cambiar por otro ram',ram).
soluciona('verificar que esté instalado, instalar o actualizar',driver).
soluciona('verificar el puerto de entrada, comprobar con otro teclado',teclado).
soluciona('verificar que no se haya metido agua o polvo',teclado).
soluciona('verificar con otro monitor, si persiste cambiar por otro',monitor).
soluciona('verificar que esté activo el SO,instalar un antivirus',sistema_operativo).
soluciona('sustituir por otro si presenta ruptura',bateria).
soluciona('verificar que no haya sido averiado o roto, mantenimiento del monitor',monitor).
soluciona('usar hiren boot para buscar errores de SO',sistema_operativo).
soluciona('desfragmentar el Disco duro o formatear',virus).
soluciona('aumentar mas ram si tiene una ranura, hacer mantenimiento',ram).
soluciona('no usar varios programar simultaneo, baja capacidad del procesador',procesador).
soluciona('Desfragmentar el Disco duro, verificar que no esté averiado si es así cambiarlo',disco_duro).
soluciona('Instalar el driver o actualizar',adaptador_red).
soluciona('Verificar que no esté averiado',conector_rj45).
soluciona('poco capacidad de procesamiento por juegos pesados',procesador).
soluciona('verificar que no esté dañado, instalar un directX',tarjeta_video).

problema(X,Y):- error(X),causante_error(Y,X).%problema('La computadora enciende dificil',La_falla_esta_en).problema(Problema,Causante).
solucion(Y,X):-soluciona(X,Z),problema(Y,Z).
%solucion('pc no enciende',X). solucion(Problema,Solucion).

problemaYsolucion(Y,Z,X):-problema(Y,Z),soluciona(X,Z). % problemaYsolucion(Problema,Es_del,La_solucion).
% problemaYsolucion('no se abre juegos pesados',Es_del,La_solucion).
% problemaYsolucion(Problema,virus,La_solucion).
%
% YA FUNCIONA PERFECTAMENTE LO SULUCIONÉ
