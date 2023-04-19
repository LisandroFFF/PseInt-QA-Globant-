Algoritmo Tres
	Definir mts, cms, mms, pgs Como Real
	Escribir "Ingrese la cantidad de metros a convertir: "
	Leer mts
	cms <- mts * 100
	mms <- mts * 1000
	pgs <- cms / 2.54
	Escribir mts " metros equivale a ", cms, " centimetros"
	Escribir mts " metros equivale a ", mms, " milimetros"
	Escribir mts " metros equivale a ", pgs, " pulgadas"
FinAlgoritmo