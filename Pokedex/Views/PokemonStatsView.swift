//
//  PokemonStatsView.swift
//  Pokedex
//
//  Created by Mehdi Zerfaoui on 25/02/2023.
//

import SwiftUI

struct PokemonStatsView: View {
    let stats: [String: Int]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ForEach(stats.sorted(by: { $0.value > $1.value }), id: \.key) { stat in
                HStack {
                    Text(stat.key.capitalized.replacingOccurrences(of: "_", with: " "))
                        .fontWeight(.semibold)
                        .frame(width: 100, alignment: .leading)
                    ProgressView(value: Double(stat.value), total: 255)
                        .accentColor(Color(.orange))
                    Text("\(stat.value)")
                        .fontWeight(.semibold)
                }
            }
        }
        .padding(.horizontal, 4)
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}

struct PokemonStatsView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonStatsView(stats: samplePokemon.stats)
    }
}
