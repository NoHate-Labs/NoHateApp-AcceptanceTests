Feature: US12 - Recibir Consejos Personalizados
	Como adolescente quiero recibir consejos personalizados para prevenir el cyberbullying según mi perfil.

	Scenario: Consejos para adolescentes
		Given que soy un usuario "<grupo_edad>"
		When accedo a la sección de consejos
		Then el sistema debe mostrar recomendaciones adaptadas a mi grupo de edad
		Examples:
			| grupo_edad  |
			| adolescente |

	Scenario: Consejos para adultos responsables
		Given que soy un usuario "<grupo_edad>"
		When accedo a la sección de consejos
		Then el sistema debe mostrar recomendaciones para proteger y orientar a menores
		Examples:
			| grupo_edad         |
			| adulto_responsable |
