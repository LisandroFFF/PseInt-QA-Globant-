//Crear un subproceso que rellene dos arreglos de tama�o n, con n�meros aleatorios. Despu�s,
//hacer una funci�n que reciba los dos arreglos y diga si todos sus valores son iguales o no. La
//funci�n debe devolver el resultado de est� validaci�n, para mostrar el mensaje en el
//algoritmo. Nota: recordar el uso de las variables de tipo l�gico.

Algoritmo siete
	
	Definir arregloUno, arregloDos, respuestaUsuario como Numero
	
	Escribir "Ingrese la cantidad de numeros que tendra cada arreglo: "
	Leer respuestaUsuario
	
	Dimension arregloUno[respuestaUsuario]
	Dimension arregloDos[respuestaUsuario]
	
	rellenarArreglos(arregloUno,arregloDos,respuestaUsuario)
	Escribir sonIguales(arregloUno,arregloDos,respuestaUsuario)
	
FinAlgoritmo

SubProceso rellenarArreglos(arregloUno Por Referencia, arregloDos Por Referencia,respuestaUsuario Por Referencia)
	Definir i Como Numero
	
	Para i = 0 Hasta respuestaUsuario-1 Hacer
		arregloUno[i]=Aleatorio(-10,10)
	FinPara
	
	Para i = 0 Hasta respuestaUsuario-1 Hacer
		arregloDos[i]=Aleatorio(-10,10)
	FinPara

FinSubProceso

Funcion retorno = sonIguales(arregloUno Por Referencia, arregloDos Por Referencia, respuestaUsuario Por Referencia)
	Definir i Como Numero
	Definir retorno Como Logico
	retorno = Verdadero
	
	Para i = 0 Hasta respuestaUsuario-1 Hacer
		retorno = retorno Y (arregloUno[i] == arregloDos[i])
	FinPara
	
FinFuncion
	