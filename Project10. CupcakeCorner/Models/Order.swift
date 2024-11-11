//
//  Order.swift
//  Project10. CupcakeCorner
//
//  Created by Fernando Jurado on 9/11/24.
//
import Foundation

@Observable
class Order: Codable {
    // Mapeo los resultados de las propiedades para que el servidor los interprete correctamente 
    enum CodingKeys: String, CodingKey {
        case _type = "type"
        case _quantity = "quantity"
        case _specialRequestEnabled = "specialRequestEnabled"
        case _extraFrosting = "extraFrosting"
        case _addSprinkles = "addSprinkles"
        case _name = "name"
        case _streetAddress = "streetAddress"
        case _city = "city"
        case _zip = "zip"
    }
    
    static let types = ["Chocolate", "Vanilla", "Strawberry", "Blueberry",]
    
    var type = 0
    var quantity  = 3
    
    var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
        
    }
    
    var extraFrosting = false
    
    var addSprinkles = false
    
    var name = ""
    var streetAddress = ""
    var city = ""
    var zip = ""
    // Añado una propiedad con condicional para manejar la posibilidad de un campo vacío en la vista de pago
    var hasValidAddress: Bool {
        if name.isEmpty || streetAddress.isEmpty || city.isEmpty || zip.isEmpty {
            return false
        }
        return true
    }
    // Añado propiedad para manejar el coste de los ingredientes extra y su coste añadido dependiendo de su elección
    var cost: Decimal {
        
        var cost = Decimal(quantity) * 2
        
        cost += Decimal(type) / 2
        
        if extraFrosting {
            cost += Decimal(quantity)
        }
        
        if addSprinkles {
            cost += Decimal(quantity) / 2
        }
        return cost
        
        
    }
}
