//Crea una funci�n EsMultiplo que reciba los dos n�meros pasados por el usuario, validando
//que el primer n�mero sea m�ltiplo del segundo y devuelva verdadero si el primer n�mero es
//	m�ltiplo del segundo, sino es m�ltiplo que devuelva falso.

Algoritmo tres
	Definir num1, num2 Como Numero
	Escribir "Por favor, ingrese dos n�meros:"
	Leer num1, num2 
	Escribir "Es " EsMultiplo(num1, num2) " que el primer n�mero es m�ltiplo del segundo"

FinAlgoritmo

Funcion rta <- EsMultiplo(num1, num2)
	Definir rta Como Logico
	Si num1 MOD num2 == 0 Entonces
		rta <- Verdadero
	SiNo
		rta <- Falso
	FinSi
FinFuncion
