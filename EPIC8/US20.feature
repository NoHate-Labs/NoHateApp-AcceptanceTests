Feature: US20 - Reporte de Problemas Técnicos
	Como usuario, quiero reportar problemas técnicos para que el equipo de soporte pueda solucionarlos oportunamente.

	Scenario: Envío de reporte
		Given que he encontrado un problema técnico "<problema>"
		When completo el formulario de reporte con "<detalle>" y lo envío
		Then el sistema debe confirmar la recepción del reporte "<confirmacion>"

		Examples:
			| problema                | detalle                                 | confirmacion                   |
			| Error al iniciar sesión | No puedo acceder con mis credenciales   | Reporte recibido correctamente |
			| Pantalla en blanco      | La aplicación no carga después de login | Reporte recibido correctamente |

	Scenario: Seguimiento de reporte
		Given que he enviado un reporte "<reporteId>"
		When accedo a la sección de soporte
		Then el sistema debe mostrar el estado actual del reporte "<estado>"

		Examples:
			| reporteId | estado      |
			| 12345     | En revisión |
			| 67890     | Resuelto    |
