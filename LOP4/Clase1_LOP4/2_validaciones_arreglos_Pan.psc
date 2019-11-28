Funcion var = Fun_leerVarenRango(mensaje, a, b)
	Limpiar Pantalla
	Repetir
		Mostrar mensaje
		Leer opc
	Hasta Que (opc=a) O (opc=b)
	opc=Mayusculas(opc)
	var=opc
FinFuncion

Funcion tipoExt = FuncBuscarTipo(tamano, arreglo, loBuscado)
	tipoExt=Falso
	i=1
	Repetir
		Si arreglo[i]=loBuscado
			tipoExt=Verdadero
		Sino
			i=i+1
		FinSi
	Hasta Que (tipoExt=Verdadero) O (i>tamano)
FinFuncion

SubAlgoritmo Cargar_tipos_Pan(ArrPan por referencia, x Por Referencia)
	Definir tipoVacio como Logico
	i=1
	x=0
	Repetir
		Repetir
			Mostrar "Ingrese el " i " er tipo de pan"
			leer tipo
			tipo=Mayusculas(tipo)
			tipoVacio=(tipo="")
			Si tipoVacio
				Mostrar "Debes escribir alguna letra en el tipo de pan"			
			FinSi
		Hasta Que ~tipoVacio 
		x=x+1
		Dimension ArrPan[x]
		tipoExiste=FuncBuscarTipo(x, ArrPan, tipo)
		Si ~tipoExiste
			ArrPan[i]=tipo
			Mostrar "El " i "º tipo de pan fue cargado con EXITO!"
			i=i+1
		Sino
			Mostrar "El tipo de pan " tipo " ya estaba registrado"
			x=x-1
		FinSi
		salir=Fun_leerVarenRango("Desea continuar registrando tipos de pan? (S/N)", "S", "N")
	Hasta Que salir="S" 
FinSubAlgoritmo

SubAlgoritmo Most_datos_en_Arreglo(tamanoArr, arreglo)
	Para i=1 hasta tamanoArr
		Mostrar arreglo[i] Sin Saltar
		Si i<tamanoArr
			Mostrar " /" Sin Saltar
		FinSi	
	FinPara
FinSubAlgoritmo



Algoritmo cargar_tiposDePan
	Cargar_tipos_Pan(ArrPan, tamanoArr)
	Most_datos_en_Arreglo(tamanoArr, ArrPan)
FinAlgoritmo
