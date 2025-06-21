Feature: US34 - Recibir Resumen Semanal de Actividad
	Como usuario, quiero recibir un resumen semanal de mis actividades para conocer mi participación en la aplicación.

	Scenario: Recibir resumen semanal
		Given que tengo activada esta opción para el usuario "<usuario>" y resumen_activado "<resumen_activado>"
		When finaliza la semana para el usuario "<usuario>"
		Then recibo un resumen con estadísticas para el usuario "<usuario>"
		Examples:
			| usuario  | resumen_activado |
			| usuario1 | sí               |

	Scenario: Desactivar resumen semanal
		Given que no quiero recibirlo para el usuario "<usuario>"
		When quiero detener el envío de resúmenes a mi cuenta para el usuario "<usuario>"
		Then puedo desactivar esta opción desde la configuración para el usuario "<usuario>" y resumen_activado "<resumen_activado>"
		Examples:
			| usuario  | resumen_activado |
			| usuario1 | no               |
