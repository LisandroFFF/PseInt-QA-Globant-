Funcion retorno <- sonImpares (num)
	Definir retorno Como Logico
	Definir aux Como entero
	
	aux <- num
	retorno <- Verdadero
	
	Mientras aux > 1 Hacer
		si trunc(aux%10) % 2 == 0 Entonces
			retorno <- Falso
		FinSi
		aux <- TRUNC(aux/10)
	FinMientras
FinFuncion

Algoritmo onceV2
	Definir num Como Entero
	
	Escribir "Ingrese un numero"
	Leer num
	
	Si sonImpares(num) Entonces
		Escribir "Son impares"
	SiNo
		Escribir "Hay pares"
	FinSi
	
FinAlgoritmo
