Feature: US19 - Acceder a Historial de Actividad
	Como usuario, quiero acceder a mi historial de actividad para revisar mis interacciones dentro de la aplicación.

	Scenario: Visualización de historial
		Given que estoy en mi perfil como "<usuario>"
		When selecciono "Historial de Actividad"
		Then el sistema debe mostrar una lista cronológica de mis acciones, como denuncias realizadas y contenidos calificados, con un total de "<actividades>" actividades
		Examples:
			| usuario  | actividades |
			| usuario1 | 5           |

	Scenario: Historial vacío
		Given que no he realizado ninguna actividad como "<usuario>"
		When accedo al "Historial de Actividad"
		Then el sistema debe mostrar un mensaje indicando que no hay registros disponibles para "<usuario>"
		Examples:
			| usuario  | actividades |
			| usuario2 | 0           |
