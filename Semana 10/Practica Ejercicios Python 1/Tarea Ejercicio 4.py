print("Por favor ingrese la cantidad de inversión:")
inversion = float(input())

print("Por favor ingrese la tasa de interés anual:")
interes = float(input())

print("Por favor ingrese el número de años:")
anios = int(input())

capital_final = inversion * (1 + interes / 100) ** anios
print(f"El capital obtenido después de {anios} años será: ${capital_final:.2f}")