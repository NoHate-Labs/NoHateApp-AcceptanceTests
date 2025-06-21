Feature: US41 - Historial de Mensajes de Acoso Denunciados
	Scenario: Visualización del historial de denuncias
		Given que el adolescente accede a la sección de historial de denuncias
		When se cargan los datos desde el sistema
		Then debe visualizar una lista de mensajes denunciados con su fecha, contenido "<tipo_contenido>", y estado actual del proceso "<estado>"
		And el contenido mostrado corresponde al mensaje reportado "<contenido>"

		Examples:
			| tipo_contenido | estado      | contenido                        |
			| texto          | en revisión | "Mensaje ofensivo recibido"      |
			| imagen         | resuelto    | "Imagen inapropiada reportada"   |

	Scenario: Protección de identidad en contenido sensible
		Given que los mensajes de acoso pueden contener datos personales
		When el sistema muestra los contenidos reportados
		Then debe ocultar los nombres de personas u otra información sensible vinculada a terceros en "<contenido_original>"
		And el contenido mostrado debe ser "<contenido_protegido>"

		Examples:
			| contenido_original                       | contenido_protegido                   |
			| "Juan dijo: eres tonto"                  | "[Nombre] dijo: eres tonto"           |
			| "Foto de María con mensaje ofensivo"     | "Foto de [Nombre] con mensaje ofensivo"|
