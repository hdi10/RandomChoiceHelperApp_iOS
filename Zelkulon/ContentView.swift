//
//  ContentView.swift
//  Zelkulon
//
//  Created by Harun Dastekin on 08.05.22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingOptions = false
    @State private var selection = "None"
    
    @State private var showingOptions_RandomInt = false
    @State private var machineGeneratedNumber = "helloword"
    @State private var testword = "heLLoWoRld"
    
    var body: some View {
    
        ScrollView{
        
        VStack{
            Text("Wilkommen bei Zelkulon")
                .padding()
            Spacer()
            VStack{
            
                Text("Randomnumber").
                Spacer()
                Text("Randomword")
                Spacer()
                Text("MyRandomNumber")
                Spacer()
                Text("DatabaseCRUD")
                
            }
            Spacer()
            
            VStack{
            Text(selection).padding()
            
           
                Text(randomElement())
            }
            
            Spacer()
            VStack{
                Picker(selection: .constant(1), label: Text("Wählen Sie Ratefunktion")) {
                    Text("Zahlenbereich 100").tag(1)
                    Text("Zahlenbereich 1000").tag(2)
                    
                }.padding()
                
                
                Button("Siehe letzte Versuchergebnisse") {
                    showingOptions = true
                }.confirmationDialog("Wählen SIe die Farbe", isPresented: $showingOptions, titleVisibility: .visible){
                
                
                    Button("Red") {
                        selection = "Red"
                    }
                    Button("Green"){
                        selection="Green"
                    }
                    Button("Blue"){
                        selection="Blue"
                    }
                //.font(.largeTitle).fontWeight(.bold).padding()
                
              //  Button("Öffne Lübeck IP CAM").font(.largeTitle).fontWeight(.bold).padding()
                }
            }
        
        }
        
    }
    }
    func randomElement()->String {
        let index = Int.random(in:0...100)
        return "\(index)"
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
