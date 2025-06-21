Feature: US22 - Ver Contenido en Modo Sin Conexión
	Como usuario, quiero acceder a contenido previamente descargado sin conexión a internet para continuar aprendiendo en cualquier lugar.

	Scenario: Descargar contenido
		Given que estoy conectado a internet
		When selecciono la opción de descargar un artículo "<articulo>"
		Then el sistema debe almacenarlo localmente para acceso sin conexión
		Examples:
			| articulo   |
			| prevencion |
			| guia_uso   |

	Scenario: Acceder al contenido descargado
		Given que estoy sin conexión
		When accedo a la sección de contenido descargado y selecciono el artículo "<articulo>"
		Then el sistema debe permitirme leer los artículos previamente guardados
		Examples:
			| articulo   |
			| prevencion |
