//
//  ContentView.swift
//  TempProj
//
//  Created by David Fekke on 10/14/19.
//  Copyright © 2019 David Fekke. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isWatchingState = false
    @State var presenting = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: HorizontalAlignment.leading) {
                Text("Hello JaxNode")
                Text("Another One")
                Toggle(isOn: $isWatchingState) {
                    Text("Is Watching")
                }
                NavigationLink(destination: ChildView(watch: $isWatchingState)) {
                    Text("Push Me!")
                }
            }
            .padding(.all)
            .navigationBarTitle("Test")
        }
        
    }
}

struct ChildView: View {
    @Binding var watch: Bool
    var body: some View {
        Text("Are you watched? \(watch ? "Yes" : "No")")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

