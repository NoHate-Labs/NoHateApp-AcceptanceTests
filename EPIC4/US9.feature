Feature: US9 - Configurar Notificaciones
	Como usuario, quiero configurar mis preferencias de notificación para recibir alertas relevantes.

	Scenario: Activar notificaciones
		Given que estoy en la configuración de notificaciones
		When activo las alertas para nuevas publicaciones
		Then el sistema debe enviarme notificaciones cuando se publiquen nuevos contenidos

	Scenario: Desactivar notificaciones
		Given que estoy en la configuración de notificaciones
		When desactivo las alertas para mensajes directos
		Then el sistema debe dejar de enviarme notificaciones por ese concepto
