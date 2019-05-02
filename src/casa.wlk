import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa) {
		cosas.add(cosa)
	}
	
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	
	method tieneComida() {
		//return cosas.any()
	}
	
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000
	}
	
	method esDerrochona() {
		//return cosas.forEach {cosa => cosa.sum >= 9000}
	}
}

