Algoritmo ej_7V3
	definir matriz como entero
	dimension matriz[7,6]
	
	llenarMatriz(matriz)
	mostrarMatriz(matriz)
FinAlgoritmo

SubProceso llenarMatriz(matriz)
	definir i,j, totalPS, totalDia Como Entero
	
	para i<-0 hasta 6 Hacer
		totalPS=0
		
		para j<-0 hasta 5 Hacer
			si i<=4 y j<=4 Entonces
				matriz[i,j]<-Aleatorio(1,9)
				totalPS=totalPS+matriz[i,j]
			SiNo
				si j=5 y i<=4 Entonces
					matriz[i,j]=totalPS
					
				SiNo
					si i=6 Entonces
						matriz[i,j]=0
					FinSi
					
				FinSi
				
			FinSi
		FinPara
	FinPara
	
	para i<-0 hasta 5 Hacer
		totalDia=0
		para j<-0 hasta 5 Hacer
			si i<=4 y j<=4 Entonces
				totalDia=totalDia+matriz[i,j]
				
			SiNo
				si i=5 y j<=4 Entonces
					matriz[i,j]=totalDia
					//				SiNo
					//					si j=5 y i=5 Entonces
					//						matriz[i,j]=0
					//					FinSi
				FinSi
			FinSi
			
		FinPara
		
	FinPara
	
	
FinSubProceso

SubProceso mostrarMatriz(matriz)
	definir i,j como entero
	para i<-0 hasta 6 hacer
		para j<-0 hasta 5 hacer
			Escribir Sin Saltar "[" matriz[i,j] "] "
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso