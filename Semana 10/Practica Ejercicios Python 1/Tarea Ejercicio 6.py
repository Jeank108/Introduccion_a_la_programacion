usuario = "Smith2025"
tasa_interes = 4 / 100  # 4% anual

print("Por favor ingrese su usuario:")
usuario = str(input())

print("Por favor ingresar monto a depositar en la cuenta de ahorros:")
deposito = float(input())

ahorro_1 = deposito * (1 + tasa_interes)
ahorro_2 = ahorro_1 * (1 + tasa_interes)
ahorro_3 = ahorro_2 * (1 + tasa_interes)
        
print(f"Ahorros después de 1 año: ${ahorro_1:.2f}")
print(f"Ahorros después de 2 años: ${ahorro_2:.2f}")
print(f"Ahorros después de 3 años: ${ahorro_3:.2f}")



