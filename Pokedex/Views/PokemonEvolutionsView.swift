//
//  PokemonEvolutionsView.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 26/02/2023.
//

import SwiftUI

struct PokemonEvolutionsView: View {
    @EnvironmentObject var pokemonVM: PokemonViewModel
    let pokemonEvolutions : [APIEvolution]
    let dimension: Double = 50
    
    var body: some View {
        VStack {
            ForEach(pokemonEvolutions, id: \.name) { evoltion in
                let pokemon = pokemonVM.getPokemonByName(name: evoltion.name)
                NavigationLink(destination: PokemonDetailView(pokemon: pokemon!)) {
                    
                    Image(uiImage: UIImage(data: try! Data(contentsOf: URL(string: pokemon!.image)!))!)
                        .resizable()
                        .scaledToFit()
                        .frame(width: dimension, height: dimension)
                    Text(pokemon!.name)
                }
            }
        }
    }
}

struct PokemonEvolutionsView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonEvolutionsView(pokemonEvolutions: samplePokemon.apiEvolutions)
            .environmentObject(PreviewPokemonViewModel())
    }
}
