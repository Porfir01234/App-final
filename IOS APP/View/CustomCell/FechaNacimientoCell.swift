//
//  FechaNacimientoCell.swift
//  IOS APP
//
//  Created by Porfirio on 29/08/23.
//

import UIKit

class FechaNacimientoCell: UITableViewCell {

    let dd = Array(1...31)
    let mm = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octobre", "Noviembre", "Diciembre"]
    let yy = Array(1900...2023)
    
    @IBOutlet weak var pickerView: UIPickerView!
    override func awakeFromNib() {
        super.awakeFromNib()
        pickerView.delegate = self
        pickerView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}


extension FechaNacimientoCell: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return dd.count
        } else if component == 1{
            return mm.count
        } else {
            return yy.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            if component == 0 {
                return "\(dd[row])"
            } else if component == 1 {
                return mm[row]
            } else {
                return "\(yy[row])"
            }
        }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            // Aquí puedes obtener la fecha seleccionada
            let selectedDay = dd[pickerView.selectedRow(inComponent: 0)]
            let selectedMonth = mm[pickerView.selectedRow(inComponent: 1)]
            let selectedYear = yy[pickerView.selectedRow(inComponent: 2)]
            
            print("Fecha seleccionada: \(selectedDay) de \(selectedMonth) de \(selectedYear)")
        }
}
