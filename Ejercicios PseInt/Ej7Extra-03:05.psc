//Programe una función que calcule el producto de un arreglo de números enteros. Para esto
//imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es
//igual a (V[1]*V[2]*V[3]*V[4])

Algoritmo sieteExtra
	Definir vector,i,respuestaUsuario, numeroUsuario como Numero
	
	Escribir "Ingrese la cantidad de valores que tendra su vector"
	Leer respuestaUsuario
	Dimension vector[respuestaUsuario]
	
	Para i = 0 Hasta respuestaUsuario-1 Hacer
		Escribir "Ingrese el numero que desea multiplicar por los " respuestaUsuario-i-1 " numeros restantes"
		Leer numeroUsuario
		vector[i]= numeroUsuario
	FinPara
	
	Escribir "El producto de los " respuestaUsuario " numeros ingresados es: " calcularProducto(vector,respuestaUsuario)
	
FinAlgoritmo

Funcion producto = calcularProducto(vector,respuestaUsuario)
	Definir i,producto como Numero
	producto = 1
	Para i = 0 Hasta respuestaUsuario-1 Hacer
		producto = producto * vector[i]
	FinPara
FinFuncion
	