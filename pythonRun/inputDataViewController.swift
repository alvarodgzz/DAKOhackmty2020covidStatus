//
//  inputDataViewController.swift
//  pythonRun
//
//  Created by Álvaro Rodríguez on 29/08/20.
//  Copyright © 2020 Álvaro Rodríguez. All rights reserved.
//

import Cocoa
import PythonKit


//protocol protocoloRiesgo {
//    func actualizaRiesgo(riesgo : Int) -> Void
//}

class inputDataViewController: NSViewController {
    
    var riesgo : Bool!
    @IBOutlet weak var bg2: NSImageView!
    @IBOutlet weak var bg3: NSImageView!
    @IBOutlet weak var botonEnviar: NSButton!
    @IBOutlet weak var botonOtraConsulta: NSButton!
    @IBOutlet weak var altoRiesgo: NSImageView!
    @IBOutlet weak var bajoRiesgo: NSImageView!
    
    @IBOutlet weak var txtEdad: NSTextField!
    @IBOutlet weak var edad: NSTextField!
    @IBOutlet weak var tfSexo: NSPopUpButton!
    @IBOutlet weak var bNeumonia: NSButton!
    @IBOutlet weak var bEmbarazo: NSButton!
    @IBOutlet weak var bDiabetes: NSButton!
    @IBOutlet weak var bEpoc: NSButton!
    @IBOutlet weak var bAsma: NSButton!
    @IBOutlet weak var bHiper: NSButton!
    @IBOutlet weak var bInmuno: NSButton!
    @IBOutlet weak var bOtraEnfer: NSButton!
    
//    var delegado : protocoloRiesgo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bg3.isHidden = true
        botonOtraConsulta.isHidden = true
        altoRiesgo.isHidden = true
        bajoRiesgo.isHidden = true
    }
    
//    @IBAction func correModelo(_ sender: NSButton) {
//        // correr el modelo de python para actualizar variable riesgo
//        delegado.actualizaRiesgo(riesgo: 1)
//    }
    
    @IBAction func bEnviar(_ sender: NSButton) {
        let delay = 0
        let age = Int(edad.stringValue)!
        let sexo = tfSexo.titleOfSelectedItem!
        var sex : Int
        if sexo == "Mujer" {
            sex = 1
        } else {
            sex = 2
        }
        var neumonia : Int
        var embarazos : Int
        var diabetes : Int
        var epoc : Int
        var asma : Int
        var hiperTen : Int
        var inmuno : Int
        var otraEnferm : Int
        
        neumonia = bNeumonia.state.rawValue == 0 ? 2 : 1
        embarazos = bEmbarazo.state.rawValue == 0 ? 2 : 1
        diabetes = bDiabetes.state.rawValue == 0 ? 2 : 1
        epoc = bEpoc.state.rawValue == 0 ? 2 : 1
        asma = bAsma.state.rawValue == 0 ? 2 : 1
        hiperTen = bHiper.state.rawValue == 0 ? 2 : 1
        inmuno = bInmuno.state.rawValue == 0 ? 2 : 1
        otraEnferm = bOtraEnfer.state.rawValue == 0 ? 2 : 1

        
        txtEdad.isHidden = true
        edad.isHidden = true
        tfSexo.isHidden = true
        bNeumonia.isHidden = true
        bEmbarazo.isHidden = true
        bDiabetes.isHidden = true
        bEpoc.isHidden = true
        bAsma.isHidden = true
        bHiper.isHidden = true
        bInmuno.isHidden = true
        bOtraEnfer.isHidden = true
        botonEnviar.isHidden = true
        bg2.isHidden = true
        
        bg3.isHidden = false
        botonOtraConsulta.isHidden = false
        if neumonia == 1 || epoc == 1 || hiperTen == 1 || diabetes == 1 || age > 60 || inmuno == 1 || asma == 1 {
            altoRiesgo.isHidden = false
        } else {
            bajoRiesgo.isHidden = false
        }
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}
