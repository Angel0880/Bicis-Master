import Bicis.*
import Accesorios.*

class Deposito {
	
	const bicicletas = []
	
	method bicicletas() {
		
		return bicicletas
	}
	
	method agregarBici(unaBici) {
		
		bicicletas.add(unaBici)
		
	}
	
	method sacarBici(unaBici) {
		
		bicicletas.remove(unaBici)
		
	}
	
	method bicisRapidas() {
		
		return bicicletas.filter({ b => b.velocidadCrucero() > 25 }).asSet()
		
	}
	
	method marcaBicis() {
		
		return bicicletas.map({ b => b.marca() }).asSet()
		
	}
	
	method esNocturno() {
		
		return bicicletas.all({ b => b.tieneLuz() })
		
	} 
	
	method tieneBiciparallevar(unaCargaEnKg) {
		
		return bicicletas.any({ b => b.carga() > unaCargaEnKg })
		
	}
	
	method marcaMasRapida() {
		
		return bicicletas.max({b => b.velocidadCrucero()}).marca()
		
	}
	
	method cargaTotalBicisLargas() {
		
		return bicicletas.filter({ b => b.largoEnCm() > 170 }).sum({ b => b.carga() })
		
	}
	
	method cantidadBicisSinAccesorios() {
		
		return bicicletas.count({ b => b.accesorios().isEmpty() })
		
	}
	
	method bicisCompanieras(unaBici) {
		
		return bicicletas.filter({ b => b.marca() == unaBici.marca() and (b.largoEnCm() - unaBici.largoEnCm()).abs() <= 10 }).asSet()
		
	} 
	
} 