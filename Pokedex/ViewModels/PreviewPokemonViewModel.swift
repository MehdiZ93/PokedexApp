//
//  PreviewPokemonViewModel.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 25/02/2023.
//

import Foundation
import SwiftUI

class PreviewPokemonViewModel:ObservableObject, PokemonViewModelProtocol {
    @Published var pokemonList: [Pokemon] = [
        Pokemon(id: 1,
                                 name: "Bulbizarre",
                                 image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
                                 sprite: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png",
                                 stats: [
                                    "HP": 45,
                                    "attack": 49,
                                    "defense": 49,
                                    "special_attack": 65,
                                    "special_defense": 65,
                                    "speed": 45
                                 ],
                                 apiTypes: [
                                    APIType(name: "Poison",
                                            image: URL(string: "https://static.wikia.nocookie.net/pokemongo/images/0/05/Poison.png")!),
                                    APIType(name: "Plante",
                                            image: URL(string: "https://static.wikia.nocookie.net/pokemongo/images/c/c5/Grass.png")!)
                                 ],
                                 apiGeneration: 1,
                                 apiEvolutions: [
                                    APIEvolution(name: "Herbizarre", pokedexId: 2)
                                 ]
                                 //apiPreEvolution: [],
                                 /*apiResistances: [
                                    ApiResistance(name: "Normal", damage_multiplier: 1, damage_relation: "neutral"),
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
                                    ApiResistance(name: "Fée", damage_multiplier: 0.5, damage_relation: "resistant")
                                 ]*/),
        Pokemon(id: 2,
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
    ]
    @Published var searchText: String = ""
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
            $0.name.contains(searchText.lowercased())
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

