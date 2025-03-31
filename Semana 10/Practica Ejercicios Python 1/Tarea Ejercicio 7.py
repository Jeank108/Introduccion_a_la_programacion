precio_regular = 3000 #cada una
descuento = 0.60 #%

print("Por favor ingrese las barras vendidas no frescas:")
barras_vendidas = int(input())

precio_descuento = precio_regular * (1 - descuento)
costo_total = barras_vendidas * precio_descuento

print(f"Precio regular de una barra de pan: ₡{precio_regular}")
print(f"Descuento aplicado por no ser fresca: {descuento * 100}%")
print(f"Costo total final: ₡{costo_total:.2f}")

