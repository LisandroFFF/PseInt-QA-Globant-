Algoritmo ejCooperativo
	menu()
FinAlgoritmo

SubProceso menu()
	definir menuOpcion Como Entero
	definir aux, var Como Entero
	aux <- 1
	escribir "Hola! Bienvenido a un programa que no valida el maximo. Por favor no me presiones."
	Repetir
		var <- 1
		escribir "Ingrese opción del menú:"
		escribir "1.! Calcular muro de ladrillo"
		escribir "2.! Calcular viga de hormigón"
		escribir "3.! Calcular columnas de hormigón"
		escribir "4.! Calcular contrapisos"
		escribir "5.! Calcular techo"
		escribir "6.! Calcular pisos"
		escribir "7.! Calcular pintura"
		escribir "8.! Calcular iluminación"
		escribir "9.! Salir"
		leer menuOpcion
		Segun menuOpcion Hacer
			1: calcularMuro()
			2: calcularViga()
			3: calcularColumna()
			4: calcularContrapisos()
			5: calcularTecho()
			6: calcularPisos()
			7: calcularPintura()
			8: calcularIluminacion()
			9: aux <- 0
			De Otro Modo:
				var <- 0
				escribir "Opción incorrecta, presione una tecla para intentar de nuevo..."
				Esperar Tecla
		Fin Segun
		si var = 1 Entonces
			escribir "Opcion finalizada, presione una tecla para continuar:"
			Esperar Tecla
		FinSi
		Borrar Pantalla
	Mientras Que aux = 1
FinSubProceso

Funcion res <- calcularSuperficie(lado1,lado2)
	Definir res Como Real
	res <- lado1 * lado2
FinFuncion

Funcion res <- calcularVolumen(lado1,lado2,lado3)
	Definir res Como Real
	res <- lado1 * lado2 * lado3
FinFuncion

SubProceso calcularMuro()
	Definir espesorMuro, altoMuro, largoMuro Como Real
	Definir superficie, kgCemento, arena, ladrillos Como Real
	Escribir "Ingresa el espesor del muro : "
	Leer espesorMuro
	Mientras espesorMuro <> 20 y espesorMuro <> 30 Hacer
		Escribir "Valor de espesor no valido, ingresa un valor valido (20/30)"
		Leer espesorMuro
	FinMientras
	Escribir "Ingresa la altura del muro : "
	Leer altoMuro
	Escribir "Ingresa el largo del muro : "
	Leer largoMuro
	superficie <- calcularSuperficie(largoMuro, altoMuro)
	SI espesorMuro == 30 Entonces
		kgCemento <- 15.2 * superficie
		arena <- 0.115 * superficie
		ladrillos <- Trunc(120 * superficie) + 1
	SiNo
		kgCemento <- 10.9 * superficie
		arena <- 0.09 * superficie
		ladrillos <- Trunc(90 * superficie) + 1
	FinSi
	Escribir "El muro tiene una superficie de : " superficie " m^2"
	Escribir "Se necesitan " kgCemento " kg de cemento"
	Escribir "Se necesitan " arena " m^3 de arena"
	Escribir "Se necesitan " ladrillos " ladrillos"
FinSubProceso

subproceso calcularViga()
	Definir largo Como Real
	Escribir "Por favor ingrese el largo de la viga en metros: "
	Leer largo
	Escribir "Para " largo "m de viga va a necesitar lo siguiente: "
	Escribir "* " largo * 9 "kg de cemento"
	Escribir "* " largo * 0.02 "m3 de arena"
	Escribir "* " largo * 0.02 "m2 de piedra"
	Escribir "* " largo * 4 "m de hierro del 8"
	Escribir "* " largo * 3 "m de hierro del 8"
FinSubProceso

Subproceso calcularColumna()
	
	Definir largo, cemento, arena, piedra, hierro10, hierro4 como numero
	Escribir "Ingrese los metros de largo que necesita de columna a los fines de calcular sus materiales"
	Leer largo
	cemento <- largo * 7.5
	arena <- largo * 0.016
	piedra <- largo * 0.016
	hierro10 <- largo * 6
	hierro4 <- largo * 3
	Escribir "Para los " largo " metros que necesita de columna deberá adquirir " cemento " kg de cemento, " arena " m3 de arena, " piedra " m2 de piedra, " huierro10 " m de huerro del 10 y " hierro4 " m de hierro del 4"	
