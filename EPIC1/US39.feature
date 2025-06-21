Feature: US39 - Consumo Eficiente de Batería
	Como usuario, quiero que la app consuma poca batería para poder usarla por más tiempo.

	Scenario: Bajo consumo de batería
		Given que uso la aplicación por "<tiempo_uso_min>" minutos
		When reviso el consumo de batería en los ajustes del teléfono
		Then el impacto en la batería es bajo
		Examples:
			| tiempo_uso_min |
			| 30             |

	Scenario: Sugerencia de optimización
		Given que detecto "<consumo_bateria>" consumo
		When la aplicación usa más batería de lo normal
		Then el sistema sugiere ajustes para optimizar
		Examples:
			| consumo_bateria |
			| alto            |
