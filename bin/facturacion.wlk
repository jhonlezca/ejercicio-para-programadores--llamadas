import llamadas.*

class Facturacion{
	
	const property fechaFacturacion
	const abonoMensual
	
	var property llamadasLocales=[]
	var property llamadasNacionales=[]
	var property llamadasInternacionales=[]
	
	method consumoTotalDeLlamadas(listaDeLlamadas){
		return listaDeLlamadas.map{llamada => llamada.consumo()}.sum()
	}
	
	method consumoLocales(){
		return self.consumoTotalDeLlamadas(llamadasLocales)
	}
	
	method consumoNacionales(){
		return self.consumoTotalDeLlamadas(llamadasNacionales)
	}
	
	method consumoInternacionales(){
		return self.consumoTotalDeLlamadas(llamadasInternacionales)
	}
	
	method consumoLlamas(){
		return self.consumoLocales()+ self.consumoNacionales()+ self.consumoInternacionales()
	}
	
	
	method totalFacturado(){
		return abonoMensual +  self.consumoLlamas()
	}


}