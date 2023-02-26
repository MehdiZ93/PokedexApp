//
//  PokemonView.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 22/02/2023.
//

import SwiftUI

struct PokemonView: View {
    let pokemon: Pokemon
    let dimension: Double = 140
        
    var body: some View {
        VStack {
            Image(uiImage: UIImage(data: try! Data(contentsOf: URL(string: pokemon.sprite)!))!)
                .resizable()
                .scaledToFit()
                .frame(width: dimension, height: dimension)
            Text(pokemon.name.capitalized)
        }
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(pokemon: samplePokemon)
    }
}
