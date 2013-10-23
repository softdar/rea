import rea.Lecture
import rea.Role
import rea.User
import rea.UserRole
import rea.content.TextContent
import rea.content.VideoContent

fixture {

	delucas(User,
		username: 'delucas',
		password: 'password'
	)
	
	teacher(Role,
		authority: 'ROLE_TEACHER')
	
	delucasTeacher(UserRole,
		user: delucas,
		role: teacher)
	
	video(VideoContent,
		title: 'Introducción',
		type: 'video',
		url: 'http://www.youtube.com/embed/cGT_YHZ7M7s',
		user: delucas
	)

	text(TextContent,
		title: 'Probabilidad: concepto básico',
		type: 'text',
		text: 'La probabilidad mide la frecuencia con la que se obtiene un resultado (o conjunto de resultados) y luego al llevar a cabo un experimento aleatorio, del que se conocen todos los resultados posibles, bajo condiciones suficientemente estables.',
		user: delucas
	)

	lecture(Lecture,
		name: 'probabilidad',
		title: 'Nociones de probabilidad',
		brief: 'Esta es una introducción breve a la probabilidad que pretende demostrar cómo funciona la plataforma básica',
		user: delucas,
		contents: [video, text]
	)

}