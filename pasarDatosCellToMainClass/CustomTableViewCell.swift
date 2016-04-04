//
//  CustomTableViewCell.swift
//  pasarDatosCellToMainClass
//
//  Created by guitarrkurt on 04/04/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

protocol customCellProtocol{
    func sendData(texto: String)
}

class CustomTableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var caja: UITextField!
    var delegate: customCellProtocol? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()

        caja.delegate = self
    }
    internal func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        
        delegate?.sendData(caja.text!)
        
        
        caja.resignFirstResponder()
        return true
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
