//
//  PokemonService.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 22/02/2023.
//

import Foundation

class PokemonService {
    func fetchPokemon(completion: @escaping ([Pokemon]?) -> Void) {
        guard let url = URL(string: "https://pokebuildapi.fr/api/v1/pokemon") else {
            completion(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let pokemonResponse = try decoder.decode([Pokemon].self, from: data)
                completion(pokemonResponse)
            } catch {
                completion(nil)
            }
        }
        task.resume()
    }
}
