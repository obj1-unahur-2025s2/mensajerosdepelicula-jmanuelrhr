import mensajeros.*

object PuenteDeBrooklyn{
  method pesoMax() = 1000 // kg = 1 TN
}

object LaMatrix{
  method poderHacerLlamados() = true
}

object bicicleta{
  method peso() = 5
}

object camion{
  method peso() = 500
  var cantidadDeAcoplados = 1
  method cambiarCantidadDeAcoplados(nuevaCantidad){
    cantidadDeAcoplados = nuevaCantidad
  }

  method pesoTotal(){ 
    return self.peso() * cantidadDeAcoplados
  }
}

object paqueteOriginal{
  method precio() = 50 // $

  var estaPago = true
  method estaPago() = estaPago

  method cambiarEstadoDePago(){
    if(self.estaPago()){
      estaPago = false
    } else {
      estaPago = true
    }
  }

}

object empresaDeMensajeria {

  var primerEmpleado = null

  var ultimoEmpleado = null
  
  method contratarMensajero(unMensajero){}

  method despedirMensajero(unMensajero){}

  method despedirATodosLosMensajeros(){}

  method mensajeriaEsGrande(){}
}

object paquetito {
  // cualquier mensajero lo puede llevar
  method estaPago() = true
}

object paquetonViajero {
   method precio() = 100 // $
   method debePoderPasarPorTodosLosDestinos() = true
}

