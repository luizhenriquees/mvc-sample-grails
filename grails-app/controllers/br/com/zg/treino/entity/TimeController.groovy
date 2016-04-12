package br.com.zg.treino.entity

class TimeController {

	def index() {
		redirect(action: "create", params: params)
	}

	def list() {
		render(view: actionName)
	}

	def create() {
		[time: new Time(params)]
	}

	def update() {

	}

	def save() {
		def time = new Time(params)
		if (time.save(flush: true)) {
			redirect(action: "show", id: time.id)
		}
		else {
			render "Não foi possível salvar o time"
		}
	}

	def edit() {

	}

	def show(Long id) {
		def time = Time.get(id)
		if (!time){
			render "Esse time não existe"
		}
		[time: time]
	}
}
