Algoritmo Ejercicio05
	Definir frase como cadena
	Definir vector, char Como Caracter
	Definir i,posicion , posCercano, min ,distancia,countIzquierda, countDerecha Como Entero
	
	Dimension vector[20]
	
	Escribir "Ingrese frase: "
	Leer frase
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		vector[i] = Subcadena(frase,i,i)
	FinPara
	
	Escribir "Ingrese letra a ingresar"
	Leer char
	Escribir "Ingrese posicion a ingresar 0-19"
	leer posicion
	
	print(vector,20)
	Escribir " "
	
	si vector[posicion] == ' ' o vector[posicion] == ''  Entonces
		vector[posicion] = char
		print(vector,20)
	SiNo
		countDerecha = 0
		countIzquierda = 0 
		i = posicion
		Escribir vector[i]
		Mientras vector[i] <> " " y vector[i] <> "" y i <> 19  
			countDerecha = countDerecha + 1
			i = i + 1
		FinMientras
		
		i = posicion
		Mientras vector[i] <> " " y vector[i] <> "" y i <> 0
			countIzquierda = countIzquierda + 1
			i = i - 1
		FinMientras
		
		si countIzquierda < countDerecha Entonces
			//izquierda
			Para i<-0 Hasta posicion Con Paso 1 Hacer
				vector[i] = vector[i+1] 
			FinPara
		SiNo
			//derecha
			Para i<-19 Hasta posicion Con Paso -1 Hacer
				vector[i] = vector[i-1] 
			FinPara
		FinSi
		
	FinSi
	
	print(vector,20)
	Escribir ""
	vector[posicion] = char
	print(vector,20)
	
	
	
	
	
	
FinAlgoritmo

SubProceso print(arreglo, long)
	Definir i Como Entero
 	para i = 0 Hasta long-1 Con Paso 1 Hacer
		Escribir Sin Saltar "| " arreglo[i] " | "
	FinPara
FinSubProceso