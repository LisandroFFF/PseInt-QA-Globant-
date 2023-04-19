Algoritmo Correccion_Mientras
	Definir num Como Real
		//El programa ingresará números mientras sean PARES, Escribir "Ingrese un número"
	Leer num
	
	Mientras num MOD 2 == 0 Y num <> 0 Hacer
		Escribir "Escribiste un par, probá nuevamente"
		leer num
	FinMientras
	
	Escribir "Felicitaciones, escribiste un impar!"
	
FinAlgoritmo
