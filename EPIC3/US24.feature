Feature: US24 - Recibir Alertas de Contenido Potencialmente Ofensivo
	Como usuario, quiero recibir alertas cuando se detecte contenido potencialmente ofensivo en las redes sociales para estar informado y tomar decisiones adecuadas.

	Scenario: Alerta en tiempo real
		Given que estoy navegando por contenido "<tipo_contenido>"
		When se detecta lenguaje ofensivo en "<tipo_contenido>"
		Then el sistema debe mostrar una alerta indicando la naturaleza del contenido "<tipo_contenido>"
		Examples:
			| tipo_contenido |
			| insulto        |
			| amenaza        |

	Scenario: Resumen de alertas
		Given que deseo revisar alertas anteriores con cantidad "<cantidad_alertas>"
		When accedo a la sección de alertas
		Then el sistema debe mostrar un historial de las alertas recibidas con cantidad "<cantidad_alertas>"
		Examples:
			| cantidad_alertas |
			| 5                |
			| 0                |
