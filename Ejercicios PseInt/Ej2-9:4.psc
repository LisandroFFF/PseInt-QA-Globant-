Algoritmo Correccion_Mientras
	Definir num Como Real
		//El programa ingresar� n�meros mientras sean PARES, Escribir "Ingrese un n�mero"
	Leer num
	
	Mientras num MOD 2 == 0 Y num <> 0 Hacer
		Escribir "Escribiste un par, prob� nuevamente"
		leer num
	FinMientras
	
	Escribir "Felicitaciones, escribiste un impar!"
	
FinAlgoritmo
