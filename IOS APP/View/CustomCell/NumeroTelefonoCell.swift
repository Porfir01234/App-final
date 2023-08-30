//
//  NumeroTelefonoCell.swift
//  IOS APP
//
//  Created by Porfirio on 29/08/23.
//

import UIKit

class NumeroTelefonoCell: UITableViewCell, UITextFieldDelegate {
   
    @IBOutlet weak var textView: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        textView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let caracters = CharacterSet.decimalDigits
        let caracterSet = CharacterSet(charactersIn: string)
        return caracters.isSuperset(of: caracterSet)
    }
}
