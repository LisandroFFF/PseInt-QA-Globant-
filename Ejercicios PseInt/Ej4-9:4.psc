Algoritmo sin_titulo
	Definir suerte Como Entero
	suerte <- trunc(Aleatorio(1, 14215))
	
	Escribir suerte
	Si suerte MOD 2 == 0 Entonces
		Escribir "Pausita"
	SiNo
		Escribir "Pala"
	FinSi
FinAlgoritmo
