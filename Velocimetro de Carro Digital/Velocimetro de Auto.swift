//: Velocimetro Digital de Automovil

import UIKit
// Velocimetro Digital Automovil

// Enumeracion

enum Velocidades : Int {
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    //Inicializador
    
    init(velocidadInicial: Velocidades){
        self=velocidadInicial
    }
}

//Clase

class Auto {
    
    var velocidad : Velocidades
    
    
    init (){
        self.velocidad = Velocidades(velocidadInicial:.apagado)
    }
    
//Funcion
    
    func cambioDeVelocidad()-> (actual : Int, velocidadEnCadena : String ){
       
        let velocidadActual = self.velocidad
        var descripcion = ""
        
        switch (self.velocidad) {
        case .apagado:
            self.velocidad = .velocidadBaja
            descripcion = "Apagado"
        case .velocidadBaja:
            self.velocidad = .velocidadMedia
            descripcion = "Velocidad Baja"
        case .velocidadMedia:
            self.velocidad = .velocidadAlta
            descripcion = "Velocidad Media"
        case .velocidadAlta:
            self.velocidad = .velocidadMedia
            descripcion = "Velocidad Alta"
            
        }
        return(velocidadActual.rawValue, descripcion)
    }
    
}
//Instancia
let auto = Auto()
//For y Tupla
for a in 1...20{
    let resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual), \(resultado.velocidadEnCadena)")
}