FinSubProceso

SubProceso calcularContrapisos()
	Definir espesor, ancho, largo, cubicos Como Real
	
	Escribir "Usted ha seleccionado calculo de contrapiso"
	Escribir "Por favor ingrese en METROS:"
	Escribir "1.Espesor del contrapiso"
	Leer espesor
	Escribir "2.Ancho del contrapiso"
	Leer ancho
	Escribir "3.Largo del contrapiso"
	Leer largo
	
	cubicos <- (largo * ancho) * espesor
	
	Escribir "Para hacer el contrapiso necesitas:"
	Escribir cubicos * 105, " kg de cemento"
	Escribir cubicos * 0.45, " m3 de arena"
	Escribir cubicos * 0.9, " m3 de piedra"	
FinSubProceso

SubProceso calcularTecho()
	Escribir 'Bienvenido a techosBonitos.com, ingrese numeros coherentes, no sea manco.'
	Definir techo,espesor,ancho,largo Como Real
	Definir hayUnError Como Logico
	hayUnError <- Verdadero
	Mientras (hayUnError) Hacer 
		Escribir 'Ingrese espesor del techo'
		Leer espesor
		Escribir 'Ingrese ancho del techo'
		Leer ancho
		Escribir 'Ingrese largo del techo'
		Leer largo
		hayUnError <- (largo <= 0 O ancho <= 0 O largo <= 0)
		si (hayUnError)
			Escribir 'Pone numeros bien, por favor, no me hagas laburar al pedo'
		SiNo
			hayUnError <- Falso
		FinSi
	FinMientras
	techo <- calcularvolumen(espesor,ancho,largo)
	Escribir 'Se necesita: '
	Escribir techo * 33 'kg de Cemento.'
	Escribir techo * 0.072 'm3 de arena.'
	Escribir techo * 7 'm de hierro del 8.'
	Escribir techo * 4 'm de hierro del 6.'
	Escribir 'Volviendo al menu'
	
FinSubProceso

SubProceso calcularPisos()
	Definir ancho, largo, areaPiso Como Real
	Definir respuesta como entero 
	
	Escribir "Por favor ingresa el ancho del piso que desea calcular"
	Leer ancho
	validar(ancho,0,ancho)	
	Escribir "Por favor ingrese el largo del piso que desea calcular"
	Leer largo
	validar(largo,0,largo)	
	
	areaPiso <- calcularSuperficie(ancho, largo) * 1.1

	Escribir "El area del piso que se desea construir es de: " areaPiso " m2"	
	
	Escribir "¿Desea calcular el area de otro piso?"
	Escribir "1.Sí"
	Escribir "2.No"
	Leer respuesta
	validar(ancho,0,3)	
	
	si respuesta = 1 Entonces
		calcularPisos()
	SiNo
		menu()
	FinSi
	
FinSubProceso

SubProceso calcularPintura()
	Definir superficie, totalLitros Como Real
	Escribir sin saltar "Ingrese superficie a pintar: "
	leer superficie
	validar(superficie,0,superficie)
	totalLitros <- superficie / 6
	Escribir "La cantidad de litros necesarios para cubrir " superficie "m2 es de " totalLitros "L."
FinSubProceso

SubProceso validar(num Por Referencia, min, max) 
	// Revisar, no funciona.
	Mientras num < min o num > max Hacer
		Escribir "Ingrese un mayor o igual " min " y menor o igual " max ": "
		leer num
	FinMientras
FinSubProceso

funcion CalcularIluminacion()
	definir luz, superficie como real
	Escribir "Dame la superficie a iluminar en metros cuadrados"
	leer superficie
	luz<-superficie*0.2
	Escribir "Esta es la cantidad mínima de luz natural: ", luz
FinFuncion