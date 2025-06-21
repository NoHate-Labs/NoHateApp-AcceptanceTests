Feature: US35 - Rapidez de Respuesta de la Aplicación
	Como usuario, quiero que la aplicación cargue todas las secciones en menos de 3 segundos para una experiencia fluida.

	Scenario: Verificación de carga rápida
		Given que estoy en la aplicación
		When accedo a la sección "<seccion>"
		Then el sistema debe cargar la información en menos de 3 segundos
		Examples:
			| seccion |
			| inicio  |
			| perfil  |

	Scenario: Pruebas de saturación
		Given que el sistema está bajo carga alta
		When "<usuarios_simultaneos>" usuarios intentan acceder simultáneamente
		Then el sistema debe seguir cumpliendo con el tiempo de carga establecido
		Examples:
			| usuarios_simultaneos |
			| 1000                 |
