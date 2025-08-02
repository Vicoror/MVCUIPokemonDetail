//
//  PokemonCell.swift
//  MVCUI
//
//  Created by Victoria Ortega on 01/08/25.
//

import UIKit

class PokemonCell: UITableViewCell {
    
    @IBOutlet weak var pokemonLabel: UILabel!
    
    @IBOutlet weak var pokemonImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
