//
//  NombreCell.swift
//  IOS APP
//
//  Created by Porfirio on 29/08/23.
//

import UIKit

class NombreCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        textField.delegate = self
        textField.maxLength = 10
    }

    //override func setSelected(_ selected: Bool, animated: Bool) {
      //  super.setSelected(selected, animated: animated)
   // }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let caracters = CharacterSet.letters
        let caracterSet = CharacterSet(charactersIn: string)
        return caracters.isSuperset(of: caracterSet)
    }
}
extension UITextField {
    private struct AssociatedKeys {
        static var maxLength = "UITextField.maxLength"
    }
    
    var maxLength: Int {
        get {
            guard let length = objc_getAssociatedObject(self, &AssociatedKeys.maxLength) as? Int else {
                return Int.max
            }
            return length
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.maxLength, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else {
            return true
        }
        
        let newLength = text.count + string.count - range.length
        return newLength <= textField.maxLength
    }
}
