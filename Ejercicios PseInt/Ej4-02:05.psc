//Realizar un programa con el siguiente men� y le pregunte al usuario que quiere hacer hasta
//que ingrese la opci�n Salir:
//	A. Llenar Vector A. Este vector es de tama�o N y se debe llenar de manera aleatoria
//	usando la funci�n Aleatorio(valorMin, valorMax) de PseInt.
//	B. Llenar Vector B. Este vector tambi�n es de tama�o N y se llena de manera aleatoria.
//	C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
//a elemento. Ejemplo: C = A + B
//	D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
//elemento. Ejemplo: C = B - A
//E. Mostrar. Esta opci�n debe permitir al usuario decidir qu� vector quiere mostrar: Vector
//	A, B, o C.
//	F. Salir.
//NOTA: El rango de los n�meros aleatorios para los Vectores ser� de [-100 a 100]. La longitud
//para todos los vectores debe ser la misma, por lo tanto, esa informaci�n s�lo se solicitar� una vez.

Algoritmo cuatro
	
	Definir respuestaUsuario, respuestaMostrar Como Cadena
	Definir longitudVectores, vectorA, vectorB, vectorC, i Como Numero
	
	Hacer
		Escribir "Por favor, ingrese la longitud que tendr�n los vectores"
		Leer longitudVectores
	Hasta Que longitudVectores > 0
	
	Dimension vectorA[longitudVectores]
	Dimension vectorB[longitudVectores] 
	Dimension vectorC[longitudVectores] 

	Hacer
		Escribir "Por favor, ingrese la opci�n que desea realizar: "
		Escribir "A: Llenar Vector A."
		Escribir "B: Llenar Vector B."
		Escribir "C: Llenar Vector C con la suma de los vectores A y B."
		Escribir "D: Llenar Vector C con la resta de los vectores B y A."
		Escribir "E: Mostrar."
		Escribir "F. Salir."
		Leer respuestaUsuario
		
		Segun Mayusculas(respuestaUsuario) Hacer
			"A":
				Para i = 0 Hasta (longitudVectores-1) Hacer
					vectorA[i] = Aleatorio(-100,100)
				FinPara
			"B":
				Para i = 0 Hasta (longitudVectores-1) Hacer
					vectorB[i] = Aleatorio(-100,100)
				FinPara
			"C":
				Para i = 0 Hasta (longitudVectores-1) Hacer
					vectorC[i] = vectorA[i] + vectorB[i]
				FinPara
			"D":
				Para i = 0 Hasta (longitudVectores-1) Hacer
					vectorC[i] = vectorB[i] - vectorA[i]
				FinPara
			"E":
				Hacer
					Escribir "Por favor, ingrese el vector que desea mostrar."
					Escribir "A: Muestra el vector A lleno."
					Escribir "B: Muestra el vector B lleno."
					Escribir "C: Muestra el vector C lleno."
					Leer respuestaMostrar
				Hasta Que Mayusculas(respuestaMostrar) == "A" O Mayusculas(respuestaMostrar) == "B" O Mayusculas(respuestaMostrar) == "C"
				Si Mayusculas(respuestaMostrar) == "A" Entonces
					Para i = 0 Hasta (longitudVectores-1) Hacer
						Escribir Sin Saltar vectorA[i] " "
					FinPara
					Escribir " "
				FinSi
				Si Mayusculas(respuestaMostrar) == "B" Entonces
					Para i = 0 Hasta (longitudVectores-1) Hacer
						Escribir Sin Saltar vectorB[i] " "
					FinPara
					Escribir " "
				FinSi
				Si Mayusculas(respuestaMostrar) == "C" Entonces
					Para i = 0 Hasta (longitudVectores-1) Hacer
						Escribir Sin Saltar vectorC[i] " "
					FinPara
					Escribir " "
				FinSi
			"F":
				Escribir "Muchas gracias por utilizar el servicio"
			De Otro Modo:
				Escribir "Respuesta incorrecta, ingrese una opci�n v�lida"
		Fin Segun
	Mientras Que Mayusculas(respuestaUsuario) <> "F"
FinAlgoritmo
