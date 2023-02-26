//
//  PokemonListType.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 26/02/2023.
//

import SwiftUI

struct PokemonListType: View {
    let pokemonTypes: [APIType]
    
    var body: some View {
        VStack {
        ForEach(pokemonTypes, id: \.name) { type in
            
                Text(type.name)
                    .font(.subheadline).bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 4)
                    .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white.opacity(0.25))
                    )
                    .frame(width: 100, height: 24)
            }
        }
    }
}

struct PokemonListType_Previews: PreviewProvider {
    static var previews: some View {
        PokemonListType(pokemonTypes: samplePokemon.apiTypes)
    }
}
