//
//  HomeView.swift
//  SwiftUICoordinatorPattern
//
//  Created by Felix on 04.01.2022.
//

import SwiftUI

struct HomeView: View {
    let pickNumberTapped: () -> Void
    var body: some View {
        Button(action: pickNumberTapped) {
            Text("Pick Number")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(pickNumberTapped: {})
    }
}
