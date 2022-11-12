//
//  VentanaModal.swift
//  NavegacionSwiftUI
//
//  Created by Luis Angel Torres G on 12/11/22.
//

import SwiftUI

struct VentanaModal: View {
    @Environment(\.presentationMode) var back
    var texto: String
    
    var body: some View {
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack{
                Text("Ventana Modal").font(.title)
                    .foregroundColor(.white)
                    .bold()
                Button("Cerrar"){
                    back.wrappedValue.dismiss()
                }
            }
        }
    }
}

