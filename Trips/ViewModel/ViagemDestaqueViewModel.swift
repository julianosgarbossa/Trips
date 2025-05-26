//
//  ViagemDestaqueViewModel.swift
//  Trips
//
//  Created by Juliano Sgarbossa on 26/05/25.
//

import Foundation

class ViagemDestaqueViewModel: ViagemViewModel {
    
    var tituloSessao: String {
        return "Destaques"
    }
    
    var tipo: ViagemViewModelType {
        return .destaques
    }
    
    var viagens: [Viagem]
    
    var numeroDeLinhas: Int {
        return viagens.count
    }
    
    init(viagens: [Viagem]) {
        self.viagens = viagens
    }
}
