//
//  ViagemViewModel.swift
//  Trips
//
//  Created by Juliano Sgarbossa on 26/05/25.
//

import Foundation

enum ViagemViewModelType: String {
    case destaques
    case ofertas
    case internacionais
}

protocol ViagemViewModel {
    var tituloSessao: String { get }
    var tipo: ViagemViewModelType { get }
    var viagens: [Viagem] { get set }
    var numeroDeLinhas: Int { get }
}
