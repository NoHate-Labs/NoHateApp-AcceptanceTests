Feature: US27 - Guardar Contenido como Favorito
	Como usuario, quiero guardar publicaciones que me parecen útiles o interesantes para revisarlas después.

	Scenario: Guardar publicación como favorita
		Given que veo una publicación con id "<publicacion_id>"
		When la marco como favorita
		Then aparece en mi lista de guardados
		Examples:
			| publicacion_id |
			| 201            |

	Scenario: Quitar publicación de favoritos
		Given que desmarco una publicación con id "<publicacion_id>"
		When se desactiva
		Then desaparece de mi lista
		Examples:
			| publicacion_id |
			| 201            |
