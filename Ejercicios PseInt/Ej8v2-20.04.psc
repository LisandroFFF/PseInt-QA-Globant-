//Crear una función llamada "Login", que recibe un nombre de usuario y una contraseña y que
//devuelve Verdadero si el nombre de usuario es "usuario1" y si la contraseña es "asdasd".
//Además, la función calculara el número de intentos que se ha usado para loguearse, tenemos
//solo 3 intentos, si nos quedamos sin intentos la función devolverá Falso.

Algoritmo ocho
	
	Escribir Login()
FinAlgoritmo

Funcion rta <- Login()
	Definir rta Como Logico
	Definir usuario, contrasena como Cadena
	Definir contador Como Entero
	
	contador <- 0
	
	Hacer 
		Escribir "Por favor, ingrese su usuario:"
		Leer usuario
		Escribir "Por favor, ingrese su contrasena:"
		Leer contrasena
		Si usuario == "usuario1" Y contrasena == "asdasd" Entonces
			rta <- Verdadero
			Escribir rta, ", ha ingresado al sistema"
		SiNo
			rta <- Falso
			Escribir "Su usuario o contraseña son inválidos"
			contador <- contador + 1
		FinSi
	Hasta Que (contador == 3) O (rta == Verdadero)
	
	Si rta == Falso Entonces
		Escribir rta, ", se ha quedado sin intentos, el ingreso al sistema es denegado."
	FinSi
	
FinFuncion
