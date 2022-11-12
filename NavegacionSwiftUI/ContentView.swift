//
//  ContentView.swift
//  NavegacionSwiftUI
//
//  Created by Luis Angel Torres G on 12/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    @State private var texto = ""
    
    var body: some View {
        
        NavigationView{
            VStack {
                TextField("Texto", text: $texto);
                
                NavigationLink(destination: SegundaVista(texto: texto)){
                    Text("Segunda vista")
                }
                Button("Abrir modal"){
                    show.toggle()
                }
                .sheet(isPresented: $show){
                    VentanaModal(texto: texto)
                }.navigationTitle("Navegación")
                    .toolbar{
                        HStack{
                            NavigationLink(destination: SegundaVista(texto: texto)){
                                Image(systemName: "plus")
                            }
                            NavigationLink(destination: SegundaVista(texto: texto)){
                                Image(systemName: "camera")
                            }
                        }
                        
                    }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
