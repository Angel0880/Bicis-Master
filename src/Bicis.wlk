import Accesorios.*

class Bici {
	var property rodado = 0
	var property largoEnCm = 0
	var property marca
	const accesorios = []
	 
	method accesorios() { return accesorios }
	method agregarAccesorios(unAccesorio) { accesorios.add(unAccesorio) }
	method sacarAccesorios(unAccesorio) { accesorios.remove(unAccesorio) }
	method altura() { return rodado * 2.5 + 15 }
	method velocidadCrucero() { return if(largoEnCm > 120) {rodado + 6} else {rodado + 2} }
	method carga() { return accesorios.sum({a => a.carga()}) }
	method peso() { return accesorios.sum({a => a.peso()}) + rodado / 2}
	method tieneLuz() { return accesorios.any({a => a.esLuminoso()})}
	method cantidadAccesoriosLivianos() { return accesorios.count({ a => a.peso() < 1 }) }
	
}