Feature: Vinculación entre Adolescente y Adulto Responsable
Scenario: Proceso de vinculación exitoso
	Given el adulto con id "<adulto_id>" está autenticado y en la sección de vinculación
	When ingresa el código de vinculación "<codigo_vinculacion>" proporcionado por el adolescente con id "<adolescente_id>" y confirma
	Then el sistema debe establecer la relación
	And mostrar al adolescente "<adolescente_id>" en su lista de supervisión

	Examples:
		| codigo_vinculacion | adulto_id | adolescente_id |
		| ABC123             | 1         | 101            |
		| XYZ789             | 2         | 102            |

Scenario: Recepción de alertas tras la vinculación
	Given el adulto con id "<adulto_id>" ha vinculado correctamente a un adolescente con id "<adolescente_id>"
	When el adolescente "<adolescente_id>" registra una "<tipo_alerta>" o denuncia un mensaje
	Then el adulto "<adulto_id>" debe recibir una notificación o alerta dentro de la aplicación

	Examples:
		| adulto_id | adolescente_id | tipo_alerta      |
		| 1         | 101            | emoción crítica  |
		| 2         | 102            | denuncia mensaje |