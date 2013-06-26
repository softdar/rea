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
				[title: 'Probabilidad: concepto básico', type: 'text', data: [ text: 'La probabilidad mide la frecuencia con la que se obtiene un resultado (o conjunto de resultados) y luego al llevar a cabo un experimento aleatorio, del que se conocen todos los resultados posibles, bajo condiciones suficientemente estables.']],
				[title: 'Cuestionario', type: 'multiple-choice', data: [
						[question: '¿Qué es la probabilidad?', options: [[number: 1, text: 'Una ciencia que extiende la matemática'], [number: 2, text: 'Una disciplina que se encarga de procesos estocásticos'], [number: 3, text: 'Una función de la calculadora']], answer: 2, more: 'La probabilidad es la rama de las matemáticas que estudia los resultados posibles de los fenómenos aleatorios'],
						[question: '¿Qué significa "Estocástico"?', options: [[number: 1, text: 'Aleatorio'],[number: 2, text: 'Determinístico'],[number: 3, text: 'Pseudoaleatorio']], answer: 1, more: 'Algo determinístico es aquello que no varía conforme no varíen las circunstancias en que se inscribe']
					]]
			]]

		render view: 'show', model: [content: content as JSON]
	}
}
