Feature: US37 - Optimización para Dispositivos Móviles
	Como usuario, quiero que la aplicación esté optimizada para dispositivos móviles, permitiendo un uso fluido sin consumir demasiados recursos.

	Scenario: Diseño responsivo
		Given que estoy usando la aplicación en un dispositivo móvil "<dispositivo>"
		When navego por diferentes secciones
		Then el diseño debe adaptarse adecuadamente a la pantalla, manteniendo la usabilidad
		Examples:
			| dispositivo |
			| android     |
			| iphone      |

	Scenario: Consumo de recursos
		Given que utilizo la aplicación durante largos periodos de "<tiempo_uso_min>" minutos
		When monitorizo el uso de la batería de mi dispositivo
		Then la aplicación debe consumir recursos mínimos para preservar la vida útil de la batería
		Examples:
			| tiempo_uso_min |
			| 60             |
