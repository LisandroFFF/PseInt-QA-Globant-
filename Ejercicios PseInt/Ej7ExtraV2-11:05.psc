Algoritmo ej_7V2
	definir matriz como entero
	dimension matriz[7,6]
	
	llenarMatriz(matriz)
	mostrarMatriz(matriz)
FinAlgoritmo

SubProceso llenarMatriz(matriz)
	definir i,j, totalProductoSemana, auxSumaC Como Entero
	
	para i<-0 hasta 6 Hacer
		totalProductoSemana=0
		auxSumaC=0
		para j<-0 hasta 5 Hacer
			si i<=4 y j<=4 Entonces
				matriz[i,j]<-Aleatorio(0,20)
				totalProductoSemana=totalProductoSemana+matriz[i,j]
				//auxSumaC= auxSumaC+matriz[j,i]
			FinSi
			si j=5 y i<=4 Entonces
				matriz[i,j]=totalProductoSemana
			FinSi
//			Si i=5 y j<=4 Entonces
//				matriz[j,i]=auxSumaC
//			FinSi
//			si i=6 Entonces
//				matriz[i,j]=0
//			FinSi
//			si j=5 Entonces
//				matriz[i,j]=0
//			FinSi
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