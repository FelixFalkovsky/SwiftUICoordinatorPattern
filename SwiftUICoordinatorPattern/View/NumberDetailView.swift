//
//  NumberDetailView.swift
//  SwiftUICoordinatorPattern
//
//  Created by Felix on 04.01.2022.
//

import SwiftUI

struct NumberDetailView: View {
    let number: Int
    let cancel: () -> Void
    let popToRoot: () -> Void

    var body: some View {
        VStack {
            Text("\(number)")
            
            Button(action: cancel) {
                Text("Go back")
            }
            Button(action: popToRoot) {
                Text("Go back to Root")
            }
        }
    }
}

struct NumberDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NumberDetailView(number: 1, cancel: {}, popToRoot: {})
    }
}
