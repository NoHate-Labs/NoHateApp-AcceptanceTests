Feature: US31 - Configurar Visualización de Publicaciones
	Como adolescente, quiero controlar quién puede ver mis publicaciones para sentirme más seguro.

	Scenario: Publicaciones privadas
		Given que estoy en configuración
		When selecciono "<visibilidad>"
		Then solo mis seguidores pueden ver mi contenido
		Examples:
			| visibilidad |
			| privado     |

	Scenario: Publicaciones públicas
		Given que selecciono "<visibilidad>"
		When confirmo mi opción
		Then cualquier usuario puede ver mis publicaciones
		Examples:
			| visibilidad |
			| publico     |
