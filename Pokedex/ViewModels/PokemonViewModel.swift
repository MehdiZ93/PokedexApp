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
    
    var filteredPokemonList: [Pokemon] {
        return searchText == "" ? pokemonList : pokemonList.filter {
            $0.name.lowercased().contains(searchText.lowercased())
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
