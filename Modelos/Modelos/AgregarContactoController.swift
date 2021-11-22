///Users/ulsa/Desktop/Modelos/Modelos
//  AgregarContactoController.swift
//  Modelos
//
//  Created by Alumno on 11/8/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AgregarContactoController : UIViewController{
    
    @IBOutlet weak var txtCelular: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtNombre: UITextField!
    
    var callbackAgregarContacto : ((Restaurante) -> Void)?
    
    override func viewDidLoad(){
        self.title = "Agregar Contacto"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        let nombre = txtNombre.text!
        let correo = txtCorreo.text!
        let celular = txtCelular.text!
        
        let contacto = Restaurante(nombre: nombre, direccion: correo, horario: celular)
        
        callbackAgregarContacto!(contacto)
        self.navigationController?.popViewController(animated: true)
    }
}
