//
//  PokemonViewModelProtocol.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 25/02/2023.
//

import Foundation

protocol PokemonViewModelProtocol {
    var pokemonList: [Pokemon] { get set }
    var searchText: String { get set }
    
    var filteredPokemonList: [Pokemon] { get }
    
    func getPokemonId(pokemon: Pokemon) -> Int
}
