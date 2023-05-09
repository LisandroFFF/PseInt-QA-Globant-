Algoritmo ej6V2Luis
	Definir vector, frase, caract Como Caracter
	Definir position Como Entero
	Dimension vector[20]
	
	Escribir "Ingrese una frase: "
	leer frase
	validarFrase(frase, 20)
	
	ingresarFrase(vector, frase)
	Escribir mostrarVector(vector, 20)
	
	
	Escribir "Ingrese un caracter a agregar:"
	leer caract
	validarFrase(caract, 1)
	
	Escribir "Ingrese la posicion: "
	leer position
	
	ingresarCaracter2(vector, caract, position,20)
	Escribir mostrarVector(vector, 20) 
	
FinAlgoritmo


SubProceso validarFrase(text Por Referencia, n)
	Mientras  Longitud(text) > n Hacer
		Escribir "La frase es mayor a " n " caracteres."
		Escribir "Ingrese una frase: "
		leer text 
	FinMientras
FinSubProceso

SubProceso IngresarFrase(vec, text)
	Definir i Como Entero
	Para i = 0 Hasta 19 Hacer
		vec[i] =Subcadena(text,i,i)
	Fin Para
FinSubProceso

funcion retorno <- mostrarVector(vec, largo)
	definir retorno Como Caracter
	definir i Como Entero
	para i = 0 hasta largo-1 Hacer
		si i = 0 Entonces
			retorno = vec[0]
		SiNo
			retorno = Concatenar(retorno, Concatenar(",", vec[i])) 
		FinSi
	FinPara
FinFuncion

SubProceso ingresarCaracter(vec, char, pos)
	
	si vec[pos] = "" o vec[pos] = " " Entonces
		vec[Pos] = char
		Escribir "Caracter ingresado correctamente"
	sino
		Escribir "No se pudo ingresar el caracter (" char ") en la posicion " pos "."
	FinSi
FinSubProceso

SubProceso ingresarCaracter2(vec, char, pos, n)
	Definir banderaAnt, banderaPost como logico
	Definir posAnt, posPost, contAnt, contPost, i Como Entero
	Definir auxiliar, caracterPrevio Como Caracter
	banderaAnt = Verdadero
	banderaPost = Verdadero
	contAnt = 0
	contPost = 0
	posAnt = pos-1
	posPost = pos+1
	
	mientras banderaAnt y posAnt >= 0
		si vec[posAnt] = " " o vec[posAnt] = "" Entonces
			banderaAnt = Falso
		FinSi
		contAnt = contAnt + 1
		posAnt = posAnt - 1
	FinMientras
	
	si banderaAnt Entonces
		contAnt = 21
	FinSi
	
	mientras banderaPost y posPost <= n-1
		si vec[posPost] = " " o vec[posPost] = "" Entonces
			banderaPost = Falso
		FinSi
		contPost = contPost + 1
		posPost = posPost + 1
	FinMientras
	
	si banderaPost Entonces
		contPost = 21
	FinSi
	
	si contAnt > contPost Entonces
		desplazar(vec, pos, n-1, char)
	SiNo
		desplazar(vec, pos, 0, char)
	FinSi
FinSubProceso

SubProceso desplazar(vec, pos, n, char)
	Definir auxiliar, caracterPrevio Como Caracter
	definir i como entero
	para i = pos Hasta n Hacer
		si i = pos Entonces
			caracterPrevio = vec[i]
			vec[i] = char
		sino 
			auxiliar = vec[i]
			vec[i] = caracterPrevio
			caracterPrevio = auxiliar 
		FinSi
	FinPara
FinSubProceso