Feature: US17 - Acceder a Recursos de Apoyo
	Como adulto responsable, quiero acceder a recursos de apoyo de la aplicación, como foros de ayuda en línea, asesores psicológicos, etc., para obtener asistencia adicional en casos de cyberbullying.

	Scenario: Visualización de recursos
		Given que estoy en la sección de ayuda
		When selecciono "<recurso>"
		Then el sistema debe mostrarme una lista de funciones de apoyo de la aplicación
		Examples:
			| recurso            |
			| foro_ayuda         |
			| asesor_psicologico |

	Scenario: Filtrar recursos por nombre
		Given que estoy en la sección de ayuda
		When filtro los recursos por nombre "<filtro>"
		Then el sistema debe mostrarme las opciones que incluyan la palabra escrita
		Examples:
			| filtro    |
			| foro      |
			| psicologo |
