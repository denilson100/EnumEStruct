//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum opcaoDeFrequencia {
    
    case Mensal, Semestral, Anual
    
}


var frequenciaDepagamento: opcaoDeFrequencia

frequenciaDepagamento = opcaoDeFrequencia.Mensal



//Pode omitir o enum

frequenciaDepagamento = .Semestral


//É possivel definir SWTCH sobre a variavel do tipo ENUM

var desconto = 0.0

switch frequenciaDepagamento {
    
case .Anual: desconto = 0.10
    
default: desconto = 0.0
    
}


//É possivel atribuir valores associados aos casos dentro do ENUM

enum Algarismo {
    
    case Arabico(Int)
    
    case Romano(String)
    
}


//Posso designar valores de tipos diferentes para a mesma variavel, conforme definido no ENUM

var numero = Algarismo.Arabico(15)

//    numero = Algarismo.Romano("XV")



//Este switch deve prever todas as possibilidades do enum, isto deve ser "exaustivo"

switch numero {
    
case .Arabico (let valor): print("O valor é \(valor)")
    
case .Romano (let valor): print("O valor é \(valor)")
    
}


//Uso de raw value

enum Mes: Int {
    
    case Jan = 1, Fev, Mar, Abr, Mai, Jun, Jul, Ago, Set, Out, nov, Dez
    
}


let mesDesejado = Mes(rawValue: 8)


//if para testar a condição e nao dar erro

if let temp = Mes(rawValue: 11) {
    
    print("O mês \(temp) foi encontrado")
    
} else {
    
    print ("Número de mês inválido")
    
}



/*** Struct ***/

//Pode definir assim

struct GeoPoint {
    
    var latitude = 0.0
    
    var longitude = 0.0
    
}



//Ou definir assim

var outroLocal = GeoPoint(latitude: 40.2, longitude: 29)



//Exemplo de estrutura com coordenadas cartesianos 2D de retangulo.

struct Ponto {var x:Int, y:Int}



struct Tamanho {var largura:Int, altura:Int}

struct Retangulo {
    
    var origem:Ponto, tamanho:Tamanho
    
    func calculaCentro() -> Ponto {
        
        let x = origem.x + (tamanho.largura / 2)
        
        let y = origem.y + (tamanho.altura / 2)
        
        return Ponto(x: x, y: y)
    }
}



var origemA = Ponto(x:0, y:0)

var tamanhoA = Tamanho(largura: 100, altura: 50)

var retanguloA = Retangulo(origem: origemA, tamanho: tamanhoA)



var centroA = retanguloA.calculaCentro()

print("\(origemA)")

print("\(tamanhoA)")

print("\(centroA)")

