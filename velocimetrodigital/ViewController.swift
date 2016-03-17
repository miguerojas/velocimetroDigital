//
//  ViewController.swift
//  velocimetrodigital
//

                                                	
import UIKit

// Enumeracion de velocidades

enum Velocidades: Int {
    case Apagado = 0 // velocidad 0.
    case VelocidadBaja = 20 //  velocidad de 20km/h
    case VelocidadMedia = 50 // velocidad de 50km/h.
    case VelocidadAlta = 120 // velocidad 120km/h
    
    // Declaracion inicializador
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

// Creacion de la Clase AUTO
class Auto {
    
    var velocidad: Velocidades
    
    // Inicializador de la clase
    init() {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    // Funcion cambio de velocidad
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) {
        
        switch velocidad {
            
        case .Apagado :
            velocidad = .VelocidadBaja
            return (velocidad.rawValue, "Velocidad Baja")
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            return (velocidad.rawValue, "Velocidad Alta")
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
            
        }
    }
}


//Pruebas de clase

// se crea instancia de auto
var auto:Auto = Auto()

// imprime estado inicial
print("\(auto.velocidad.rawValue), \(auto.velocidad)")

// se crea una tupla para almacenar el estado actual de la velocidad.

var velocidadActual : (actual: Int, velocidadEnCadena: String)

// se realizan las 20 iteracions por medio de un for
for index in 1...20 {
    
    // impresion de las velocidades durante la 20 iteraciones
    velocidadActual = auto.cambioDeVelocidad()
    print("\(velocidadActual.actual), \(velocidadActual.velocidadEnCadena)")
}

