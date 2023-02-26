//
//  PokemonTypesView.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 26/02/2023.
//

import SwiftUI

struct PokemonTypesView: View {
    let pokemonType: [APIType]
    let dimension: Double = 30
    @EnvironmentObject var pokemonVM: PokemonViewModel
    
    var body: some View {
    HStack {
        ForEach(pokemonType, id: \.name) { type in
            VStack {
                Image(uiImage: UIImage(data: try! Data(contentsOf: type.image))!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: dimension, height: dimension)
                Text(type.name)
                    .font(.subheadline).bold()
                    .foregroundColor(.white)
                    .padding(.horizontal, 4)
                    .frame(width: 100, height: 24)
                    .background(pokemonVM.colorMap[type.name.lowercased()])
                    .cornerRadius(12)
            }
        }
    }
    }
}

struct PokemonTypesView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonTypesView(pokemonType: samplePokemon.apiTypes)
            .environmentObject(PreviewPokemonViewModel())
    }
}
