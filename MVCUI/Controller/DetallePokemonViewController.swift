//
//  DetallePokemonViewController.swift
//  MVCUI
//
//  Created by Victoria Ortega on 03/08/25.
//

import UIKit

class DetallePokemonViewController: UIViewController {

  

    // Variables para recibir los datos
    var nombre: String?
    var imagen: UIImage?
    var movimiento: String?
    var habilidad: String?

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func cerrarModal(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
