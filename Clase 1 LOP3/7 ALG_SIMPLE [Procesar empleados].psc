Algoritmo Procesar_Empleados
	Definir cant_empl como entero 
	Definir cant_muj_may50,cant_homb como entero
	Definir acum_suel_may30 como real
	cant_empl=0
	cant_muj_may50=0
	cant_homb=0
	acum_suel_may30=0
	Repetir
		cant_empl=cant_empl+1
		Mostrar "Ingrese sexo (F/M), edad de la persona y sueldo" 
		Leer sexo,edad,sueldo
		sexo=Mayusculas(sexo)
		Si sexo="F" Y edad>50
			entonces cant_muj_may50=cant_muj_may50+1
		FinSi
		Si sexo="M"
			entonces cant_homb=cant_homb+1
		FinSi
		Si edad>30
			entonces acum_suel_may30=acum_suel_may30+sueldo
		FinSi
		Mostrar "Para interrumpir el procesamiento ingrese N"
		Leer Respuesta
	Hasta Que Mayusculas(Respuesta)="N"
	Mostrar "Cantidad de mujeres mayores de 50: " cant_muj_may50
	Mostrar "Cantidad de hombres: " cant_homb
	Mostrar "Cantidad de empleados en la empresa " cant_empl
	Mostrar "El acumulado de sueldos de todos los empleados de más de 30 años es: " acum_suel_may30
FinAlgoritmo
