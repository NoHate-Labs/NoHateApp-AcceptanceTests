Feature: US8 - Participar en Foros de Discusión
	Como adulto responsable, quiero participar en foros para compartir consejos sobre el ciberacoso.

	Scenario: Publicación en foro
		Given que estoy en un foro
		When escribo y publico un mensaje "<mensaje>"
		Then el sistema debe mostrar mi aporte y permitir respuestas de otros usuarios
		Examples:
			| mensaje                     |
			| Consejos para padres        |
			| Cómo actuar ante el acoso   |

	Scenario: Responder a mensajes
		Given que estoy leyendo un mensaje en el foro
		When escribo mi respuesta "<respuesta>"
		Then el sistema debe agregar mi comentario al hilo de discusión
		Examples:
			| respuesta                    |
			| Gracias por la información   |
			| Estoy de acuerdo             |
