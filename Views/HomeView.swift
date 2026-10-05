import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [.black, Color(red: 0.5, green: 0.0, blue: 0.05)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("F1 HUB")
                            .font(.system(size: 56, weight: .black, design: .rounded))
                            .italic()
                            .foregroundStyle(.white)
                        Text("Explore o grid da Fórmula 1")
                            .font(.headline)
                            .foregroundStyle(.white.opacity(0.7))
                    }
                    .padding(.bottom, 12)

                    ForEach(Categoria.allCases) { categoria in
                        CategoriaCard(categoria: categoria)
                    }

                    Spacer()
                }
                .padding(24)
            }
        }
    }
}

struct CategoriaCard: View {
    let categoria: Categoria

    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: categoria.icone)
                .font(.title)
                .foregroundStyle(.white)
                .frame(width: 56, height: 56)
                .background(Color.red, in: RoundedRectangle(cornerRadius: 14))

            VStack(alignment: .leading, spacing: 2) {
                Text(categoria.titulo)
                    .font(.title3.bold())
                    .foregroundStyle(.white)
                Text(categoria.subtitulo)
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.7))
            }

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundStyle(.white.opacity(0.5))
        }
        .padding(16)
        .background(.white.opacity(0.1), in: RoundedRectangle(cornerRadius: 20))
    }
}
