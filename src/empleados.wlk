object galvan {
	var sueldo = 15000
	var dinero = 0
	var deuda = 0
	
	method sueldo(nuevoSueldo) {
		sueldo = nuevoSueldo
	}	
	method cobrarSueldo(){
		deuda -= sueldo
		if (deuda < 0){
			dinero -= deuda
			deuda = 0
		}
	}
	method gastar(monto){
		dinero -= monto 
		if (dinero < 0) {
			deuda -= dinero
			dinero = 0
		}
	}
	
	
	method sueldo(){
		return sueldo
	}
	method deuda(){
		return deuda
	}
	method dinero(){
		return dinero
	}
}

object baigorria {
	const valorEmpanada = 15
	var empanadasVendidas = 0
	var totalCobrado = 0
	
	method vender(cantidad){
		empanadasVendidas += cantidad
	}
	method cobrarSueldo(){
		totalCobrado += self.sueldo()
		empanadasVendidas = 0
	}
	
	method sueldo() {
		return empanadasVendidas * valorEmpanada
	}
	method totalCobrado(){
		return totalCobrado
	}
}

object gimenez {
	var fondo = 300000
	
	method pagarSueldo(empleado) {
		fondo -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
	
	method fondo() {
		return fondo
	}
}