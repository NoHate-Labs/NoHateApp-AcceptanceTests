Feature: US28 - Reportar Errores de la App
	Como usuario, quiero poder reportar fallos en el funcionamiento de la app para que se solucionen.

	Scenario: Reportar error de la app
		Given que encuentro un error
		When lo describo en el formulario de reporte con "<error_descripcion>"
		Then el sistema lo registra
		Examples:
			| error_descripcion |
			| no_carga_pantalla |

	Scenario: Validación de campos en reporte
		Given que no lleno todos los campos como por ejemplo "<error_descripcion>"
		When intento enviar el reporte
		Then el sistema me indica que debe completarse todo
		Examples:
			| error_descripcion |
			|                   |
