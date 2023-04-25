//Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra
//una cadena con un espacio adicional tras cada letra.
//Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use
//dicho procedimiento.

Algoritmo cinco
	Definir text Como Caracter
	Escribir  "ingrese una frase "
	leer text
	convertirEspaciado(text)
	
FinAlgoritmo

SubProceso convertirEspaciado (text1)
	
	definir longitude, i Como Entero
	longitude<-longitud (text1)
	
	Para i<-0 Hasta longitude Con Paso 1 Hacer
		
		Escribir Sin Saltar subcadena(text1,i,i), " "
	Fin Para
	
FinSubProceso