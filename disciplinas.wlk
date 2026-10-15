import atletas.*

object tenis {
    var entrenadores = 4

    method entrenadores() = entrenadores
     
    method presupuestoDisciplina(atleta) {
      return 200 + (3 * atleta.cantidadDeInvitados())
    }

    method cambiarEntrenadores(cantidad){
        entrenadores = 1.max(cantidad)
    } 
}

object judo {
    const entrenadores = 2

    method entrenadores() = entrenadores

    method presupuestoDisciplina(atleta) {
      return 120 * comiteOlimpico.medallasDeJudoGanadas()
    }

}

object hockey {
    var cantidadEntrenadores = 2

    method entrenadores() = cantidadEntrenadores

    method cambiarEntrenadores(cantidad) {
        cantidadEntrenadores = cantidad
    }

    method presupuestoDisciplina(atleta) {
        return 300
    }
}