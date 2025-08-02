//
//  PokemonDataManager.swift
//  MVCUI
//
//  Created by Victoria Ortega on 01/08/25.
//

import Foundation

class PokemonDataManager {
    private var pokemons: [Pokemon] = []
    
    let pokemonDictionary: [Int: String] = [
        0: "Wartortle",
        1: "Bulbasaur",
        2: "Blastoise",
        3: "Butterfree",
        4: "Ivysaur",
        5: "Jigglypuff",
        6: "Charmander",
        7: "Meowth",
        8: "Alakazam",
        9: "Pidgeotto",
        10: "Raichu",
        11: "Rattata",
        12: "Vaporeon",
        13: "Jynx",
        14: "Venusaur",
        15: "Vulpix",
        16: "Slowbro",
        17: "Seel",
        18: "Fearow",
        19: "Wigglytuff",
        20: "Scyther",
        21: "Golduck",
        22: "Lapras",
        23: "Sandshrew"
    ]

    let movimientos: [Int: String] = [
        0: "Hidrobomba",
        1: "Látigo cepa",
        2: "Pistola agua",
        3: "Tornado",
        4: "Hoja afilada",
        5: "Canto",
        6: "Lanza llamas",
        7: "Golpe bajo",
        8: "Psíquico",
        9: "Ataque ala",
        10: "Impactrueno",
        11: "Placaje",
        12: "Aqua cola",
        13: "Rayo hielo",
        14: "Gigadrenado",
        15: "Ascuas",
        16: "Psico rayo",
        17: "Aurora beam",
        18: "Picotazo",
        19: "Doble bofetón",
        20: "Tajo cruzado",
        21: "Hidrochorro",
        22: "Canto helado",
        23: "Excavar"
    ]

    let habilidades: [Int: String] = [
        0: "Torrente",
        1: "Espesura",
        2: "Armadura cáscara",
        3: "Ojo compuesto",
        4: "Espesura",
        5: "Gran encanto",
        6: "Mar llamas",
        7: "Experto",
        8: "Sincronía",
        9: "Vista lince",
        10: "Electricidad estática",
        11: "Fuga",
        12: "Absorbe agua",
        13: "Despiste",
        14: "Clorofila",
        15: "Absorber fuego",
        16: "Ritmo propio",
        17: "Nado rápido",
        18: "Vista lince",
        19: "Gran encanto",
        20: "Enjambre",
        21: "Nado rápido",
        22: "Absorbe agua",
        23: "Velo arena"
    ]

    func fetch() {
        for (key, name) in pokemonDictionary {
            let movimiento = movimientos[key] ?? "Movimiento desconocido"
            let habilidad = habilidades[key] ?? "Habilidad desconocida"
            
            pokemons.append(Pokemon(imageId: key, name: name, movimiento: movimiento, habilidad: habilidad))
        }
    }
    
    func getPokemon(at index: Int) -> Pokemon {
        return pokemons[index]
    }
    
    func count() -> Int {
        return pokemons.count
    }
}
