import Foundation
import Observation

@MainActor
@Observable
class DriverViewModel {
    var pilotos: [Driver] = []
    var estaCarregando = false
    var mensagemErro: String?

    private let service = F1Service()

    func carregarPilotos() async {
        estaCarregando = true
        mensagemErro = nil

        do {
            let todos = try await service.buscarPilotos()
            pilotos = Array(todos.prefix(5))
        } catch {
            mensagemErro = "Não foi possível carregar os pilotos. Verifique sua conexão e tente novamente."
        }

        estaCarregando = false
    }
}
