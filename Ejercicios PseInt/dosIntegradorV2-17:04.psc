//Escribir un programa que lea un número entero y devuelva el número de dígitos que
//componen ese número. Por ejemplo, si introducimos el número 12345, el programa
//deberá devolver 5. Calcular la cantidad de dígitos matemáticamente utilizando el operador
//de división. Nota: recordar que las variables de tipo entero truncan los números o resultados.

Algoritmo dosIntegradorV2
	Definir num, i, contador como Numero

	Escribir "Por favor, ingrese un número entero:"
	Leer num
	
	Para i <- 1 Hasta Longitud(ConvertirATexto(num)) Hacer	
		contador <- contador + 1
	FinPara
	
	Escribir "El número tiene ", contador " cifras"
FinAlgoritmo
