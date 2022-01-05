//
//  NumberListView.swift
//  SwiftUICoordinatorPattern
//
//  Created by Felix on 04.01.2022.
//

import SwiftUI

struct NumberListView: View {
    let numberSelected: (Int) -> Void
    let cancel: () -> Void
    let popToRoot: () -> Void

    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 0) {
                Button(action: cancel) {
                    Text("Go back")
                        .font(.headline)
                }
                .padding(4)
                Spacer()
                Button(action: popToRoot) {
                    Text("Go back to Root")
                        .font(.headline)
                }
                .padding(4)
            }
            List(1 ... 100, id: \.self) { number in
                Button("\(number)") {
                    numberSelected(number)
                }
            }
            .listStyle(.grouped)
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct NumberListView_Previews: PreviewProvider {
    static var previews: some View {
        NumberListView(numberSelected: { _ in }, cancel: {}, popToRoot: {})
    }
}
