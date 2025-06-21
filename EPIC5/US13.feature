Feature: US13 - Ver Historial de Denuncias
	Como adulto responsable, quiero ver el historial de denuncias que he realizado para hacer seguimiento a cada caso.

	Scenario: Visualización de historial
		Given que accedo a mi perfil como "<usuario>"
		When selecciono "Historial de Denuncias"
		Then el sistema debe mostrar una lista de todas las denuncias realizadas "<denuncias_realizadas>" con su estado actual
		Examples:
			| usuario            | denuncias_realizadas |
			| adulto_responsable | 3                    |

	Scenario: Sin denuncias previas
		Given que "<usuario>" no ha realizado denuncias
		When accedo al historial
		Then el sistema debe mostrar un mensaje indicando que no hay denuncias registradas para "<usuario>"
		Examples:
			| usuario            | denuncias_realizadas |
			| adulto_responsable | 0                    |
