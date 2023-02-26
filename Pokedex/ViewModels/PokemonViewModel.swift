//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 25/02/2023.
//

import Foundation
import SwiftUI

final class PokemonViewModel: ObservableObject, PokemonViewModelProtocol {
    private let pokemonService = PokemonService()
    private let imageService = ImageService()
    @Published var pokemonList = [Pokemon]()
    @Published var searchText = ""
    let colorMap: [String: Color] = [
        "feu": Color(red: 238/255, green: 129/255, blue: 48/255) /* #ee8130 */,
        "plante": Color(red: 122/255, green: 199/255, blue: 76/255) /* #7ac74c */,
        "eau": Color(red: 99/255, green: 144/255, blue: 240/255) /* #6390f0 */,
        "combat": Color(red: 194/255, green: 46/255, blue: 40/255) /* #c22e28 */,
        "vol": Color(red: 169/255, green: 143/255, blue: 243/255) /* #a98ff3 */,
        "normal": Color(red: 168/255, green: 167/255, blue: 122/255) /* #a8a77a */,
        "sol": Color(red: 226/255, green: 191/255, blue: 101/255) /* #e2bf65 */,
        "roche": Color(red: 182/255, green: 161/255, blue: 54/255) /* #b6a136 */,
        "insecte": Color(red: 166/255, green: 185/255, blue: 26/255) /* #a6b91a */,
        "spectre": Color(red: 115/255, green: 87/255, blue: 151/255) /* #735797 */,
        "électrik": Color(red: 247/255, green: 208/255, blue: 44/255) /* #f7d02c */,
        "psy": Color(red: 249/255, green: 85/255, blue: 135/255) /* #f95587 */,
        "glace": Color(red: 150/255, green: 217/255, blue: 214/255) /* #96d9d6 */,
        "dragon": Color(red: 111/255, green: 53/255, blue: 252/255) /* #6f35fc */,
        "ténèbres": Color(red: 112/255, green: 87/255, blue: 70/255) /* #705746 */,
        "fée": Color(red: 214/255, green: 133/255, blue: 173/255) /* #d685ad */,
        "poison": Color(red: 163/255, green: 62/255, blue: 161/255) /* #a33ea1 */,
        "acier": Color(red: 183/255, green: 183/255, blue: 206/255) /* #b7b7ce */
    ]

    var filteredPokemonList: [Pokemon] {
        return searchText == "" ? pokemonList : pokemonList.filter {
            $0.name.folding(options: [.diacriticInsensitive, .caseInsensitive], locale: nil).contains(searchText.folding(options: [.diacriticInsensitive, .caseInsensitive], locale: nil))
        }
    }
    
    init() {
        pokemonService.fetchPokemon() { data in
            DispatchQueue.main.async {
                    self.pokemonList = data ?? [samplePokemon]
            }
        }
    }
    
    func getPokemonId(pokemon: Pokemon) -> Int {
        if let index = self.pokemonList.firstIndex(of: pokemon) {
            return index + 1
        }
        return 0
    }
    
    func getPokemonByName(name: String) -> Pokemon? {
        return pokemonList.first(where: {
            $0.name.lowercased() == name.lowercased()
        }) ?? nil
    }
    
    
}
