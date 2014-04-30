package test

class EstadoController {

    def scaffold = true
	
	def getEstados = {
		def paisInstance = Pais.get(params.id)
		def estadosList = paisInstance?.estados
		
		render(template: "selectEstados", model: [estadosList:estadosList])
	}
}
