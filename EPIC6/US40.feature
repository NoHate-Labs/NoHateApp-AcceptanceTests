Feature: US40 - Registro de Estado de Ánimo diario
	Como adolescente registrado, quiero registrar cómo me siento cada día mediante una escala visual o emotiva, para llevar un control de mis emociones y que el adulto responsable pueda detectar cambios preocupantes.

	Scenario: Registro exitoso del estado de ánimo
		Given que el adolescente está autenticado y accede a la pantalla de emociones
		When selecciona una emoción de la escala visual o emotiva "<emoción>" y presiona “Guardar”
		Then el sistema debe registrar el estado de ánimo con la fecha y hora actuales

	Scenario: Comentario adicional y visualización por el adulto
		Given que el adolescente ha registrado su estado de ánimo "<emoción>" con un comentario opcional "<comentario>"
		When el adulto responsable vinculado accede a la sección de historial emocional
		Then el sistema debe mostrarle los registros con fecha, emoción seleccionada y comentario si lo hubiera

	Examples:
		| emoción  | comentario         |
		| feliz    | "Buen día"         |
		| triste   | "Me siento solo"   |
		| enojado  | ""                 |
