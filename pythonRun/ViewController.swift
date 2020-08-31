//
//  ViewController.swift
//  pythonRun
//
//  Created by Álvaro Rodríguez on 29/08/20.
//  Copyright © 2020 Álvaro Rodríguez. All rights reserved.
//

import Cocoa
import PythonKit

class ViewController: NSViewController {
    
//    var nombre = Python.import("String")
    @IBOutlet var vista1: NSView!
    @IBOutlet weak var bgVista: NSColorWell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let np = Python.import("numpy")
//        let datos = np.array([21, 1, 1])
//        //print(datos)
//
//        let sys = Python.import("sys")
//        sys.path.append("/Users/alvarodgzz/Documents/hackmty2020/") // path to your Python file's directory.
//        let pipFile = Python.import("main") // import your Python file.
//        pipFile.modelo(datos) // call your Python function.
        //print("Hello", nombre)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func viewWillLayout() {
        preferredContentSize = view.frame.size
    }


}

