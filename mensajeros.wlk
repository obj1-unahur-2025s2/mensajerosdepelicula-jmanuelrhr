import objetosYdestinos.*

object Roberto {
  var transporteActual = bicicleta
  method transporte() = transporteActual
  method peso() = 90
  method puedeLlamar() = false

  method pesoTotal(){
    if(transporteActual == bicicleta){
        return (self.peso() + bicicleta.peso())
    } else {
        return (self.peso() + camion.pesoTotal())
    }
  }

  method cambiarDeTransporte(){
    if(transporteActual == bicicleta){
        transporteActual = camion
    } else {
        transporteActual = bicicleta
    }
  }

  method puedeLlevarElPaquete(paquete, destino) {
    if(destino == PuenteDeBrooklyn){
       return (self.pesoTotal() < destino.pesoMax() and paquete.estaPago())
    } else {
       return (self.puedeLlamar() == destino.poderHacerLlamados() and paquete.estaPago())
    }
  }

}

object ChuckNorris { 
    method peso() = 80
    method puedeLlamar() = true
}

object Neo { 
    method peso() = 0
    var credito = 100
    method credito() = credito

    method puedeLlamar() = credito > 20

    method puedeLlevarElPaquete(paquete, destino) {
    if(destino == PuenteDeBrooklyn){
       return (self.peso() < destino.pesoMax() and paquete.estaPago())
    } else {
       return (self.puedeLlamar() == destino.poderHacerLlamados() and paquete.estaPago())
    }
  }
}