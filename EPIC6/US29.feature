Feature: US29 - Ver Recursos de Ayuda Emocional
	Como adolescente, quiero acceder fácilmente a contenido que me ayude a sentirme mejor o saber qué hacer.

	Scenario: Acceso a recursos de ayuda emocional
		Given que accedo a la sección de recursos
		When selecciono un tema "<tema>"
		Then se muestra información útil
		Examples:
			| tema       |
			| ansiedad   |
			| autoestima |

	Scenario: Sin conexión al abrir recurso
		Given que no tengo conexión
		When intento abrir un recurso "<tema>"
		Then el sistema me lo indica
		Examples:
			| tema     |
			| ansiedad |
