peso_payasos = 112 #gramos
peso_munecas = 75 #gramos

print("Por favor ingresar el número de payasos vendidos en el último pedido:")
num_payasos = int(input())

print("Por favor ingresar el número de las muñecas vendidas en el último pedido:")
num_munecas = int(input())

peso_total = (num_payasos * peso_payasos) + (num_munecas * peso_munecas)
print(f"El peso total del paquete es: {peso_total} gramos ({peso_total / 1000:.2f} kg)")

