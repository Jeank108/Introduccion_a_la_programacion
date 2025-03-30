print("Por Favor ingresar cantidad de horas trabajadas:")
horaslaboradas = float(input())

print("Por favor ingresar el costo por hora:")
costoporhora = float(input())

salario = horaslaboradas * costoporhora
print(f"El salario correspondiente es: ${salario:.2f}")