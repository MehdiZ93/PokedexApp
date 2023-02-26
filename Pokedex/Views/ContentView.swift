//
//  ContentView.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 22/02/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var pokemonVM = PokemonViewModel()
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("\(pokemonVM.filteredPokemonList.count) pokemons")
                LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                    ForEach(pokemonVM.filteredPokemonList) { pokemon in
                        NavigationLink(destination: PokemonDetailView(pokemon: pokemon)) {
                            PokemonView(pokemon: pokemon)
                        }
                    }
                }
                .animation(.easeIn(duration: 0.3), value: pokemonVM.filteredPokemonList.count)
                .navigationTitle("Pokedex")
                .navigationBarTitleDisplayMode(.inline)
            }
            .searchable(text: $pokemonVM.searchText)
        }
        .environmentObject(pokemonVM)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PreviewPokemonViewModel())
    }
}
