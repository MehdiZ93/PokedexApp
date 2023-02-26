//
//  Pokemon.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 22/02/2023.
//

import Foundation

struct Pokemon: Codable, Identifiable, Equatable {
    static func ==(lhs: Pokemon, rhs: Pokemon) -> Bool {
        return lhs.id == rhs.id
    }
    
    let id: Int
    let name: String
    let image: String
    let sprite: String
    let stats: [String: Int]
    let apiTypes: [APIType]
    let apiGeneration: Int
    let apiEvolutions: [APIEvolution]
}

struct APIType: Codable {
    let name: String
    let image: URL
}

struct APIEvolution: Codable {
    let name: String
    let pokedexId: Int
}

let samplePokemon = Pokemon(id: 1, name: "Bulbasaur", image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png", sprite: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png", stats: ["HP": 45, "attack": 49, "defense": 49, "special_attack": 65, "special_defense": 65, "speed": 45], apiTypes: [APIType(name: "Poison", image: URL(string: "https://static.wikia.nocookie.net/pokemongo/images/0/05/Poison.png")!), APIType(name: "Plant", image: URL(string: "https://static.wikia.nocookie.net/pokemongo/images/c/c5/Grass.png")!)], apiGeneration: 1, apiEvolutions: [APIEvolution(name: "Ivysaur", pokedexId: 2)])
