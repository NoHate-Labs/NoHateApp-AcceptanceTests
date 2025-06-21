Feature: US30 - Consultar a Chatbot Empático
	Como adolescente, quiero hacer preguntas al chatbot cuando me siento mal o tengo dudas.

	Scenario: Consulta al chatbot empático
		Given que abro el chatbot
		When escribo una consulta "<consulta>"
		Then recibo una respuesta empática
		Examples:
			| consulta           |
			| Me siento triste   |

	Scenario: Pregunta delicada al chatbot
		Given que hago una pregunta delicada "<consulta>"
		When el sistema lo recibe
		Then puede sugerirme hablar con un adulto responsable o profesional
		Examples:
			| consulta              |
			| Quiero hacerme daño   |
