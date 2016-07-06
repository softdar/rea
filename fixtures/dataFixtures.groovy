import rea.Lecture
import rea.Role
import rea.User
import rea.UserRole
import rea.content.EPLContent
import rea.content.TextContent
import rea.content.VideoContent
import rea.content.ImageContent

fixture {

    delucas(User,
            username: 'delucas',
            password: 'password'
    )

    hernan(User,
            username: 'mavromou',
            password: 'seguridad'
    )
	
	softdar(User,
		username: 'softdar',
		password: 'pwd-softdar'
	)

    teacher(Role,
            authority: 'ROLE_TEACHER')

    delucasTeacher(UserRole,
            user: delucas,
            role: teacher)

    hernanTeacher(UserRole,
            user: hernan,
            role: teacher)
	
	softdarTeacher(UserRole,
			user: softdar,
			role: teacher)

    video(VideoContent,
            title: 'Introducción',
            type: 'video',
            url: 'https://www.youtube.com/watch?v=vunDtx095mE',
            user: delucas
    )

    epl(EPLContent,
            title: 'eXelearning',
            type: 'epl',
            url: 'http://delucas.com.ar/M3_U1/index.html',
            user: delucas)

    image(ImageContent,
            title: 'Dados, un juego de probabilidad',
            type: 'image',
            url: 'http://2.bp.blogspot.com/_4nos0c_cvWY/SWlQSvgACPI/AAAAAAAAAEA/ySa4j89yCZ8/s320/PROBABILIDAD.jpg',
            text: 'Un dado es un objeto de forma poliédrica preparado para mostrar un resultado aleatorio cuando es lanzado sobre una superficie horizontal, desde la mano o mediante un cubilete, en cuyo caso los resultados ocurren con una probabilidad que se distribuye mediante una distribución uniforme discreta.',
            user: delucas
    )

    text(TextContent,
            title: 'Probabilidad: concepto básico',
            type: 'text',
            text: 'La <b>probabilidad</b> mide la frecuencia con la que se obtiene un resultado (o conjunto de resultados) y luego al llevar a cabo un experimento aleatorio, del que se conocen todos los resultados posibles, bajo condiciones suficientemente estables.',
            user: delucas
    )

    lecture(Lecture,
			name: 'probabilidad',
            title: 'Nociones de probabilidad',
            brief: 'Esta es una introducción breve a la probabilidad que pretende demostrar cómo funciona la plataforma básica',
            user: delucas,
            contents: [video, text, image, epl]
    )
}
