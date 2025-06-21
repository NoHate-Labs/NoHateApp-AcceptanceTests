Feature: US16 - Participar en Encuestas
	Como adulto responsable, quiero participar en encuestas para contribuir a mejorar las políticas de la aplicación.

	Scenario: Acceso a encuesta
		Given que recibo una notificación sobre una nueva encuesta de "<encuesta_tema>"
		When la abro
		Then el sistema debe mostrarme las preguntas y opciones de respuesta
		Examples:
			| encuesta_tema   |
			| seguridad       |
			| experiencia_uso |

	Scenario: Confirmación de participación
		Given que completo una encuesta de "<encuesta_tema>"
		When envío mis respuestas
		Then el sistema debe mostrar un mensaje de agradecimiento por mi participación
		Examples:
			| encuesta_tema |
			| seguridad     |
