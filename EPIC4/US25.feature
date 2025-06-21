Feature: US25 - Filtrar Contenido por Categoría
	Como usuario, quiero filtrar publicaciones por categorías como educación, opinión o noticia.

	Scenario: Filtrar publicaciones por categoría
		Given que estoy en la sección de contenido
		When selecciono la categoría "<categoria>"
		Then veo solo publicaciones de esa categoría
		Examples:
			| categoria |
			| educación |
			| opinión   |

	Scenario: Sin publicaciones en la categoría
		Given que no hay publicaciones en la categoría "<categoria>"
		When la selecciono
		Then el sistema me lo indica
		Examples:
			| categoria |
			| noticia   |
