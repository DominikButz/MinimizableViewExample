//
//  ContentView.swift
//  MinimizableViewExample_MacOS
//
//  Created by Dominik Butz on 16/2/2023.
//  Copyright © 2023 Duoyun. All rights reserved.
//

import SwiftUI
import MinimizableView

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
