//
//  NStack.swift
//  SwiftUICoordinatorPattern
//
//  Created by Felix on 04.01.2022.
//

import SwiftUI

struct NStack<Screen, ScreenView: View> {
    @Binding var stack: [Screen]
    @ViewBuilder var buildView: (Screen) -> ScreenView
    
    var body: some View {
            stack
                .enumerated()
                .reversed()
                .reduce(NavigationNode<Screen, ScreenView>.end) { pushedNode, new in
                    let (index, screen) = new
                    return NavigationNode<Screen, ScreenView>.view(
                        buildView(screen),
                        pushing: pushedNode,
                        stack: $stack,
                        index: index
                    )
                }
        }
}
