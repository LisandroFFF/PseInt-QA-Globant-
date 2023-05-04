//Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales
//repetidas. Al final el procedimiento mostrará la frase final.
//Por ejemplo:
//Entrada: "Habia una vez un barco"
//Salida: "Habi un vez n brco"
//Se marcan en rojo las repetidas sólo para explicar la consigna. Las vocales ?e?, ?i? y ?o? quedan
//al no estar repetidas.

Algoritmo nueve
	Definir frase Como Cadena
	
	Escribir "Ingrese una frase"
	Leer frase
	cantVocales(frase)
	
FinAlgoritmo

SubProceso  cantVocales(frase)
	Definir retornoA,retornoE,retornoI,retornoO,retornoU Como Entero
	retornoA <- 0
	retornoE <- 0
	retornoI <- 0
	retornoO <- 0
	retornoU <- 0
	
	Segun fraseModificada(frase) Hacer
		"a":
			retornoA <- retornoA + 1
			Si retornoA > 1 Entonces
				Escribir Sin Saltar ""
			SiNo
				Escribir Sin Saltar fraseModificada(frase)
			FinSi
		"e":
			retornoE <- retornoE + 1
			Si retornoE > 1 Entonces
				Escribir Sin Saltar ""
			SiNo
				Escribir Sin Saltar fraseModificada(frase)
			FinSi
		"i":
			retornoI <- retornoI + 1
			Si retornoI > 1 Entonces
				Escribir Sin Saltar ""
			SiNo
				Escribir Sin Saltar fraseModificada(frase)
			FinSi
		"o":
			retornoO <- retornoO + 1
			Si retornoO > 1 Entonces
				Escribir Sin Saltar ""
			SiNo
				Escribir Sin Saltar fraseModificada(frase)
			FinSi
		"u":
			retornoU <- retornoU + 1
			Si retornoU > 1 Entonces
				Escribir Sin Saltar ""
			SiNo
				Escribir Sin Saltar fraseModificada(frase)
			FinSi
	Fin Segun
	
FinSubProceso

Funcion letra <- fraseModificada(f)
	Definir i Como Entero
	Definir letra Como Caracter
	
	Para i <- 0 Hasta Longitud(f) Hacer
		letra <- Subcadena(f, i, i)
	FinPara
FinFuncion