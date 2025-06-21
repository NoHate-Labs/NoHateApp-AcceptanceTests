Feature: US36 - Seguridad de los Datos Personales
	Como usuario, quiero que la aplicación asegure todos mis datos personales con cifrado de extremo a extremo para evitar posibles filtraciones.

	Scenario: Verificación de cifrado
		Given que envío mis datos personales "<tipo_dato>" al sistema
		When los datos "<tipo_dato>" son transmitidos
		Then el sistema debe cifrar la información "<tipo_dato>" para protegerla durante el tránsito
		Examples:
			| tipo_dato |
			| email     |
			| telefono  |

	Scenario: Protección de datos en reposo
		Given que mis datos "<tipo_dato>" están almacenados en el sistema
		When realizo un acceso no autorizado a "<tipo_dato>"
		Then el sistema debe cifrar los datos "<tipo_dato>" para que no sean legibles sin las credenciales adecuadas
		Examples:
			| tipo_dato |
			| email     |
