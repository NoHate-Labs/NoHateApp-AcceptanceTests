Feature: US2 - Iniciar Sesión
	Como usuario registrado, quiero iniciar sesión en mi cuenta para acceder a las funcionalidades de la aplicación.

	Scenario: Bienvenida personalizada
		Given que estoy en la página de inicio de sesión
		When ingreso mi correo "<correo>" y contraseña "<contraseña>"
		Then el sistema me recibe con un mensaje de bienvenida
		Examples:
			| correo              | contraseña  |
			| gilbert@mail.com    | pass123     |
			| usuario@ejemplo.com | claveSegura |

	Scenario: Contraseña incorrecta
		Given que no recuerdo mi contraseña
		When selecciono "Olvidé mi contraseña"
		Then el sistema me envía un enlace para restablecer mi contraseña