object arbol {
    method caloriasDeco() {return 150}
}

object flor {
    var petalos = 7

    method caloriasDeco() {return 100 * petalos}

    method petalos(modifPetalos) {petalos = modifPetalos}

    method petalos() {return petalos}
}