//
//  ModalViewController.swift
//  MVCUI
//
//  Created by Victoria Ortega on 03/08/25.
//

import UIKit

class ModalViewController: UIViewController {
    
    

       var nombre: String?
       var imagen: UIImage?
       var movimiento: String?
       var habilidad: String?

       override func viewDidLoad() {
           super.viewDidLoad()

           nombreLabel.text = nombre
           imagenView.image = imagen
           movimientoLabel.text = movimiento ?? "Movimiento no disponible"
           habilidadLabel.text = habilidad ?? "Habilidad no disponible"
       }

       @IBAction func cerrarModal(_ sender: UIButton) {
           dismiss(animated: true, completion: nil)
       }
   }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
