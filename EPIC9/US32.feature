Feature: US32 - Acceder a Guía Rápida de Uso
	Como nuevo usuario, quiero ver una guía rápida para aprender a usar la aplicación desde el inicio.

	Scenario: Mostrar guía rápida tras registro
		Given que ingreso por primera vez como "<usuario_tipo>"
		When termino el registro
		Then la aplicación muestra una guía interactiva
		Examples:
			| usuario_tipo |
			| nuevo        |

	Scenario: Volver a ver la guía rápida
		Given que ya vi la guía como "<usuario_tipo>"
		When entro a la aplicación
		Then puedo volver a verla desde el menú de ayuda
		Examples:
			| usuario_tipo |
			| recurrente   |
