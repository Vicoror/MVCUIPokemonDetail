//
//  DetallePokemonViewController.swift
//  MVCUI
//
//  Created by Victoria Ortega on 03/08/25.
//

import UIKit

class DetallePokemonViewController: UIViewController {
    
    // Outlets que se conectarán desde el storyboard
    
    @IBOutlet weak var nombreDetalle: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var habilidad: UILabel!
    @IBOutlet weak var movimiento: UILabel!
    
    // Variable que recibirá el Pokémon desde la pantalla anterior
    var pokemon: Pokemon?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Mostrar los datos del Pokémon si están disponibles
        if let pokemon = pokemon {
            nombreDetalle.text = pokemon.name
            imagen.image = UIImage(named: String(describing: pokemon.image))
            movimiento.text = pokemon.movimiento
            habilidad.text = pokemon.habilidad
        }
    }

    
    @IBAction func cerrar(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}

