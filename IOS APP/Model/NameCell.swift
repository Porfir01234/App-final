//
//  NameCell.swift
//  IOS APP
//
//  Created by Jazmin on 29/08/23.
//
import Foundation

enum formType {
    case camara
    case foto
    case nombre
    case telefono
    case fecha
    case sexo
    case color
}
struct NameCell {
    
    var done: Bool = false
    let name: String
    var type: formType
}
