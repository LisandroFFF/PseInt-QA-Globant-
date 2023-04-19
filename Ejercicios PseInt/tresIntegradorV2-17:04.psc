Algoritmo Ejercicio_coop3
	
	Definir usuario, contrasena, acp Como Cadena;
	Definir  login Como Logico;
	Definir intentos, menu, botella, i Como Entero
	Definir saldo, precio Como Real;
	
	saldo <- 0
	login <- Falso
	
	Escribir "Ingrese su usuario"
	Leer usuario
	
	si usuario == "Albus_D" Entonces
		intentos <- 3
		Hacer
			Escribir "Ingrese la clave correcta (tiene " intentos " intentos restantes)"
			Leer contrasena
			intentos<-intentos-1
		Mientras Que contrasena <> "caramelosDeLimon" y intentos >=1		
		Si contrasena="caramelosDeLimon" Entonces
			Escribir "Ingresando al sistema"
			login <- Verdadero
		SiNo
			Escribir "Se han agotado los 3 intentos"
		FinSi
	SiNo
		Escribir "El usuario es incorrecto"
	FinSi
	
	Mientras login == Verdadero Hacer
		Repetir
			Escribir "Bienvenido al sistema de reciclaje de botellas automatico"
			Escribir "Ingrese 1 si quiere ingresar botellas"
			Escribir "Ingrese 2 si quiere consultar su saldo"
			Escribir "Ingrese 3 si quiere salir de la aplicacion"
			Leer menu
			Segun menu Hacer
				1:
					Escribir "Ingrese el numero total de botellas que depositara"
					Leer botella
					Mientras botella < 0  Hacer
						Escribir "Ingrese un numero valido"
						Leer botella
					Fin Mientras
					Para i<-1 Hasta botella Hacer
						precio <- Aleatorio(100, 3000)						
						Escribir Sin Saltar "El precio de la botella numero ", i, " es de"						
						Si precio > 1501 Entonces							
							Escribir Sin Saltar " 200 ,"							
							precio <- 200							
						SiNo							
							Si precio <= 1500 o precio > 501 Entonces								
								Escribir Sin Saltar " 125 ,"								
								precio <- 125								
							SiNo								
								Escribir Sin Saltar " 50 ,"								
								precio <- 50								
							FinSi							
						FinSi																		
						Escribir " presione x si acepta";						
						Leer acp 																		
						si Minusculas(acp) == "x" Entonces							
							saldo <- saldo + precio							
						SiNo							
							Escribir "Devolviendo material"							
						FinSi																		
					Fin Para					
				2: 					
					Escribir "El saldo total de su cuenta es de $", saldo					
				3: 					
					Escribir "Saliendo de la aplicacion"					
					login <- Falso					
			FinSegun									
		Mientras Que (menu == 2 o menu == 1)						
	Fin Mientras
	
FinAlgoritmo

