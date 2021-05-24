class Farolito {
	
	method peso() { return 0.5 }
	method carga() { return 0 }
	method esLuminoso() { return true }
	
}

class Canasto {
	
	var property volumen = 0
	
	method peso() { return volumen / 10 }
	method carga() { return volumen * 2 }
	method esLuminoso() { return false }
		
}

class MorralDeBici {
	
	var property largoEnCm = 0
	var property tieneOjoDeGato
	
	method peso() { return 1.2 }
	method carga() { return largoEnCm / 3 }
	method esLuminoso() { return tieneOjoDeGato } 
	
}

/*
 * Ejercicio 5:
 * 
 * Para crear nuevos accesorios, como "CanastoParteAtras", tiene que entender 
 * los métodos peso(), carga() y esLuminoso() para que se cumpla el polimorfismo y funcione
 * 
 */


