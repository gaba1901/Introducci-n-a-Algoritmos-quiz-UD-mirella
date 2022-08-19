////Una entidad financiera está realizando un estudio de crédito para una persona. Para que el
////crédito sea aprobado, la persona debe cumplir con los siguientes requisitos:
////La cuota mensual del valor del préstamo no puede superar el 30% del dinero que recibe de
////salario neto, teniendo en cuenta que el dinero que gana no es el mismo que recibe ya que tendrá
////descuentos obligatorios por ley, del 5% del salario para pensión y del 8% para salud y el 1% de
////solidaridad en caso de ganar más de 4 salarios mínimos legales vigentes.
////El número de cuotas máximas para pagar el préstamo es de 72 meses y el mínimo de 24 meses,
////recuerde que, para obtener la cuota se debe tener en cuenta el interés sobre el valor del
////préstamo, el cual no puede exceder el 2% mensual (este costo lo da la entidad).
////Los créditos y gastos personales de la persona, no pueden ser superiores al 50% de su salario
////neto. Determine si se le puede realizar el préstamo o no a la persona, en caso de que si se le
////haga el préstamo de cuanto sería el valor de la cuota mensual a pagar teniendo en cuenta
////intereses, por cuantos meses tendría la deuda y cuanto termina pagando por concepto de
////intereses, y en total por el préstamo.
////Nota: no olvide que debe realizar el análisis y el algoritmo que resuelve correctamente el
///problema
//ANALISIS
//Se debe solicitar  el salario de la persona a la cual se le realiza el prestamo 
//a est se debe de comprobar que no sea superior a el 30% cuando ya tengamos la cuota mensual 
//Devemos tomar el salario de la persona y hacerle unos porcentages, devemos tomarlo y multiplicarlo por el 
//0.05 y eso seria el salario para la pension, tomamos el salario de la persona y lo multiplicamos por 
//0.08 y eso sera la para salud.
//En caso de ganar mas de 4 salarios minimos se deve multiplicar el salirio por el 0.01 y eso seria
//el descuento de solidaridad,Antes de todo esto debemos de tomar el salario dividirlo poe 1millon 
//ya que con esto encontrariamos la catidad de salario minimo
//Se debe de solicitar el tiempo del prestamo en MESES  y estos no pueden ser menores a 24 meses ni mayores a 72 meses
////Este prestamo tiene un interes al mes de 2% dependiendo de la entidad 
//En este momento como para agregar cosas a el programa podriamos poner que la entidad 1 es bancolombia, la entidad 2 es davivienda y la entidad 3 es grupo aval
//y el interes mesual va a depender de la entidad como bien dice 
//Nos indica que el salario que con el salario no puede superar el 30% y ademas no puede superar el 50% con los creditos y los gastos personales 
//y ya con todo esto lo que devemos hacer es mostrar en cada caso tanto en el que si pueda tener el credito y lo que no peudan tener el credito
//y decir el por que en cada caso, si es en el que si puede debemos mostrar la cuota y cuanto pagara son ese interes en concreto y si no puede 
//mostramos el por que y listo terminamos 
Algoritmo QUIZ_1
	Definir S,M,P,IMD,MI,SM,SS,SP,SO_1,PH,PS,C_1,C_2,C Como Real;
	Mostrar "*****************************************************";
	Mostrar "PROGRAMA DEL PRESTAMOS POR SALARIO";
	Mostrar "*****************************************************";
	
	Mostrar "                                                     ";
	Mostrar "                                                     ";
	Mostrar "                                                     ";
	
	Repetir
		Mostrar "Buenas tardes, en este lugar podra recibir informacion para saber si es";
		Mostrar "apto o no, para un credito de su eleccion, para comenzar";
		Mostrar "Por favor dijite su salario, gracias";
		leer S;
	Hasta Que S>=1000000;
	Mostrar "                                                     ";
	Repetir
		Mostrar "Por favor elija el tiempo del credito en MESES, gracias";
		leer M;
	Hasta Que (M>=24 y M<=72)
	Mostrar "                                                     ";
	Repetir
		Mostrar "Por ultimo eleija el monto del cretido, recuerde que en los bancos se ";
		Mostrar "se prestan de 500000 en adelante, y recuerde que dependiendo de su  ";
		Mostrar "salario va a poder o no tener el prestamo.";
		leer P;
	Hasta Que P>500000;
	Mostrar "                                                     ";
	Repetir
		Mostrar "Por favor indique cual de las sigueientes entidades quiere para su credito";
		Mostrar "Para la entidad Bancolombia con un interes mensual del 1% seleccione 1";
		Mostrar "Para la entidad Davivienda con un interes mensual del 1.2% seleccione 2";
		Mostrar "Para la entidad Grupo Aval con un interes mensual del 1.8% seleccione 3";
		leer IM;
	Hasta Que (IM>0 Y IM<=3);
	
	Segun IM hacer 
		1:IM=1;
		2:IM=1.2;
		3:IM=1.8;
	FinSegun
	IMD<-(IM/100)
	MI<-(M*(-1))
	SM<-(S/1000000)
	
	si SM<=4 Entonces
		Mostrar "Su salario es de:" S, " Lo cual corresponde a en SMNLV(Salario mensual minimo legal vigente)";
		Mostrar "es de:" SM, " en este caso NO entra por encima de los 4 SMNLS por lo cual no debe de pagar";
		Mostrar "el 1% de solidaridad pero si la salud y la pension.";
	SiNo
		Mostrar "Su salario es de:" S, " Lo cual corresponde a en SMNLV(Salario mensual minimo legal vigente)";
		Mostrar "es de:" SM, " en este caso SI entra por encima de los 4 SMNLS por lo cual debe de pagar";
		Mostrar "el 1% de solidaridad, de salud y de pension.";
	FinSi
	Mostrar "                                                     ";
	SS<-(S*0.08);
	SP<-(S*0.05);
	SO_1<-(S*0.01);

	si SM>=4 Entonces
		PH<-(S-(SS+SP+SO_1))
		PS<-(PH*0.30);
		C_1<-(IMD*P);
		C_2<-(1-(1+IMD)^MI);
		C<-(C_1/C_2);
		c<-redon(c)
		TT<-(C*M)
		Mostrar "En su caso el banco le puede prestar hasta:" PS," con su salario, con respecto a el prestamo";
		si PS>C Entonces
			Mostrar "Usted Si es apto para tomar este credito con el interes mensual del:" IM," y su cuota es de:" C;
			Mostrar "en un tiempo en meses de:" M;
			Mostrar "Usted pagara un total de " TT;
		SiNo
			Mostrar "Usted NO es apto para tomar este credito pues no cumple con las condiciones con el prestamo,"
			Mostrar "En este momento podriamos prestarle hasta:" PS;
			Mostrar "En el tiempo que usted elija. "
		FinSi
		
	SiNo
		PH<-(S-(SS+SP))
		PS<-(PH*0.30);
		C_1<-(IMD*P);
		C_2<-(1-(1+IMD)^MI);
		C<-(C_1/C_2);
		c<-redon(c)
		TT<-(C*M)
		Mostrar "En su caso el banco le puede prestar hasta:" PS," con su salario, con respecto a el prestamo";
		si PS>C Entonces
			Mostrar "Usted Si es apto para tomar este credito con el interes mensual del:" IM," y su cuota es de:" C;
			Mostrar "en un tiempo en meses de:" M;
			Mostrar "Usted pagara un total de " TT;
		SiNo
			Mostrar "Usted NO es apto para tomar este credito pues no cumple con las condiciones con el prestamo,"
			Mostrar "En este momento podriamos prestarle hasta:" PS;
			Mostrar "En el tiempo que usted elija. "
		Mostrar "                                            ";
	FinSi;
FinSi

	
	
	
FinAlgoritmo
