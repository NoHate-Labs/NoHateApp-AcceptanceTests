Feature: US4 - Edición de Perfil
	Como usuario, quiero editar mi perfil para mantener mi información actualizada.

	Scenario: Edición exitosa
		Given que estoy en mi perfil
		When modifico mi "<campo>" a "<valor_nuevo>" y guardo los cambios
		Then el sistema debe actualizar mi información y mostrar un mensaje de confirmación
		Examples:
			| campo    | valor_nuevo |
			| nombre   | Gilbert     |
			| telefono | 123456789   |

	Scenario: Validación de campos
		Given que ingreso "<valor_invalido>" en el campo "<campo>"
		When intento guardar los cambios
		Then el sistema debe mostrar un mensaje de error indicando el problema
		Examples:
			| campo    | valor_invalido |
			| email    | gilbert@       |
			| telefono | abcdefg        |
