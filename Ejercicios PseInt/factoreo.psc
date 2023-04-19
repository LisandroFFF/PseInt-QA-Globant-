Algoritmo sin_titulo
	
//	La función factorial se aplica a números enteros positivos. El factorial de un número
//	entero positivo (!n) es igual al producto de los enteros positivos desde 1 hasta n:
//	n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
//	Escriba un programa que calcule las factoriales de todos los números enteros desde el 1
//	hasta el 5. El programa deberá mostrar la siguiente salida:
//	!1 = 1
//	!2 = 1*2 = 2
//	...
//	!5 = 1*2*3*4*5 = 120

	Definir num, num2, i, j, multi como numero
	Definir factor como caracter
	
		
	Escribir "Ingresar número"
	
	Leer num
	
	Si num<0 Entonces
		num=abs(num)
	FinSi
	
	Escribir "La función factorial del número seleccionado es"
	factor = ""
	Para i = 1 hasta num Hacer
		
		multi=1
		
		Para j = 1 hasta i
			
			multi = multi * j
			
			Si j < i Entonces
				factor = Concatenar(factor, Concatenar(ConvertirATexto(j), "*"))
			Sino
				factor = Concatenar(factor, Concatenar(ConvertirATexto(j), " "))
			FinSi
				
		FinPara
		
		Escribir "!" i "=" factor "=" multi
		
		factor = ""
		
	FinPara
	
	
	

FinAlgoritmo
