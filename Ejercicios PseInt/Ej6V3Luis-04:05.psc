Algoritmo Ej6V3Luis
	Definir vector, frase, caract Como Caracter
	Definir position Como Entero
	Dimension vector[20]
	
	Escribir "Ingrese una frase: "
	leer frase
	validarFrase(frase, 20)
	
	ingresarFrase(vector, frase)
	Escribir mostrarVector(vector, 20)
	Escribir "|0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|"
	
	
	Escribir "Ingrese un caracter a agregar:"
	leer caract
	validarFrase(caract, 1)
	
	Escribir "Ingrese la posicion: "
	leer position
	
	ingresarCaracter2(vector, caract, position,20)
	Escribir mostrarVector(vector, 20) 
	Escribir "|0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|"
	
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
		si i <10 Entonces
			vec[i] = Subcadena(text,i,i)
			si Subcadena(text,i,i) = "" Entonces
				vec[i] = " "
			FinSi
		SiNo
			vec[i] = Concatenar(" ",Subcadena(text,i,i))
			si Subcadena(text,i,i) = "" Entonces
				vec[i] = "  "
			FinSi
		FinSi
	Fin Para
FinSubProceso

funcion retorno <- mostrarVector(vec, largo)
	definir retorno Como Caracter
	definir i Como Entero
	para i = 0 hasta largo-1 Hacer
		si i = 0 Entonces
			retorno = concatenar( "|",vec[0])
		SiNo
			retorno = Concatenar(retorno, Concatenar("|", vec[i])) 
		FinSi
	FinPara
	retorno = Concatenar(retorno, "|")
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
		si vec[posAnt] = " " o vec[posAnt] = "  " Entonces
			banderaAnt = Falso
		FinSi
		contAnt = contAnt + 1
		posAnt = posAnt - 1
	FinMientras
	
	si banderaAnt Entonces
		contAnt = 21
	FinSi
	
	mientras banderaPost y posPost <= n-1
		si vec[posPost] = " " o vec[posPost] = "  " Entonces
			banderaPost = Falso
		FinSi
		contPost = contPost + 1
		posPost = posPost + 1
	FinMientras
	
	si banderaPost Entonces
		contPost = 21
	FinSi
	
	si contAnt > contPost Entonces
		para i = pos Hasta n-1 Hacer
			si i = pos Entonces
				caracterPrevio = vec[i]
				si i >= 10 Entonces
					vec[i] = Concatenar(" ",char)
				SiNo
					vec[i] = char
				FinSi
			sino 
				auxiliar = vec[i]
				si i = 10 Entonces
					vec[i] = Concatenar(" ",caracterPrevio)
				SiNo
					vec[i] = caracterPrevio
				FinSi
				caracterPrevio = auxiliar 
			FinSi
		FinPara
	SiNo
		para i = pos Hasta 0 Hacer
			si i = pos Entonces
				caracterPrevio = vec[i]
				si i >= 10 Entonces
					vec[i] = Concatenar(" ",char)
				SiNo
					vec[i] = char
				FinSi
				
			sino 
				auxiliar = vec[i]
				si i = 9 Entonces
					vec[i] = Subcadena(caracterPrevio,1,1)
				sino
					vec[i] = caracterPrevio
				FinSi
				caracterPrevio = auxiliar 
			FinSi
		FinPara
	FinSi
	
	//	si vec[pos] = "" o vec[pos] = " " Entonces
	//		vec[Pos] = char
	//		Escribir "Caracter ingresado correctamente"
	//	sino
	//		Escribir "No se pudo ingresar el caracter (" char ") en la posicion " pos "."
	//	FinSi
FinSubProceso