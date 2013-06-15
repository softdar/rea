package rea

import grails.converters.JSON

class LectureController {

	def show() {

		// dummy data
		def content = [
			name: 'probabilidad', title: 'Nociones de probabilidad', username: 'delucas',
			brief: 'Esta es una introducción breve a la probabilidad que pretende demostrar cómo funciona la plataforma básica',
			contents: [
				[title: 'Introducción', type: 'video', data: [ url: 'http://www.youtube.com/embed/cGT_YHZ7M7s']],
				[title: 'Probabilidad: concepto básico', type: 'text', data: [ text: 'La probabilidad mide la frecuencia con la que se obtiene un resultado (o conjunto de resultados) y luego al llevar a cabo un experimento aleatorio, del que se conocen todos los resultados posibles, bajo condiciones suficientemente estables.']]
			]]

		render view: 'show', model: [content: content as JSON]
	}
}
