object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloMilanesaRebozadas {
	method precio() {return 260}
	method esComida() {return true}
	method esElectrodomestico() {return false}
}

object botellaDeTomate {
	method precio() {return 90}
	method esComida() {return true}
	method esElectrodomestico() {return false}
}

object microondas {
	method precio() {return 4200}
	method esComida() {return false}
	method esElectrodomestico() {return true}
}

object kiloCebolla {
	method precio() {return 25}
	method esComida() {return true}
	method esElectrodomestico() {return false}
}

object compu {
	method precio() {return 500 * dolar.precioDeVenta()}
	method esComida() {return false}
	method esElectrodomestico() {return true}
}

object dolar {
	var property precioDeVenta = 45
	
	method precioDeVenta() {return precioDeVenta}
}

object packDeComida {
	var sumaDePrecios = 0 
	const pack = #{}
	method pedir(comida,aderezo) {pack.add(comida) ; pack.add(aderezo)}
	method precio() {sumaDePrecios = pack.first() + pack.last()
		return sumaDePrecios
	}
}
