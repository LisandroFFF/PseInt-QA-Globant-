//Escribir un programa que lea un n�mero entero y devuelva el n�mero de d�gitos que
//componen ese n�mero. Por ejemplo, si introducimos el n�mero 12345, el programa
//deber� devolver 5. Calcular la cantidad de d�gitos matem�ticamente utilizando el operador
//de divisi�n. Nota: recordar que las variables de tipo entero truncan los n�meros o resultados.

Algoritmo dosIntegradorV2
	Definir num, i, contador como Numero

	Escribir "Por favor, ingrese un n�mero entero:"
	Leer num
	
	Para i <- 1 Hasta Longitud(ConvertirATexto(num)) Hacer	
		contador <- contador + 1
	FinPara
	
	Escribir "El n�mero tiene ", contador " cifras"
FinAlgoritmo
