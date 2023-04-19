Algoritmo tresIntegrador
	
	Definir usuario, pass, rtaOferta Como Caracter
	Definir login Como Logico
	Definir contador, rta, rtaBot, i, pesoBot, dinero, saldo como Entero
	
	Escribir "Ingrese su usuario: "
	Leer usuario
	login <- Falso	
	
	Si usuario == "Albus_D" Entonces
		Mientras contador < 3 Y login <> Verdadero Hacer
			contador <- contador + 1
			Escribir "Ingrese su contraseña: "
			Leer pass
			Si pass == "caramelosDeLimon" Entonces
				login <- Verdadero
				contador <- 3
				Escribir "Ha ingresado al sistema"
			SiNo
				Escribir "Contraseña incorrecta"
				Si contador == 3
					Escribir "Ha agotado la cantidad máxima de intentos posibles"
				FinSi
			FinSi
		FinMientras
	SiNo
		Escribir "Usuario incorrecto"
	FinSi
	
	Si login == Verdadero Y usuario == "Albus_D" Entonces
		Hacer
			Escribir " "
			Escribir "Bienvenido al menú de opciones."
			Escribir "Seleccione 1, 2 o 3 según la operación que desea realizar:"
			Escribir "1. Ingresar botellas"
			Escribir "2. Consultar saldo"
			Escribir "3. Salir"
			Leer rta
			
			Si rta == 1 Entonces
				Escribir "¿Cuántas botellas desea ingresar al sistema?"
				Leer rtaBot
				Para i <- 1 Hasta rtaBot Hacer
					pesoBot <- Aleatorio(100,3000)
					Si pesoBot < 500 Entonces
						dinero <- dinero + 50
					SiNo
						Si pesoBot > 500 Y pesoBot < 1500 Entonces
							dinero <- dinero + 125
						SiNo
							dinero <- dinero + 200
						FinSi
						
					FinSi
				FinPara
				Escribir "Se le ofrece $" dinero " por las " rtaBot " botellas ingresadas."
				Escribir "¿Desea aceptar la suma ofrecida? s/n"
				Leer rtaOferta
				Si Minusculas(rtaOferta) == "s" Entonces
					saldo <- saldo + dinero
				SiNo
					Escribir "Devolviendo material"
				FinSi
				dinero <- 0
			FinSi
			Si rta == 2 Entonces
				Escribir "El saldo de su cuenta es de $", saldo
			FinSi
		Hasta Que rta == 3
		
		Escribir "Muchas gracias por utilizar el sistema"
		login <- Falso
	FinSi

FinAlgoritmo
