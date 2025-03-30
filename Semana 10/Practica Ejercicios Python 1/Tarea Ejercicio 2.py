print("Por favor ingresar su peso en kg:")
peso = float(input())

print("Por favor ingresar su estatura en mts:")
estatura = float(input())

imc = peso / (estatura ** 2)
print(f"Su Índice de Masa Corporal (IMC) es: {imc:.2f}")