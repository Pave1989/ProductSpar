//
//  MainView.swift
//  CardProduct
//
//  Created by Павел Галкин on 05.02.2024.
//

import SwiftUI

struct MainTabView: View {
    
    init() {
      UITabBar.appearance().unselectedItemTintColor = UIColor.black
    }
    var body: some View {
        
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "pin.circle")
                        
                    Text("Главная")
                        
                }
            Text("Каталог")
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Каталог")
                }
            Text("Корзина")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Корзина")
                }
            Text("Профиль")
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
        }
        .accentColor(.green)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
