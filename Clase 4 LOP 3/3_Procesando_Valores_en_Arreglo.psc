//Cargar un arreglo con las notas de N estudiantes y luego.
//Calcular el promedio de notas de la seccion.
//Determinar la menor notay mostrar las posiciones donde se encontroy cuantas veces.
//Determinar la mayor nota y mostrar las posiciones donde se encontro y cuantas veces.

//Declaracion de Funciones

Funcion mayor_nota <- Func_Ident_Mayor(N, notas)
	Definir posicion como entero
	posicion=2
	mayor_nota=notas[1]
	Para posicion=2 hasta N
		Si notas[posicion] > mayor_nota
			mayor_nota=notas[posicion]
		FinSi
	FinPara
FinFuncion

Funcion menor_nota <- Func_Ident_Menor(N, notas)
	Definir posicion como entero
	posicion=2
	menor_nota=notas[1]
	Para posicion=2 hasta N
		Si notas[posicion] < menor_nota
			menor_nota=notas[posicion]
		FinSi
	FinPara
FinFuncion

Funcion promedio <- calcularPromedioArreglo(arreglo, tamanoArreglo)
	promedio=0
	Para i=1 hasta tamanoArreglo
		promedio=promedio+arreglo[i]
	FinPara
	promedio=promedio/tamanoArreglo
FinFuncion

//Declaracion de Modulos Reusables

SubAlgoritmo solicitarNumeroDeDatos(mensaje, n Por Referencia)
	Mostrar "Ingrese en numero de " mensaje " a ser procesados: "
	Leer n
FinSubAlgoritmo

SubAlgoritmo cargarDatosArreglo(mensaje, tamano, arreglo Por Referencia)
	Para i=1 hasta tamano
		Mostrar mensaje i "º"
		Leer arreglo[i]
	FinPara
FinSubAlgoritmo

//Este subproceso muestra la posicion donde se encuantra la coincidencia y cuantas veces se repitio en el arreglo
SubAlgoritmo mostrarPosiciones(mensaje1, mensaje2, datoAEncontrar, arreglo, tamanoArreglo, cantRepetida Por referencia)
	cantRepetida=0
	Mostrar "Las posiciones donde se encuentra " Sin Saltar
	Mostrar mensaje1 " " datoAEncontrar ")."
	Para i=1 hasta tamanoArreglo
		Si arreglo[i]=datoAEncontrar
			Mostrar "Posicion " i " de " tamanoArreglo
			cantRepetida=cantRepetida+1
		FinSi
	FinPara
	Mostrar ""
	Mostrar cantRepetida mensaje2	
FinSubAlgoritmo
//Algoritmo Principal

Algoritmo procesando_arreglos
	Definir N, nota_mayor, nota_menor, cantEstMayNota, cantEstMenNota Como Entero
	Definir  mensaje1, mensaje2 Como Caracter
	Definir promedioNotas como Real
	
	mensaje1="notas"
	mensaje2="Ingrese la nota "
	mensaje3= "la mayor nota ("
	mensaje4=" alumnos obtuvieron la mayor nota"
	mensaje5="la menor nota ("
	mensaje6=" alumnos obtuvieron la menor nota"
	solicitarNumeroDeDatos(mensaje1, N)
	
	Dimension notas[N]
	Definir notas como real
	
	cargarDatosArreglo(mensaje2, N, notas)
	
	promedioNotas = calcularPromedioArreglo(notas, N)
	
	nota_mayor = Func_Ident_Mayor(N, notas)
	nota_menor = Func_Ident_Menor(N, notas)
	
	mostrarPosiciones(mensaje3, mensaje4, nota_mayor, notas, N, cantEstMayNota)
	mostrarPosiciones(mensaje5, mensaje6, nota_menor, notas, N, cantEstMenNota)
FinAlgoritmo
