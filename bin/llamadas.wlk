import ciudades.*
class Llamada{
	
	const property dia
	const property hora

	// se toma la duracion en segundos
	const property duracionLlamada 
	
	method llamadaEnMinutos(){
		return duracionLlamada/ 60
	}
	
	method consumo(){
		return (self.costo() * self.llamadaEnMinutos()).truncate(2) 
	}
	method costo()
	
	method franjaHorariaAlta(){
		return hora.between(8, 20)
	}
	
	method findeSemana(){
		return dia.isWeekendDay()
	}
	
}

class Local inherits Llamada{
	override method costo(){
		return if(not self.franjaHorariaAlta() or  self.findeSemana())  0.1 else 0.2
	}
	
}

class Nacional inherits Llamada{
	const llamadaLocalidad
	
	// aqui el costo varia segun la localidad de donde se realice la llamada
	override method costo(){
		return llamadaLocalidad.costoLocalidad()
	}
}
class Internacional inherits Llamada{
	const llamadaPais
	// aqui el costo varia segun el pais de donde se realice la llamada
	override method costo(){
		return llamadaPais.costoPais()
	}
}

