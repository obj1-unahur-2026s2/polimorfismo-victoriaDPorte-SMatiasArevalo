import disciplinas.*
import elementos.*

object victoria {
    var edadInicial = 23
    var alturaInicial = 170 
    var disciplinaInicial = tenis 
    var elementoInicial = raqueta
    var cantidadInvitados = 5

    method edad() = edadInicial
    method altura() = alturaInicial
    method disciplina() = disciplinaInicial 
    method elemento() = elementoInicial
    method cantidadDeInvitados() = cantidadInvitados 
    
    method cumplirAnios() {
        edadInicial += 1
    }

    method cambiarAltura(altura) {
        alturaInicial = altura
    }

    method cambiarCantidadDeInvitados(cantidad) {
        cantidadInvitados = cantidad
    }

    method cambiarDisciplina(disciplina) {
        disciplinaInicial =  disciplina
    }
    method cambiarElemento(elemento) {
        elementoInicial = elemento
    }

    method presupuestoPropio() {
        return self.disciplina().entrenadores() * comiteOlimpico.valorPorEntrenador() + self.elemento().costoElemento(self)
    }

    method presupuesto() {
        return self.presupuestoPropio() + self.disciplina().presupuestoDisciplina(self)
    }
}

object comiteOlimpico {
    var medallasDeJudo = 1
    var valorEntrenadores = 10
    method medallasDeJudoGanadas() = medallasDeJudo

    method sumarUnaMedallaDeJudoGanada() {
        medallasDeJudo += 1
    }

    method valorPorEntrenador() = valorEntrenadores

    method nuevoValorEntrenador(valor) {
        valorEntrenadores = valor
    }
}