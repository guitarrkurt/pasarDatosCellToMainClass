//
//  ViewController.swift
//  pasarDatosCellToMainClass
//
//  Created by guitarrkurt on 04/04/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, customCellProtocol {

    @IBOutlet weak var etiqueta: UILabel!
    var delegate: customCellProtocol? = nil
    
    var aux: String = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return 10
    }
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomTableViewCell
        
        
        cell.delegate = self
        
        
        return cell
        
    }
    
    func sendData(texto: String){
//        etiqueta.text = texto
        aux = texto
    }

    @IBAction func buttonAction(sender: AnyObject) {
        etiqueta.text = aux
    }
}

