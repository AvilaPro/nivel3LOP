SubAlgoritmo capturarNombre()
	Mostrar "Ingresa tu nombre: " Sin Saltar
	Leer nombre
	Limpiar Pantalla
	Mostrar "Ahora calcularemos sus notas promedio " nombre
FinSubAlgoritmo
SubProceso obtenerNotas()
	Mostrar "A continuacion ingrese sus notas: " 
	Mostrar "Ingrese su primera nota: " Sin Saltar
	Leer nota1
	Mostrar "Ingrese su segunda nota: " Sin Saltar
	Leer nota2
	Mostrar "Ingrese su tercera nota: " Sin saltar
	Leer nota3
	promedio = (nota1 + nota2 + nota3)/3
	Mostrar "Su nota promedio es: " promedio "/20"
FinSubProceso
SubProceso despedir()
	Mostrar "Hasta luego..."
FinSubProceso


Algoritmo Prac_cap1_LOP3
	Definir nombre Como Caracter
	Definir nota1, nota2, nota3, promedio Como Real
	
	capturarNombre()
	obtenerNotas()
	despedir()
FinAlgoritmo
