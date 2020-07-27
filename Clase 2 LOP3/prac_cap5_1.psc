SubAlgoritmo capturarNombre(i, a Por Referencia)
	Mostrar "Ingrese el " i "º nombre: "Sin Saltar
	Leer a
	//Limpiar Pantalla
	Mostrar "Ahora calcularemos su nota promedio " a
FinSubAlgoritmo 
SubProceso obtenerNotas(i, name Por Valor, n1 Por Referencia , n2 Por Referencia, n3 Por Referencia)
	Mostrar "A continuacion ingrese las notas del " i "º: "
	Mostrar "Ingrese su primera nota: " Sin Saltar
	Leer n1
	Mostrar "Ingrese su segunda nota. " Sin Saltar
	Leer n2
	Mostrar "Ingrese su tercer nota" Sin Saltar
	Leer n3
	Mostrar "Su nota promedio es: " pr "/20"
FinSubProceso
SubAlgoritmo calcularPromedio(n1, n2, n3, prom por Referencia)
	prom = (n1 + n2 + n3)/3
FinSubAlgoritmo
SubProceso despedir(i, nombre, promedio)
	Mostrar "Hasta luego " nombre
	Mostrar "Su nota promedio del " i "º estudiante es: " promedio "/20"
FinSubProceso
Algoritmo prac_cap_2_1
	Definir nombre Como Caracter
	Definir nota1, nota2, nota3, promedio Como Real
	
	Para i=1 hasta 3
		capturarNombre(i, nombre)
		obtenerNotas(i, nombre, nota1, nota2, nota3)
		calcularPromedio(nota1, nota2, nota3, promedio)
		despedir(i, nombre, promedio)
	FinPara
	
	
FinAlgoritmo
