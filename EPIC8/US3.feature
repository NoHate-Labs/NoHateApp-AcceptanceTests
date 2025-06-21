Feature: US3 - Reportar casos de cyberbullying
	Como adolescente, quiero reportar casos de cyberbullying que veo en redes sociales para que los especialistas puedan intervenir y prevenir riesgos.

	Scenario: Reporte exitoso
		Given que estoy usando la aplicación
		When selecciono un "<tipo_acoso>" y subo la evidencia "<evidencia>"
		Then el sistema debe registrar mi denuncia de forma anónima
		Examples:
			| tipo_acoso | evidencia    |
			| insultos   | captura1.png |
			| amenazas   | audio1.mp3   |

	Scenario: Reporte no válido
		Given que estoy usando la aplicación
		When intento enviar un reporte con tipo de acoso "<tipo_acoso>" y evidencia "<evidencia>"
		Then el sistema debe mostrar un mensaje de error indicando que se requieren ambos campos para registrar la denuncia
		Examples:
			| tipo_acoso | evidencia    |
			|            | captura2.png |
			| insultos   |              |
