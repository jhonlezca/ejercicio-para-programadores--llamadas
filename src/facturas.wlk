import facturacion.*
import llamadas.*

	const llamadaALaAbuela= new Local(hora=6,duracionLlamada=600 , dia = new Date(day= 01, month = 11, year = 2021))
	const llamadaAMama= new Local(hora=17,duracionLlamada=170, dia = new Date(day= 16, month = 10, year = 2021))
	const llamadaAPapa= new Local(hora=20,duracionLlamada=200,dia = new Date(day= 06, month = 12, year = 2021))
	
	const enero= new Date(day=05, month = 1, year = 2021 )
	
	const facturaEnero= new Facturacion( abonoMensual = 500 , fechaFacturacion = enero, llamadasLocales=[llamadaALaAbuela,llamadaAMama,llamadaAPapa ] )

