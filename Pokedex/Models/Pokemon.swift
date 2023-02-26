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
    //let apiPreEvolution: [ApiPreEvolution]
    //let apiResistances: [ApiResistance]
}

struct APIType: Codable {
    let name: String
    let image: URL
}

struct APIEvolution: Codable {
    let name: String
    let pokedexId: Int
}

struct ApiResistance: Codable {
    let name: String
    let damage_multiplier: Double
    let damage_relation: String
}

struct ApiPreEvolution: Codable {
    let name: String
    let pokedexIdd: Int
}

let samplePokemon = Pokemon(id: 2,
                         name: "Herbizarre",
                         image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png",
                         sprite: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png",
                         stats: ["HP": 60, "attack": 62, "defense": 63, "special_attack": 80, "special_defense": 80, "speed": 60],
                         apiTypes: [APIType(name: "Poison", image: URL(string: "https://static.wikia.nocookie.net/pokemongo/images/0/05/Poison.png")!), APIType(name: "Plante", image: URL(string: "https://static.wikia.nocookie.net/pokemongo/images/c/c5/Grass.png")!)],
                         apiGeneration: 1,
                         apiEvolutions: [APIEvolution(name: "Florizarre", pokedexId: 3)]
                         //apiPreEvolution: [ApiPreEvolution(name: "Bulbizarre", pokedexIdd: 1)],
                         /*apiResistances: [ApiResistance(name: "Normal", damage_multiplier: 1, damage_relation: "neutral"),
                                          ApiResistance(name: "Combat", damage_multiplier: 0.5, damage_relation: "resistant"),
                                          ApiResistance(name: "Vol", damage_multiplier: 2, damage_relation: "vulnerable"),
                                          ApiResistance(name: "Poison", damage_multiplier: 1, damage_relation: "neutral"),
                                          ApiResistance(name: "Sol", damage_multiplier: 1, damage_relation: "neutral"),
                                          ApiResistance(name: "Roche", damage_multiplier: 1, damage_relation: "neutral"),
                                          ApiResistance(name: "Insecte", damage_multiplier: 1, damage_relation: "neutral"),
                                          ApiResistance(name: "Spectre", damage_multiplier: 1, damage_relation: "neutral"),
                                          ApiResistance(name: "Acier", damage_multiplier: 1, damage_relation: "neutral"),
                                          ApiResistance(name: "Feu", damage_multiplier: 2, damage_relation: "vulnerable"),
                                          ApiResistance(name: "Eau", damage_multiplier: 0.5, damage_relation: "resistant"),
                                          ApiResistance(name: "Plante", damage_multiplier: 0.25, damage_relation: "twice_resistant"),
                                          ApiResistance(name: "Électrik", damage_multiplier: 0.5, damage_relation: "resistant"),
                                          ApiResistance(name: "Psy", damage_multiplier: 2, damage_relation: "vulnerable"),
                                          ApiResistance(name: "Glace", damage_multiplier: 2, damage_relation: "vulnerable"),
                                          ApiResistance(name: "Dragon", damage_multiplier: 1, damage_relation: "neutral"),
                                          ApiResistance(name: "Ténèbres", damage_multiplier: 1, damage_relation: "neutral"),
                                          ApiResistance(name: "Fée", damage_multiplier: 0.5, damage_relation: "resistant")]*/)

