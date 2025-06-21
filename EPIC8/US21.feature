Feature: US21 - Acceder a Preguntas Frecuentes
	Como usuario, quiero acceder a una sección de preguntas frecuentes para resolver dudas comunes de manera rápida.

	Scenario: Visualización de FAQ
		Given que estoy en la sección de ayuda
		When selecciono "<categoria>"
		Then el sistema debe mostrar una lista de preguntas y respuestas organizadas por categorías
		Examples:
			| categoria  |
			| seguridad  |
			| privacidad |

	Scenario: Búsqueda en FAQ
		Given que estoy en la sección de preguntas frecuentes
		When utilizo la barra de búsqueda e ingreso "<termino_busqueda>"
		Then el sistema debe mostrar las preguntas relacionadas con ese término
		Examples:
			| termino_busqueda |
			| contraseña       |
			| denuncia         |
