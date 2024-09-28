object maquina {
  const produccion = [] //43, 18, 49, 62, 33, 39
  
  method agregarProduccion(unElemento) {
    produccion.add(unElemento)
  }
  
  method agregarProducciones(unaLista) {
    produccion.addAll(unaLista)
  }
  
  method algunDiaSeProdujo(cantidad) = produccion.contains(cantidad)
  
  method maximoValorDeProduccion() = produccion.max()
  
  method valoresDeProduccionPares() = produccion.filter({ p => p.even() })
  
  method produccionEsAcotada(n1, n2) = produccion.all({ p => p.between(n1, n2)})
  
  method produccionesSuperioresA(cuanto) = produccion.filter({ p => p > cuanto })
  
  method produccionesSumando(n) = produccion.map({ p => p + n })
  //lo transforma pq suma
  
  method totalProducido() = produccion.sum()
  
  method ultimoValorDeProduccion() = produccion.last()
  
  method cantidadProduccionesMayorALaPrimera() = produccion.filter({ p => p > produccion.first()}).size()
} /////////////////////////////////////

object furia {
  var intensidad = 10
  
  method intensidad() = intensidad
  
  method disminuir(unaCantidad) {
    intensidad -= unaCantidad // intensidad = intensidad - unaCantidad
  }
  
  method aumentar(unaCantidad) {
    intensidad += unaCantidad // intensidad = intensidad + unaCantidad
  }

  method esFuerte() = intensidad > 20
}

object alegria {
  var intensidad = 15
  
  method intensidad() = intensidad
  
  method disminuir(unaCantidad) {
    intensidad -= unaCantidad * 2 // intensidad = intensidad - unaCantidad * 2
  }
  
  method aumentar(unaCantidad) {
    intensidad += unaCantidad * 3 // intensidad = intensidad - unaCantidad * 3
  }

  method esFuerte() = intensidad > 30
}

object tristeza {
  const intensidad = 15
  
  method intensidad() = intensidad
  
  method disminuir(unaCantidad) {
    
  }
  
  method aumentar(unaCantidad) {
    
  }

  method esFuerte() = intensidad > 30
}

object raily {
  const emociones = [furia, tristeza, alegria]

  method aumentar(unaCantidad) {
    emociones.forEach({e => e.aumentar(unaCantidad)})
  }

  method totalDeIntensidad() {
    return emociones.sum({e => e.intensidad()})
  }

  method intensidadMasFuerte() {
    return emociones.max({e => e.intensidad()})
  }

  method fuertes() {
    return emociones.filter({e => e.esFuerte()})
  }
}