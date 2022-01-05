//
//  ContentView.swift
//  SwiftUICoordinatorPattern
//
//  Created by Felix on 04.01.2022.
//

import SwiftUI

enum Screen {
    case homeView
    case numberListView
    case numberDetailView(Int)
}

struct AppCoordinator: View {
    @State var stack: [Screen] = [.homeView]
    
    var body: some View {
        NavigationView {
            NStack(stack: $stack) { screen in
                switch screen {
                case .homeView:
                    HomeView(pickNumberTapped: showNumbers)
                case .numberListView:
                    NumberListView(numberSelected: showNumber, cancel: pop, popToRoot: popToRoot)
                case .numberDetailView(let number):
                    NumberDetailView(number: number, cancel: pop, popToRoot: popToRoot)
                }
            }
        }
    }
    
    private func showNumbers() {
        stack.append(.numberListView)
    }
    
    private func showNumber(_ number: Int) {
        stack.append(.numberDetailView(number))
    }
    
    private func pop() {
        stack = stack.dropLast()
    }
    
    private func popToRoot() {
        stack = Array(stack.prefix(1))
    }
}

struct AppCoordinator_Previews: PreviewProvider {
    static var previews: some View {
        AppCoordinator()
    }
}
