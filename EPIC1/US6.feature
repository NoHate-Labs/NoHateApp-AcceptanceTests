Feature: US6 - Visualizar estadísticas personales
	Como usuario, quiero ver estadísticas sobre mis actividades en la aplicación para monitorear mi participación.

	Scenario: Visualización de estadísticas
		Given que accedo a la sección de estadísticas
		When selecciono un rango de fechas desde "<fecha_inicio>" hasta "<fecha_fin>"
		Then el sistema debe mostrar gráficos con el número y tipo de mis interacciones
		Examples:
			| fecha_inicio | fecha_fin  |
			| 2024-01-01   | 2024-01-31 |
			| 2024-02-01   | 2024-02-28 |

	Scenario: Sin actividades registradas
		Given que no he realizado actividades en el rango de fechas seleccionado
		When accedo a las estadísticas
		Then el sistema debe mostrar un mensaje indicando que no hay datos disponibles