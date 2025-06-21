Feature: US10 - Bloquear Usuario
	Como adolescente quiero bloquear a otros usuarios para evitar interacciones no deseadas.

	Scenario: Bloqueo exitoso
		Given que estoy en el perfil de un usuario "<usuario_a_bloquear>"
		When selecciono "Bloquear"
		Then el sistema debe impedir que ese usuario "<usuario_a_bloquear>" me envíe mensajes o vea mi perfil
		Examples:
			| usuario_a_bloquear |
			| acosador123        |
			| troll456           |

	Scenario: Desbloqueo
		Given que he bloqueado a un usuario "<usuario_a_desbloquear>"
		When selecciono "Desbloquear"
		Then el sistema debe restablecer la posibilidad de interacción con ese usuario "<usuario_a_desbloquear>"
		Examples:
			| usuario_a_desbloquear |
			| acosador123           |
			| troll456              |
