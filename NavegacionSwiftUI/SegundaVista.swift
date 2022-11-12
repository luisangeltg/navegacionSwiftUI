//
//  SegundaVista.swift
//  NavegacionSwiftUI
//
//  Created by Luis Angel Torres G on 12/11/22.
//

import SwiftUI

struct SegundaVista: View {
    var texto: String
    var body: some View {
        Text("Segunda Vista")
            .navigationTitle(texto)
        NavigationLink(destination: TercerVista()){
            Text("Ir a tercer vista")
        }
    }
}
