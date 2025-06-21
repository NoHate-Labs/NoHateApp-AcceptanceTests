Feature: US14 - Configurar Privacidad del Perfil
	Como adolescente, quiero configurar la privacidad de mi perfil para controlar quién puede ver mi información.

	Scenario: Perfil privado
		Given que estoy en la configuración de privacidad
		When selecciono "<privacidad>"
		Then el sistema debe restringir el acceso a mi perfil solo a mis contactos aprobados
		Examples:
			| privacidad |
			| privado    |

	Scenario: Perfil público
		Given que estoy en la configuración de privacidad
		When selecciono "<privacidad>"
		Then el sistema debe permitir que cualquier usuario vea mi perfil
		Examples:
			| privacidad |
			| publico    |
