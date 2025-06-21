Feature: US1 - Registro de Usuario
	Como nuevo usuario, quiero registrarme en la aplicación para acceder a herramientas de denuncia y prevención del cyberbullying.

	Scenario: Registro exitoso
		Given que estoy en el formulario de registro
		When ingreso un Nombre "<nombre>", Apellido Paterno "<apellido_paterno>", Apellido Materno "<apellido_materno>", Correo electrónico "<correo>", Contraseña "<contraseña>", Fecha de Nacimiento "<fecha_nacimiento>" válidos y presiono "Registrarse"
		Then el sistema debe crear mi cuenta y ofrecerme una guía de inicio rápido
		Examples:
			| nombre  | apellido_paterno | apellido_materno | correo           | contraseña  | fecha_nacimiento |
			| Gilbert | Pérez            | López            | gilbert@mail.com | pass123     | 2000-05-10       |
			| Ana     | Torres           | Ramírez          | ana@mail.com     | claveSegura | 2002-11-23       |

	Scenario: Registro fallido por correo ya registrado
		Given que estoy en el formulario de registro
		When ingreso un correo electrónico "<correo>" que ya existe y presiono "Registrarse"
		Then el sistema debe mostrar un mensaje de error indicando que el correo ya está en uso y sugerir iniciar sesión o recuperar contraseña
		Examples:
			| correo           |
			| gilbert@mail.com |
			| admin@mail.com   |

	Scenario: Registro fallido por campos obligatorios vacíos
		Given que estoy en el formulario de registro
		When dejo uno o más campos obligatorios vacíos: Nombre "<nombre>", Apellido Paterno "<apellido_paterno>", Apellido Materno "<apellido_materno>", Correo "<correo>", Contraseña "<contraseña>", Fecha de Nacimiento "<fecha_nacimiento>" y presiono "Registrarse"
		Then el sistema debe mostrar un mensaje de error indicando los campos que faltan completar
		Examples:
			| nombre  | apellido_paterno | apellido_materno | correo           | contraseña  | fecha_nacimiento |
			|         | Pérez            | López            | gilbert@mail.com | pass123     | 2000-05-10       |
			| Ana     |                  | Ramírez          | ana@mail.com     | claveSegura | 2002-11-23       |
			| Gilbert | Pérez            | López            |                  | pass123     | 2000-05-10       |

	Scenario: Registro con Google
		Given que estoy en el formulario de registro
		When selecciono "Registrate con Google"
		Then el sistema debe iniciar el proceso de autenticación con Google y crear la cuenta si es exitoso

	Scenario: Acceso a inicio de sesión desde registro
		Given que estoy en el formulario de registro
		When selecciono "¿Ya tienes una cuenta? Inicia Sesión"
		Then el sistema debe mostrar la pantalla de inicio de sesión
