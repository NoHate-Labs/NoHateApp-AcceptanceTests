Feature: US23 - Personalizar Apariencia de la Aplicación
	Como usuario, quiero personalizar la apariencia de la aplicación para adaptarla a mis preferencias visuales.

	Scenario: Cambiar tema de color
		Given que estoy en la configuración de la aplicación
		When selecciono un tema de color diferente "<tema_color>"
		Then la interfaz debe actualizarse con el nuevo esquema de colores
		Examples:
			| tema_color |
			| oscuro     |
			| claro      |

	Scenario: Ajustar tamaño de fuente
		Given que deseo cambiar el tamaño del texto
		When modifico la configuración de fuente a "<tamaño_fuente>"
		Then el texto en la aplicación debe reflejar el nuevo tamaño seleccionado
		Examples:
			| tamaño_fuente |
			| grande        |
			| pequeño       |
