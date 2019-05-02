import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	var gastosAPagar = 0
	
	method comprar(cosa) {
		cosas.add(cosa)
	}
	
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	
	method tieneComida() {
		return cosas.any{ cosa => cosa.esComida() }
	}
	
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000
	}
	
	method esDerrochona() {
		return cosas.sum { cosa => cosa.precio()} >= 9000
	}
	
	method compraMasCara() { return cosas.max{cosa => cosa.precio()} }
	
	method electrodomesticosComprados() {
		return cosas.filter { cosa => cosa.esElectrodomestico()}
	}
	
	method malaEpoca(){ return cosas.all{cosa => cosa.esComida()} }
	
	method queFaltaComprar(lista){ 
		return lista.asSet().difference{cosas.asSet()}
		
		//return lista.filter { c => not cosas.contains(c)}
	}
	
	method faltaComida(){ return cosas.count{cosa => cosa.esComida()} < 2 }
}

object cuentaCorriente{
	var saldo = 0
	method depositar(importe){ saldo += importe }
	method extraer(importe){ saldo -= importe }
	method saldo(){ return saldo}
}

object cuentaConGastos{
	var saldo = 0
	method depositar(importe){ saldo += importe - 20}
	method extraer(importe){ 
		saldo -= if (importe <= 1000) { importe + 20 } else { importe + importe / 50 }
		
	}
	method saldo(){}
}

object cuentaCombinada{
	var primaria = 0
	var secundaria = 0
	method depositar(importe){ primaria += importe }
	method extraer(importe){ 
		const cuantoSacoDePrimaria = importe.min(primaria)
		primaria -= cuantoSacoDePrimaria
		secundaria -= importe - cuantoSacoDePrimaria 
		
	}
	method saldo(){ return primaria + secundaria }
}