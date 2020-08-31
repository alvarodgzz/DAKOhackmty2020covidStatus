//
//  ResultsViewController.swift
//  pythonRun
//
//  Created by Álvaro Rodríguez on 29/08/20.
//  Copyright © 2020 Álvaro Rodríguez. All rights reserved.
//

import Cocoa
import PythonKit

class ResultsViewController: NSViewController {
    
    
    @IBOutlet weak var altoRiesgo: NSImageView!
    @IBOutlet weak var bajoRiesgo: NSImageView!
    var tieneRiesgo : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
//    func actualizaRiesgo(riesgo: Int) {
//        tieneRiesgo = 1
//        if tieneRiesgo == 1 {
//            print("Riesgo")
//        }
//    }
//
//    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
//        let vista = segue.destinationController as! inputDataViewController
//        vista.delegado = self
//    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}
