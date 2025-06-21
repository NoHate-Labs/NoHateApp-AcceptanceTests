Feature: US18 - Configurar Preferencias de Idioma
	Como usuario, quiero configurar mis preferencias de idioma para utilizar la aplicación en el idioma de mi elección.

	Scenario: Cambio de idioma exitoso
		Given que estoy en la configuración de la aplicación
		When selecciono un idioma diferente "<idioma>"
		Then el sistema debe actualizar la interfaz al idioma seleccionado "<idioma>"
		Examples:
			| idioma  |
			| ingles  |
			| frances |

	Scenario: Idioma no disponible
		Given que intento seleccionar un idioma no disponible "<idioma>"
		When solicito el cambio
		Then el sistema debe mostrar un mensaje indicando que el idioma no es funcional por el momento "<idioma>"
		Examples:
			| idioma  |
			| japones |
