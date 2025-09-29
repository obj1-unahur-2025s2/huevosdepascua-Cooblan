import chicos.*
import decoraciones.*
import huevosDePascua.*


object caceria{
    const huevosPorEncontrar = []
    const huevosEncontrados = []

    method inicializarJuego(){
        matrioshka.huevoEnSuInteriorEs(blisterHuevitos)
        matrioshka.decoracion(flor)
        huevosPorEncontrar.add(matrioshka)
        huevosPorEncontrar.add(huevoRepostero)
        huevosPorEncontrar.add(conejo)
        huevosPorEncontrar.add(huevoMixto)
    }

    method cuantosHuevosPorEncontrar() {return huevosPorEncontrar.size()}

    method cuantosQuedanConChocolateBlanco() {return huevosPorEncontrar.count({h => h.esChocolateBlanco()})}

    method fueEncontrado(huevo) {return huevosEncontrados.contains(huevo)}


    method encontrarHuevo(chico, huevo) {
        chico.comer(huevo)
        huevosPorEncontrar.remove(huevo)
        huevosEncontrados.add(huevo)
    }

    method encontrarElPrimero(chico){
        self.encontrarHuevo(chico, huevosPorEncontrar.first())
    }

    method encontrarLosHuevosRestantes(chico){
        huevosPorEncontrar.forEach({h => chico.comer(h)})
    }

    method cualesQuedanDeChocolateBlanco() {return huevosPorEncontrar.filter({h => h.esChocolateBlanco()})}

    method cualQuedaDeMayorCalorias() {return huevosPorEncontrar.max({h => h.calorias()})}



}