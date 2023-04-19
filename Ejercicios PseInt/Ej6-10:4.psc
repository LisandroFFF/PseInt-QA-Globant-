Algoritmo Ej6
	Definir num,numDup, i, sumaPar Como Entero
	i<-0
	sumaPar<-0
	
	Escribir "Ingrese un numero Entero"
	Leer num
	numDup <- num*2
	
	Repetir
		i <- i+1
		Si (numDup) MOD 2 == 0 Entonces
			sumaPar<-num+sumaPar
		FinSi
	Mientras Que i*2 < num 
	
	Escribir "La suma es: " sumaPar
	
FinAlgoritmo
