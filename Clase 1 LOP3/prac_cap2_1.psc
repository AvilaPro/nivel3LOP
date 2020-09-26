SubAlgoritmo capturarNombre(a)
	Mostrar "Ingresa tu nombre: " Sin Saltar
	Leer a
	Limpiar Pantalla
	Mostrar "Ahora calcularemos sus notas promedio " a
FinSubAlgoritmo
SubProceso obtenerNotas(n1, n2, n3, pr)
	Mostrar "A continuacion ingrese sus notas: " 
	Mostrar "Ingrese su primera nota: " Sin Saltar
	Leer n1
	Mostrar "Ingrese su segunda nota: " Sin Saltar
	Leer n2
	Mostrar "Ingrese su tercera nota: " Sin saltar
	Leer n3
	pr = (n1 + n2 + n3)/3
	Mostrar "Su nota promedio es: " pr "/20"
FinSubProceso
SubProceso despedir()
	Mostrar "Hasta luego..."
FinSubProceso


Algoritmo Prac_cap2_1_LOP3
	Definir nombre Como Caracter
	Definir nota1, nota2, nota3, promedio Como Real
	
	capturarNombre(nombre)
	obtenerNotas(nota1, nota2, nota3, promedio)
	despedir()
FinAlgoritmo
