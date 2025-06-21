Feature: US26 - Borrar Publicaciones Propias
	Como usuario, quiero poder eliminar mis propias publicaciones si así lo deseo

	Scenario Outline: Eliminar publicación propia
		Given que veo una publicación mía con id "<publicacion_id>"
		When selecciono "Eliminar"
		Then el sistema la borra

		Examples:
			| publicacion_id |
			| 101            |

	Scenario Outline: Confirmar eliminación
		Given que confirmo la eliminación de la publicación con id "<publicacion_id>"
		When la acción se completa
		Then el contenido desaparece del sistema

		Examples:
			| publicacion_id |
			| 101            |
