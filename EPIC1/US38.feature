Feature: US38 - Disponibilidad del Sistema
	Como usuario, quiero que la aplicación esté disponible el 99.9% del tiempo para poder acceder cuando lo necesite.

	Scenario: Acceso en cualquier momento
		Given que accedo en cualquier momento a la hora "<hora_acceso>"
		When ingrese a la aplicación de madrugada
		Then el sistema está activo salvo por mantenimientos programados
		Examples:
			| hora_acceso |
			| 03:00       |

	Scenario: Manejo de caídas
		Given que ocurre una "<tipo_evento>"
		When deseo ingresar con urgencia
		Then el sistema la reporta y se restablece en un tiempo máximo de 30 minutos
		Examples:
			| tipo_evento |
			| caída       |
