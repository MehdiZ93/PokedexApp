//
//  PokemonTypesView.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 26/02/2023.
//

import SwiftUI

struct PokemonTypesView: View {
    let pokemonType: [APIType]
    let dimension: Double = 50
    
    var body: some View {
    HStack {
        ForEach(pokemonType, id: \.name) { type in
            VStack {
                Image(uiImage: UIImage(data: try! Data(contentsOf: type.image))!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: dimension, height: dimension)
                Text(type.name)
            }
        }
    }
    }
}

struct PokemonTypesView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonTypesView(pokemonType: samplePokemon.apiTypes)
    }
}
