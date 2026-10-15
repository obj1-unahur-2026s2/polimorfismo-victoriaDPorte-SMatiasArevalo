import atletas.*

object raqueta {
    method costoElemento(atleta) {
        return (15 * atleta.edad()).min(400)
    }
}

object judogi {
    method costoElemento(atleta) {
        return (1.5 * atleta.altura()).max(200)
    }
}

object stick {
    method costoElemento(atleta) {
        return (2.5 * (atleta.altura() + atleta.edad())).max(100)
    } 
}