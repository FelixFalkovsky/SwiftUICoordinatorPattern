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
            Text("GO")
                .bold()
                .font(.callout)
                .foregroundColor(.white)
        }
        .frame(width: UIScreen.main.bounds.width - 16, height: 50, alignment: .center)
        .background(Color.blue)
        .cornerRadius(16)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(pickNumberTapped: {})
    }
}
