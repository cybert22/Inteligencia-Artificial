%fallas("Banda del alternador defectuosa",grietas,cristalizada,flote).
%--------------Fallas de un Automovil----------------
falla(arranca).
falla(acelera).
falla(gasolina).

causade(bateria,arranca).
causade(filtro,arranca).
causade(electrica,acelera).
causade(carburo,acelera).
causade(rentencion,gasolina).
causade(combustible,gasolin).

repacacionde("vereficar los ternimales de la bateria ","prueba la bateria","intenta arranacer el veiculo con puente",arranca).
repacacionde("calibrar el cuerpo de aceleracion","calibracion del cuerpo aceleracion electronica","calibracion manuales",acelerar).
repacacionde("malla elastica",masilla,"cambio de resipiente de tanque de gasolina",gasolina).

epecialista(mecacinoautomotriz,arranque).
epecialista(mecacinoautomotriz,acelera).
epecialista(mecacinoautomotriz,gasolina).
%EL AUTO NO ARRANCA puede ser pero no lo hice yo
