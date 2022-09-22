//
//  ContentView.swift
//  SwipeActions
//
//  Created by Juan Camilo Marín Ochoa on 22/09/22.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(1..<5) { i in
                        Text("\(i)")
                            .swipeActions(edge: .leading) {
                                Button {
                                    counter += i
                                } label: {
                                    Label("Sumar \(i)", systemImage: "plus.circle")
                                }
                                .tint(.blue)
                            }
                            .swipeActions(edge: .trailing) {
                                Button {
                                    counter -= i
                                } label: {
                                    Label("Restar \(i)", systemImage: "minus.circle")
                                }
                                .tint(.red)
                            }
                    }
                }
                
                Section {
                    ForEach(1..<5) { i in
                        Text("\(i)")
                            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                                Button("Sumar") {
                                    counter += i
                                }
                                .tint(.blue)
                                
                                Button("Restar") {
                                    counter -= i
                                }
                                .tint(.red)
                            }
                    }
                }
            }
            .navigationTitle("Contador: \(counter)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
