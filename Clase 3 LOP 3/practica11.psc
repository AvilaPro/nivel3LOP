Funcion varEnRango <- Verificar_Valor_En_Rango (mensaje, topeInf, topeSup)
	Repetir
		Mostrar mensaje Sin Saltar
		Leer varEnRango
		Si no(varEnRango >= topeInf y varEnRango <= topeSup)
			Mostrar "Debes ingresar un valor entre " topeInf " y " topeSup
		FinSi
	Hasta Que (varEnRango >= topeInf y varEnRango <= topeSup)
FinFuncion


SubAlgoritmo cargarInformacion(n, mensaje, arreglo Por Referencia)
	Para i = 1 Hasta n
		Mostrar "Ingrese el/la "  i "° " mensaje ":" Sin Saltar
		Si (mensaje = "nota")
			variable = Verificar_Valor_En_Rango ("la nota debe estar en el rango entre 0 y 100 puntos", 0, 100)
		SiNo
			Leer variable
		FinSi 
		arreglo[i] = variable
	FinPara
FinSubAlgoritmo

Funcion porcentaje <- calcularPorcentaje(contador, total)
	Si total <> 0
		porcentaje = contador * 100 / total
	SiNo
		Mostrar "El total de la muestra no puede ser cero (0)"
	FinSi
FinFuncion

SubAlgoritmo procesarInformacion(n, nombres, notas)
	cantEstNotPerf = 0
	cantEstAprob = 0
	cantEstReprob = 0
	nombresNotaPerfecta = ""
	notaAcumuladaTodos = 0
	acumNotaNoAprob = 0
	acumNotaAprob = 0
	promedioSeccion = 0
	porcentajeAprobados = 0
	porcentajeReprobados = 0
	Para i = 1 Hasta n
		Si notas[i] = 100
			cantEstNotPerf = cantEstNotPerf + 1
			nombresNotaPerfecta = nombresNotaPerfecta + " - " + Minusculas(nombres[i])
		FinSi
		notaAcumuladaTodos = notaAcumuladaTodos + notas[i]
		Si notas[i] < 50
			cantEstReprob = cantEstReprob + 1 
			acumNotaNoAprob = acumNotaNoAprob + notas[i]
		FinSi
		Si notas[i] >= 50
			cantEstAprob = cantEstAprob + 1
			acumNotaAprob = acumNotaAprob + notas[i]
		FinSi
	FinPara
	
	promedioSeccion = notaAcumuladaTodos / n
	porcentajeAprobados = calcularPorcentaje(cantEstAprob, N)
	porcentajeReprobados = calcularPorcentaje(cantEstReprob, N)
	
	Mostrar ""
	Mostrar "La cantidad de alumnos con nota perfecta (100 pts) es: " cantEstNotPerf
	Mostrar "Sus nombres son los siguientes: " nombresNotaPerfecta
	Mostrar ""
	Mostrar "El acumulado de todas las notas de los estudiantes es: " notaAcumuladaTodos
	Mostrar ""
	Mostrar "La nota acumulada de los que no aprobaron es: " acumNotaNoAprob
	Mostrar "La nota acumulada de los que si aprobaron es: " acumNotaAprob
	Mostrar ""
	Mostrar "El promedio de notas de la seccion es: " promedioSeccion
	Mostrar "El porcentaje de aprobados es: " porcentajeAprobados
	Mostrar "El porcentaje de reprobados es: " porcentajeReprobados
FinSubAlgoritmo




Algoritmo prac_cap10_LOP3
	Definir N Como Entero
	Definir mensajeNombre, mensajeNota Como Caracter
	
	
	Mostrar "Cuantos alumnos van a ser procesados? " Sin Saltar
	Leer N
	Dimension nombres[N]
	Dimension notas[N]
	mensajeNombre = "nombre"
	mensajeNota = "nota"
	
	cargarInformacion(N, mensajeNombre, nombres)
	cargarInformacion(N, mensajeNotas, notas)
	procesarInformacion(N, nombres, notas)
FinAlgoritmo

