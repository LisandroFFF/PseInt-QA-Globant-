Algoritmo Ej5
	Definir num, i, sumaPar,iPar,iImpar, sumaImpar Como Entero
	i=0
	sumaImpar=0
	sumaPar=0
	Ipar=0
	iImpar=0
	
	
	Repetir
		Escribir "Ingrese un numero Entero"
		Leer num
		i=i+1
		Si num MOD 2 ==0 Entonces
			sumaPar=num+sumaPar
			Ipar=Ipar+1
		Sino sumaImpar=num+sumaImpar
			iImpar=iImpar+1
		FinSi
	Mientras Que i< 10 
	Escribir " La suma de los numeros Pares es de " sumaPar " La suma de los numeros Impares es de " sumaImpar
	Escribir " El promedio de los numeros Pares es de " sumaPar/Ipar " El promedio de los numeros Impares es de " sumaImpar/iImpar 
FinAlgoritmo
