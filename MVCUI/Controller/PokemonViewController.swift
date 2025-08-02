//
//  PokemonViewController.swift
//  MVCUI
//
//  Created by Victoria Ortega on 01/08/25.
//

import UIKit

class PokemonViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let dataManager = PokemonDataManager()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //view.backgroundColor = UIColor(named: "setColor")
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
        dataManager.fetch()
        tableView.reloadData()
        //print("# de pokemones: ", dataManager.count())
        print("# de pokemones: \(dataManager.count()) ")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueID" {
            if let destino = segue.destination as? DetallePokemonViewController,
               let pokemonSeleccionado = sender as? Pokemon {
                destino.pokemon = pokemonSeleccionado
            }
        }
    }
}



extension PokemonViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.count()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pokemones"
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PokemonCell
        
        let pokemon = dataManager.getPokemon(at: indexPath.row)
        
        cell.pokemonLabel.text = pokemon.name
        cell.pokemonImage.image = UIImage(named: String(describing: pokemon.image))
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pokemonSeleccionado = dataManager.getPokemon(at: indexPath.row)
        performSegue(withIdentifier: "segueID", sender: pokemonSeleccionado)
    }

}
