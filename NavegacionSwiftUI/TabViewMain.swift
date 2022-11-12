//
//  TabViewMain.swift
//  NavegacionSwiftUI
//
//  Created by Luis Angel Torres G on 12/11/22.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                Label("Home", systemImage: "house.fill")
            }
            SegundaVista(texto: "Titulo 2").tabItem{
                Label("Vista 2", systemImage: "plus")
            }
            TercerVista().tabItem{
                Label("Camara", systemImage: "camera")
            }
        }
    }
}
