Algoritmo fecha
	Definir dia, mes, anio Como Entero
	Escribir "Escriba el número de día: "
	Leer dia
	Escribir "Escriba el número de mes: "
	Leer mes
	Escribir "Escriba el número de anio: "
	Leer anio
	Segun mes Hacer
		2:
			Si dia > 0 Y dia < 29 
				Escribir dia, " de Febrero de ", anio
			SiNo
				Escribir "Fecha inválida"
			FinSi
		1,3,5,7,8,10,12:
			Si dia < 1 O dia > 31 
				Escribir "Fecha inválida"
			SiNo
				Segun mes Hacer
					1:
						Escribir dia, " de Enero de ", anio
					3:
						Escribir dia, " de Marzo de ", anio
					5:
						Escribir dia, " de Mayo de ", anio
					7:
						Escribir dia, " de Julio de ", anio
					8:
						Escribir dia, " de Agosto de ", anio
					10:
						Escribir dia, " de Octubre de ", anio
					12:
						Escribir dia, " de Diciembre de ", anio
				FinSegun
			FinSi
		4,6,9:
			Si dia < 1 O dia > 30 
				Escribir "Fecha inválida"
			SiNo
				Segun mes Hacer
					4:
						Escribir dia, " de Abril de ", anio
					6:
						Escribir dia, " de Junio de ", anio
					9:
						Escribir dia, " de Septiembre de ", anio
				FinSegun
			FinSi
	FinSegun	
FinAlgoritmo
