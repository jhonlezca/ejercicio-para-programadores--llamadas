import facturacion.*
import llamadas.*
import ciudades.*

	// paises
		const brazil= new Pais(nombre = 'brazil' , costoPais= 2)
		const alemania= new Pais(nombre = 'alemania' , costoPais= 6)
		const japon= new Pais(nombre = 'japon' , costoPais=25)
		
		// localidades
		const formosa= new Localidad(nombre = 'formosa' , costoLocalidad= 1.5)
		const tucuman= new Localidad(nombre = 'burzaco' , costoLocalidad= 0.9)
		const cordoba= new Localidad(nombre = 'adrogue' , costoLocalidad=1.2)
		
		
		// llamadas Locales
		const llamadaALaAbuela= new Local(hora=6,duracionLlamada=600 , dia = new Date(day= 01, month = 11, year = 2021))
		const llamadaAMama= new Local(hora=17,duracionLlamada=170, dia = new Date(day= 16, month = 10, year = 2021))
		const llamadaAPapa= new Local(hora=20,duracionLlamada=200,dia = new Date(day= 06, month = 12, year = 2021))
		
		
		// llamadas Nacionales
		const reservacionHotel= new Nacional(llamadaLocalidad= cordoba , hora=6,duracionLlamada=3600 , dia = new Date(day= 01, month = 11, year = 2021))
		const casaDeVerano= new Nacional(llamadaLocalidad= tucuman , hora=17,duracionLlamada=1800, dia = new Date(day= 16, month = 10, year = 2021))
		const llamadaATio= new Nacional(llamadaLocalidad= formosa, hora=20,duracionLlamada=7200,dia = new Date(day= 06, month = 12, year = 2021))
		 	
		// llamadas internacionales
		// asumo los costos como simples ejemplos
		
		const llamadaAAmigo= new Internacional(llamadaPais= brazil , hora=6,duracionLlamada=3600 , dia = new Date(day= 01, month = 11, year = 2021))
		const llamadaADoctor= new Internacional(llamadaPais= alemania , hora=17,duracionLlamada=1200, dia = new Date(day= 16, month = 10, year = 2021))
		const llamadaAHotel= new Internacional(llamadaPais= japon, hora=20,duracionLlamada=1800,dia = new Date(day= 06, month = 12, year = 2021))
		const enero= new Date(day=05, month = 1, year = 2021 )
	
	const facturaEnero= new Facturacion( 
			
			abonoMensual = 500 ,
			 fechaFacturacion = enero, 
			 llamadasLocales=[llamadaALaAbuela,llamadaAMama,llamadaAPapa,llamadaAAmigo,llamadaADoctor,llamadaAHotel,reservacionHotel,casaDeVerano,llamadaATio ]
	)

