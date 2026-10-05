import Foundation

struct F1Service {
    let url = URL(string: "https://api.openf1.org/v1/drivers?session_key=latest")!

    func buscarPilotos() async throws -> [Driver] {
        let (data, _) = try await URLSession.shared.data(from: url)
        let pilotos = try JSONDecoder().decode([Driver].self, from: data)
        return pilotos
    }
}
