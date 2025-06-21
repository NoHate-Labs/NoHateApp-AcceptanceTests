Feature: US11 - Acceder a Chat de Ayuda
	Como adulto responsable, quiero acceder a un chat de ayuda para recibir soporte en situaciones de ciberacoso.

	Scenario: Inicio de chat
		Given que estoy en la sección de ayuda como "<usuario_tipo>"
		When selecciono "Chat de Ayuda"
		Then el sistema debe abrir una ventana de chat con un asesor disponible
		Examples:
			| usuario_tipo        |
			| adulto_responsable  |

	Scenario: Sin asesores disponibles
		Given que intento iniciar un chat de ayuda como "<usuario_tipo>"
		When selecciono la opción y no hay asesores disponibles
		Then el sistema debe mostrar un mensaje indicando que intente más tarde o que envíe un mensaje por correo
		Examples:
			| usuario_tipo        |
			| adulto_responsable  |
