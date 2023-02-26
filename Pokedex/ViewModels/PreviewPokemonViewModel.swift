//
//  PreviewPokemonViewModel.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 25/02/2023.
//

import Foundation
import SwiftUI

class PreviewPokemonViewModel:ObservableObject, PokemonViewModelProtocol {
    func getPokemonId(pokemon: Pokemon) -> Int {
        return 0
    }
        
    var pokemonList: [Pokemon] = [
        Pokemon(id: 1, name: "Bulbasaur", image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png", sprite: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png", stats: ["hp": 45, "attack": 49, "defense": 49, "special-attack": 65, "special-defense": 65, "speed": 45], apiTypes: [APIType(name: "Grass", image: URL(string: "https://pokebuild.io/static/media/types/grass.25b94e84.png")!)], apiGeneration: 1, apiEvolutions: []),
        Pokemon(id: 2, name: "Ivysaur", image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png", sprite: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png", stats: ["hp": 60, "attack": 62, "defense": 63, "special-attack": 80, "special-defense": 80, "speed": 60], apiTypes: [APIType(name: "Grass", image: URL(string: "https://pokebuild.io/static/media/types/grass.25b94e84.png")!), APIType(name: "Poison", image: URL(string: "https://pokebuild.io/static/media/types/poison.e170697a.png")!)], apiGeneration: 1, apiEvolutions: [])
    ]
    var searchText: String = ""
    var filteredPokemonList: [Pokemon] {
        return searchText == "" ? pokemonList : pokemonList.filter {
            $0.name.contains(searchText.lowercased())
        }
    }
}

