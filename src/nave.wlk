import pasajeros.*
object nave {
	var pasajeros= [neo, morfeo, trinity]
	
	method pasajeros(){
		return pasajeros
	}
	
	method cantidadDePasajeros(){
		return pasajeros.size()
	}
	
	method pasajeroMasVital(){
		return pasajeros.max({x => x.vitalidad()})
	}
	
	method pasajeroMenosVitalidad(){
		return pasajeros.min({x => x.vitalidad()})
	}
	method estaEquilibradaEnVitalidad(){
		return self.pasajeroMasVital().vitalidad() < 2 * self.pasajeroMenosVital().vitalidad()
	}
	
	method elElegidoEstaEnLaNave(){
		return pasajeros.any({x=>x.esElegido()})
	}
	
	method chocar(){
		pasajeros.forEach({x=>x.saltar()})
		pasajeros.clear()
	}
	
	method listaDeNoElegidos(){
		return pasajeros.filter({x=> not x.esElegido()})
	}
	method acelerar(){
		self.listaDeNoElegidos().forEach({x=>x.saltar()})	
	}
}
