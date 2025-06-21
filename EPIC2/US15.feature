Feature: US15 - Recibir notificación de Seguridad
	Como usuario, quiero recibir notificaciones sobre actividades sospechosas en mi cuenta para tomar acciones inmediatas.

	Scenario: Notificación de inicio de sesión desconocido
		Given que se detecta un "<evento>" desde un dispositivo no reconocido
		When se activa la función
		Then el sistema debe enviarme una notificación alertándome de la actividad
		Examples:
			| evento                    |
			| inicio_sesion_desconocido |

	Scenario: Notificación de intento de cambio de contraseña
		Given que se intenta "<evento>"
		When se activa la función
		Then el sistema debe enviarme una notificación para confirmar si fui yo quien realizó la acción
		Examples:
			| evento                    |
			| cambio_mi_contraseña      |
