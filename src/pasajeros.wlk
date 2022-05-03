object neo {
	var energia= 100
	
	method saltar(){
		energia= energia - energia/2
	}
	method vitalidad(){
		return energia / 10
	}
	
	method esElegido(){
		return true
	}
	
}

object trinity{
	
	method saltar(){
		
	}
	method vitalidad(){
		return 0
	}
	
	method esElegido(){
		return false
	}
}

object morfeo{
	var vitalidad= 8
	var estaCansado= false
	
	method cambiarEstadoDeCansancio(){
		not estaCansado
	}
	
	method saltar(){
		if(estaCansado){
			not estaCansado
		} else{
			estaCansado
		}
		vitalidad = vitalidad - 1
	}
	method vitalidad(valor){
		vitalidad= valor
	}
	
	method vitalidad(){
		return vitalidad
	}
	
	method esElegido(){
		return false
	}
}