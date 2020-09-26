SubAlgoritmo capturarNombre(a Por Referencia)
	Mostrar "Ingresa tu nombre: " Sin Saltar
	Leer a
	Limpiar Pantalla
	Mostrar "Ahora calcularemos sus notas promedio " a
FinSubAlgoritmo

SubProceso obtenerNotas(name Por Valor, n1 Por Referencia, n2 Por Referencia, n3 Por Referencia)
	Mostrar "A continuacion ingrese sus notas " name ":" 
	Mostrar "Ingrese su primera nota: " Sin Saltar
	Leer n1
	Mostrar "Ingrese su segunda nota: " Sin Saltar
	Leer n2
	Mostrar "Ingrese su tercera nota: " Sin saltar
	Leer n3
FinSubProceso

SubAlgoritmo calcularPromedio(n1, n2, n3, prom Por Referencia)
	prom = (n1 + n2 + n3)/3
FinSubAlgoritmo

SubProceso despedir(nombre, promedio)
	Limpiar Pantalla
	Mostrar "Hasta luego " nombre 
	Mostrar "Su nota promedio es: " promedio "/20"
FinSubProceso


Algoritmo Prac_cap3_1_LOP3
	Definir nombre Como Caracter
	Definir nota1, nota2, nota3, promedio Como Real
	
	capturarNombre(nombre)
	obtenerNotas(nombre, nota1, nota2, nota3)
	calcularPromedio(nota1, nota2, nota3, promedio)
	despedir(nombre, promedio)
FinAlgoritmo
