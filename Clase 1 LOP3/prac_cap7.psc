SubAlgoritmo ingresar(n Por Referencia, a Por Referencia, costo Por Referencia)
	Mostrar "Ingrese el nombre del estufiante: " Sin Saltar
	Leer n
	Mostrar "Ingrese el area de Curso: " Sin Saltar
	Leer a
	Mostrar "Ingrese el costo total del curso: " Sin Saltar
	Leer costo
FinSubAlgoritmo

SubProceso procesarDatos(c, i Por Referencia, cm Por Referencia)
	i = c * 0.2
	cm = (c * 0.8) / 24
	Mostrar "La informacion ha sido procesada..."
FinSubProceso

SubAlgoritmo mostrarResultados(name, aC, inic, cuotMens)
	Mostrar "El area a cursar del estudiante " name " es " aC
	Mostrar "El monto inicial de este curso es: " inic " Bs"
	Mostrar "Las cutoas mensuales son: " cuotMens " Bs"
FinSubAlgoritmo

Algoritmo prac_cap7
	Definir nombre, areaCurso como Caracter
	Definir costoTotal, inicial, cuotasMensuales como Real
	
	Repetir
		mostrar "MENU DE OPCIONES"
		Mostrar "opcion 1: ingresar datos"
		Mostrar "opcion 2: procesar informacion"
		Mostrar "opcion 3: mostrar resultados finales"
		Mostrar "opcion 4: SALIR"
		Mostrar "Ingrese una opcion: " Sin Saltar
		Leer opcLeida
		Segun opcLeida hacer
			1: ingresar(nombre, areaCurso, costoTotal)
			2: procesarDatos(costoTotal, inicial, cuotasMensuales)
			3: mostrarResultados(nombre, areaCurso, inicial, cuotasMensuales)
			4: mostrar "Ud selecciono salir... Hasta pronto!!!"
			De Otro Modo:
				Mostrar "Ingreso una opcion incorrecta..."
		FinSegun
	Hasta Que opcLeida = 4
	
FinAlgoritmo
