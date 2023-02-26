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
    @EnvironmentObject var pokemonVM: PokemonViewModel
        
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name.capitalized)
                    .font(.headline).bold()
                    .foregroundColor(.white)
                    .padding(.top, 8)
                    .padding(.leading)
                HStack {
                    PokemonListType(pokemonTypes: pokemon.apiTypes)
                    Image(uiImage: UIImage(data: try! Data(contentsOf: URL(string: pokemon.sprite)!))!)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                }
            }
        }
        .background(pokemonVM.colorMap[pokemon.apiTypes[0].name.lowercased()])
        .cornerRadius(12)
        .shadow(radius: 6, x: 0.0, y: 0.0)
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(pokemon: samplePokemon)
    }
}
