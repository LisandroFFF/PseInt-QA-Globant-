//Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
//almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
//debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la función
//Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.

Algoritmo tresExtra
	
	Definir cantidadNumeros,vectorDos,i como Numero
	Definir nombrePersona,vectorUno Como Cadena
	Escribir "Ingrese el tamaño de los vectores"
	Leer cantidadNumeros
	
	Dimension vectorUno[cantidadNumeros]
	Dimension vectorDos[cantidadNumeros]
	
	Para i = 0 Hasta cantidadNumeros-1 Hacer
		Escribir "Ingrese un nombre (",i+1,"/",cantidadNumeros,")"
		Leer nombrePersona
		vectorUno[i]=nombrePersona
		vectorDos[i]=Longitud(nombrePersona)
	FinPara
	
	Escribir "Nombre de la persona | Longitud de su nombre"
	Para i = 0 Hasta cantidadNumeros-1 Hacer
		Escribir vectorUno[i] ," | ", vectorDos[i]
	FinPara
FinAlgoritmo
	

