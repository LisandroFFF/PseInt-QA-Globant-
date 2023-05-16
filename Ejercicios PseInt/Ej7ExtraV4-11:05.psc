Algoritmo ejercicio_extra_7
	Definir matriz, matrizFinal Como Entero
	Dimension matriz[5, 5]
	Dimension matrizFinal[7, 6]
	crearMatrizProductos(matriz)
	crearMatrizFinal(matriz, matrizFinal)
	mostrarTabla(matrizFinal)
FinAlgoritmo

SubProceso crearMatrizProductos(matriz)
	Definir i, j, num Como Entero
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			Segun j Hacer
				0:
					Escribir "Cual es valor del producto ", ConvertirATexto(i + 1), " el dia Lunes?"
					Leer num
					matriz[i, j] = num
				1:
					Escribir "Cual es valor del producto ", ConvertirATexto(i + 1), " el dia Martes?"
					Leer num
					matriz[i, j] = num
				2:
					Escribir "Cual es valor del producto ", ConvertirATexto(i + 1), " el dia Miercoles?"
					Leer num
					matriz[i, j] = num
				3:
					Escribir "Cual es valor del producto ", ConvertirATexto(i + 1), " el dia Jueves?"
					Leer num
					matriz[i, j] = num
				4:
					Escribir "Cual es valor del producto ", ConvertirATexto(i + 1), " el dia Viernes?"
					Leer num
					matriz[i, j] = num
				De Otro Modo:
			Fin Segun
		Fin Para
	Fin Para
FinSubProceso

SubProceso crearMatrizFinal(matriz, matrizFinal)
	Definir i, j Como Entero
	Para i<-0 Hasta 6 Con Paso 1 Hacer
		Para j<-0 Hasta 5 Con Paso 1 Hacer
			Si i <= 4 y j <= 4 Entonces
				matrizFinal[i, j] = matriz[i, j]
			SiNo
				Si i > 4 y j <= 4 Entonces
					Si i == 5 Entonces
						matrizFinal[i, j] = totalVentaPorDia(matriz, j)
					SiNo
						matrizFinal[i, j] = productoMasVendidoPorDia(matriz, j) 
					FinSi
				SiNo
					Si i <= 4 y j > 4 Entonces
						matrizFinal[i, j] = totalProductoSemanal(matriz, i)
					SiNo
						Si i == 5 y j > 4 Entonces
							matrizFinal[i, j] = totalSemanal(matrizFinal, i)
						SiNo
							matrizFinal[i, j] = 0
						FinSi
					FinSi
				FinSi
			FinSi
		Fin Para
	Fin Para
FinSubProceso

Funcion totalDia <- totalVentaPorDia(matriz, dia)
	Definir i, j, totalDia Como Entero
	totalDia = 0
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		totalDia = totalDia + matriz[i, dia]
	Fin Para
FinFuncion

Funcion resultado <- productoMasVendidoPorDia(matriz, dia)
	Definir i, j, producto, resultado Como Entero
	producto = matriz[0, dia]
	resultado = 0
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Si i > 0 y matriz[i, dia] >= producto Entonces
			producto = matriz[i, dia]
			resultado = i
		FinSi
	Fin Para
FinFuncion

Funcion total <- totalProductoSemanal(matriz, fila)
	Definir i, j, total Como Entero
	total = 0
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		total = total + matriz[fila, i]
	Fin Para
FinFuncion

Funcion total <- totalSemanal(matriz, fila)
	Definir i, j, total Como Entero
	total = 0
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		total = total + matriz[fila, i]
	Fin Para
FinFuncion

SubProceso mostrarTabla(matrizFinal)
	Definir i, j Como Entero
	Escribir "                         Lunes ------ Martes ---- Miercoles - Jueves - Viernes - Total producto" 
	Para i<-0 Hasta 6 Con Paso 1 Hacer
		Si i <= 4 Entonces
			Escribir "Producto ", ConvertirATexto(i + 1) Sin Saltar "                  "
		SiNo
			Si i == 5 Entonces
				Escribir Sin Saltar "Total semana                "
			SiNo
				Escribir Sin Saltar "Producto mas vendido        " 
			FinSi
		FinSi
		Para j<-0 Hasta 5 Con Paso 1 Hacer
			Escribir Sin Saltar matrizFinal[i, j] "           "
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso
