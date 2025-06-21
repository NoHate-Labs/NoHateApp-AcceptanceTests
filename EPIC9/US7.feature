Feature: US7 - Acceder a Recursos Educativos
	Como adolescente quiero acceder a recursos educativos sobre ciberacoso para informarme y prevenir situaciones de riesgo.

		Scenario: Acceso a recursos
			Given que estoy en la sección de recursos
			When selecciono el tema "<tema>"
			Then el sistema debe mostrar el contenido educativo correspondiente
			Examples:
				| tema           |
				| prevención     |
				| tipos de acoso |

		Scenario: Recursos no disponibles
			Given que selecciono el tema "<tema>" para el cual no hay recursos disponibles
			When intento acceder
			Then el sistema debe mostrar un mensaje indicando que no hay contenido
			Examples:
				| tema              |
				| deepfake          |
				| grooming avanzado |

