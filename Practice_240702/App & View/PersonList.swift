import SwiftUI

struct PersonList: View {
    @StateObject private var scrollObserver = ScrollObserver()

    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(dummyPersons) { person in
                    Text(person.name)
                        .font(.title3)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(.gray.opacity(0.3))
                        .padding(.top)
                        .padding(.horizontal)
                }
            }
            .background {
                GeometryReader { geometry in
                    Color.clear
                        .preference(
                            key: VerticalOffsetPreferenceKey.self,
                            value: geometry.frame(in: .global).minY
                        )
                }
            }
        }
        .onPreferenceChange(VerticalOffsetPreferenceKey.self) { _ in
            scrollObserver.run()
        }
        .preference(
            key: IsScrollingPreferenceKey.self,
            value: scrollObserver.isScrolling
        )
    }
}

#Preview {
    PersonList()
}
