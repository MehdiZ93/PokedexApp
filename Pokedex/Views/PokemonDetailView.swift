//
//  PokemonDetailView.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 25/02/2023.
//

import SwiftUI

struct PokemonDetailView: View {
    let pokemon: Pokemon
        
        var body: some View {
            ScrollView {
                VStack {
                    Text(pokemon.name.capitalized)
                    Image(uiImage: UIImage(data: try! Data(contentsOf: URL(string: pokemon.image)!))!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    PokemonTypesView(pokemonType: pokemon.apiTypes)
                    Text("Generation : \(pokemon.apiGeneration)")
                    PokemonStatsView(stats: pokemon.stats)
                    if pokemon.apiEvolutions.count > 0 {
                        Text("Evolution de \(pokemon.name.capitalized)")
                        PokemonEvolutionsView(pokemonEvolutions: pokemon.apiEvolutions)
                    }
                }
            }
        }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: samplePokemon)
    }
}
