Feature: US5 - Eliminación de Cuenta
	Como usuario, quiero eliminar mi cuenta para dejar de formar parte de la aplicación.

	Scenario: Eliminación confirmada
		Given que estoy en la configuración de mi cuenta
		When selecciono "Eliminar cuenta" y confirmo la acción
		Then el sistema debe eliminar mi cuenta y todos mis datos asociados

	Scenario: Cancelación de eliminación
		Given que estoy en el proceso de eliminación de cuenta
		When decido cancelar la acción
		Then el sistema debe mantener mi cuenta activa sin cambios
