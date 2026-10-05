import Foundation

enum Categoria: String, CaseIterable, Hashable, Identifiable {
    case pilotos
    case equipes
    case reversa

    var id: String { rawValue }

    var titulo: String {
        switch self {
        case .pilotos: return "Pilotos"
        case .equipes: return "Equipes"
        case .reversa: return "Fundo do Grid"
        }
    }

    var subtitulo: String {
        switch self {
        case .pilotos: return "Os primeiros nomes do grid"
        case .equipes: return "Um piloto de cada escuderia"
        case .reversa: return "Quem larga lá atrás"
        }
    }

    var icone: String {
        switch self {
        case .pilotos: return "person.fill"
        case .equipes: return "flag.checkered"
        case .reversa: return "arrow.counterclockwise"
        }
    }
}
