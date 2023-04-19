Algoritmo ciclista
	Definir hh, mm, ss, tViaje, stViaje, hhLlegada, mmLlegada, ssLlegada Como Real
	Escribir "Hora de partida:"
	Leer hh
	Escribir "Minutos de partida:"
	Leer mm
	Escribir "Segundos de partida:"
	Leer ss
	Escribir "Tiempo de viaje:"
	Leer tViaje
	stViaje <- (hh*3600)+(mm*60)+ss+tViaje
	hhLlegada <- Trunc(stViaje/3600)
	mmLlegada <- Trunc((stViaje-hhLlegada*3600)/60)
	ssLLegada <- stViaje - (mmLlegada*60) - (hhLlegada*3600)
	Escribir hhLlegada,":" mmLlegada,":" ssLLegada
FinAlgoritmo
