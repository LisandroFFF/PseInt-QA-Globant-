//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
//primo o no. Un número es primo cuando es divisible sólo por 1 y por sí mismo, por ejemplo: 2,
//3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.

Algoritmo cinco
	definir num Como Entero
	definir primo Como logico
	definir var Como Caracter
	Escribir "ingrese un numero"
	leer num
	primo<-prim(num)
	si primo == verdadero Entonces
		escribir "es primo"
	SiNo
		escribir "no es primo"
	FinSi
	
	
FinAlgoritmo

funcion retorno<-prim(numer)
	Definir retorno Como logico
	definir contador, i Como Entero
	contador<-0
	si numer<2 entonces 
		retorno<-Falso
	SiNo
		para i<-1 hasta numer Hacer
			si numer mod i == 0 Entonces
				contador<-contador+1
			FinSi
		FinPara
		si contador == 2 Entonces
			retorno<-Verdadero
		SiNo
			retorno<-Falso
		FinSi
	FinSi
	
FinFuncion