Algoritmo Simulador_Cajero
	Definir usuarios Como Caracter
	Definir contrasenas como caracter
	Definir usuario_ingresado, contrasena_ingresada Como Caracter
	Definir C, A, seleccion,intentos Como Entero
	Definir saldo, monto Como Real
	Definir historial, transacciones Como Caracter
	Definir valido Como Logico
	
	//Almacenar datos de usuario y contrase�a
	usuarios <- "SussySmith" 
	contrasenas <- "Clave_Secreta07" 
	saldos <- 3000
	historial <- ""
	intentos <- 5
	
	Escribir "Bienvenido"
	
	//M�ximo 5 intentos validos.
	Para C <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Intento ", C, " de 5"
		Escribir "Por favor ingresar su usuario:" 
		Leer usuario_ingresado
		Escribir "Por favor ingresar su contrase�a:"
		Leer contrasena_ingresada
		
		// Validar usuario y contrase�a
        Si Minusculas(usuario_ingresado) = Minusculas(usuarios) Entonces
            Si contrasena_ingresada = contrasenas Entonces
				Escribir "Acceso concedido. Bienvenido al sistema."
				saldo <- saldos
				C <- 6 //salir del ciclo para
			SiNo
				Si C = 5 Entonces
					Escribir "Sistema bloqueado. Ha excedido el n�mero de intentos."
		Sino 
			Escribir "Usuario o contrase�a incorrectos."
		FinSi
	FinSi
FinSi

FinPara
	
	//Men� cajero
Para C <- 0 Hasta 3 Hacer
		Escribir ".....MEN�....."
		Escribir "1. Depositar dinero a la cuenta."
		Escribir "2. Sacar dinero de la cuenta."
		Escribir "3. Ver saldo."
		Escribir "4. Salir."
		Escribir "Por favor ingresar una opci�n."
		Leer seleccion

		Segun seleccion Hacer
					Caso 1:
						//Deposito
							Escribir "Por favor ingrese el monto a depositar: "
							Leer monto
							Si monto >= 1000 Entonces
								monto <- monto * 0.95 //aplicar cargo del 5%
							FinSi
							saldo <- saldo + monto
							transaccion <- "Dep�sito: " + ConvertirATexto(monto) + ", saldo: " + ConvertirATexto(saldo)
							historial <- historial + transaccion + "\n"
							Escribir transaccion

							Caso 2: 
							//Retiro efectivo
							Escribir "Por favor ingrese el monto a retirar:"
							Leer monto 
							Si monto > saldo Entonces
								Escribir "Fondos insuficientes."
							SiNo Si monto MOD 1000 <> 0 entonces
									Escribir "El monto a retirar debe ser m�ltiplo de 1000"
								SiNo
									saldo <- saldo - monto
									transaccion <- "Retiro: " + ConvertirATexto(monto) + ", Saldo: "  + ConvertirATexto(saldo)
									historial <- historial + transaccion + "\n"
									Escribir transaccion
								FinSi
							FinSi
								
								Segun seleccion hacer
									caso 3:
							//Saldo e historial de transacciones.
							Escribir "Su saldo actual es: ", saldo
							Escribir "Historial de transacciones: "
							Para A <- 1 Hasta Longitud(historial) con paso 1 hacer
								Escribir Subcadena(historial, A, A) 
							FinPara
					FinSegun
							
				caso 4:
							Escribir "Gracias por usar el cajero autom�tico."
						De otro modo:
							Escribir "Opci�n no v�lida. Intente nuevamente."
					Repetir
					hasta que seleccion = 4 
			FinSegun
	Finpara
FinAlgoritmo

