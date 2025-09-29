import caceria.*

object ana {
    var calorias = 5000
    var estaEnfermo = false

    method comer(huevo){
        if(huevo.esChocolateBlanco() || calorias - huevo.calorias() < 0)
        {estaEnfermo = true}

        calorias - huevo.calorias()
        }
    method estaEnfermo(){
        return estaEnfermo
    }

    method calorias(){return calorias}

}

object jose {
    var ultimoHuevo = 0
    var estaEnfermo = false

    method comer(huevo){
        ultimoHuevo = huevo
        if(ultimoHuevo.esChocolateAmargo()) {estaEnfermo = true}
    }

    method estaEnfermo() {return estaEnfermo}

    method ultimoHuevoComido() {return ultimoHuevo}
  
}

object tito {

    method comer(huevo){}
}

