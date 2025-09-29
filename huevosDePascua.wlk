import decoraciones.*
object huevoRepostero {

    method calorias(){return 750}
    method esChocolateBlanco() {return true}
    method esChocolateAmargo() {return false}
}

object huevoMixto { 

    method calorias(){return self.caloriasChocolateConLeche() + self.caloriasChocolateBlanco()}

    method caloriasChocolateConLeche() {return 400}

    method caloriasChocolateBlanco() {return 500}
  
    method esChocolateBlanco() {return true}

    method esChocolateConLeche() {return true}
    
    method esChocolateAmargo() {return false}

}

object conejo {
    var calorias = 100 //tengo que elegir las calorias todavía

    method peso() {return 10 * calorias}

    method calorias() {return calorias}

    method calorias(modCalorias) {calorias = modCalorias}

    method esChocolateBlanco() {
        return false
    }

    method esChocolateAmargo() {return true}
}

object blisterHuevitos {
    var cantidadDeHuevitos = 14 //elijo una cantidad aleatoria de huevitos

    method calorias() {return cantidadDeHuevitos * 100 + (cantidadDeHuevitos.div(5) * 150)}

    method esChocolateBlanco(){return cantidadDeHuevitos > 5}

    method cantidadDeHuevitos(modifCantidad) {cantidadDeHuevitos = modifCantidad}

    method esChocolateAmargo() {return false}

}

object matrioshka {
    var huevoEnSuInterior = 0
    var decoracion = arbol //elijo una decoracion cualquiera

    method calorias() {return 3000 + decoracion.caloriasDeco() + huevoEnSuInterior.calorias()}

    method huevoEnSuInteriorEs(huevo) {
        huevoEnSuInterior = huevo
    }

    method huevoEnSuInteriorEs() {
        return huevoEnSuInterior
    }

    method esChocolateBlanco() {
        return huevoEnSuInterior.esChocolateBlanco()
    }

    method esChocolateAmargo() {return true}

    method decoracion() {return decoracion}

    method decoracion(modifDecoracion) {decoracion = modifDecoracion}
}
