//Los empleados de una f�brica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
//jornal diario de acuerdo con las siguientes reglas:
//	a) La tarifa de las horas diurnas es de $ 90
//	b) La tarifa de las horas nocturnas es de $ 125
//	c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
//		un 15% si el turno es nocturno.
//			
//		El programa debe solicitar la siguiente informaci�n al usuario: el nombre del trabajador, el d�a
//			de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Adem�s,
//			
//			2
//			debemos preguntarle al usuario si el d�a de la semana (lunes, martes, mi�rcoles, etc.) era
//				festivo o no, para poder calcular el jornal diario. Utilice una funci�n para realizar el c�lculo.

Funcion jornal_diario <- calculo_jornal ( dia, turno, canthoras, feriado )
	Definir jornal_diario Como real
	turno<-Minusculas(turno)
	si turno == "nocturno" Entonces
		jornal_diario<-canthoras*125
		si turno == "nocturno" y feriado==Minusculas("si")
			jornal_diario<-(canthoras*125)*1.15
		SiNo
			jornal_diario<-canthoras*125
		FinSi
	SiNo
		si turno == "diurno" y feriado==Minusculas("si")
			jornal_diario<-(canthoras*90)*1.15
		SiNo
			si turno == "diurno" y feriado<>Minusculas("si")
				Entonces
				jornal_diario<-canthoras*90
			FinSi
		finsi
	FinSi
Fin Funcion



Algoritmo nueve
	Definir trabajador, dia, turno, feriado como cadena
	Definir canthoras Como Entero
	
	Escribir "Nombre del trabajador"
	Leer trabajador
	Escribir "D�a de la semana"
	Leer dia
	Escribir "Ingrese el turno que trabajo"
	Leer turno
	Escribir "Ingrese la cantidad de horas trabajadas"
	Leer canthoras
	Escribir "�El d�a trabajado es feriado?"
	Leer feriado
	Escribir "El trabajador recibira " calculo_jornal(dia, turno, canthoras, feriado) " $"
FinAlgoritmo