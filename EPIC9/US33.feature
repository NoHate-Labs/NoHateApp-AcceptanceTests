Feature: US33 - Compartir Contenido en Redes Sociales
	Como adulto responsable, quiero compartir publicaciones educativas en otras redes para crear conciencia.

	Scenario: Compartir publicación en redes sociales
		Given que veo una publicación
		When presiono "Compartir"
		Then el sistema ofrece opciones de red social "<red_social>"
		Examples:
			| red_social |
			| facebook   |
			| twitter    |

	Scenario: No compartir publicación privada
		Given que una publicación es "<visibilidad>"
		When entro a las opciones
		Then la opción de compartir no aparece
		Examples:
			| visibilidad |
			| privado     |
