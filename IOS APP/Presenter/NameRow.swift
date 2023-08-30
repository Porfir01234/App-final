//
//  NameRow.swift
//  IOS APP
//
//  Created by Porfirio on 29/08/23.
//

import Foundation

struct NameRow{
    
    var nameRow: [NameCell]?
    
    mutating func setArrFormType() {
        self.nameRow = [
            NameCell(name: "Camara", type: .camara ),
            NameCell(name: "Foto", type: .foto),
            NameCell(name: "Nombre completo", type: .nombre),
            NameCell(name: "Numero de telefono", type: .telefono),
            NameCell(name: "Fecha de nacimiento", type: .fecha),
            NameCell(name: "Sexo(Masculino / femenino)", type: .sexo),
            NameCell(name: "Color", type: .color)
        ]
    }
    
    func getArrFomrType() -> [NameCell]? {
        return nameRow
    }
    
}

