//
//  ContentView.swift
//  GithubPractice
//
//  Created by CNU on 2023/09/05.
//

import SwiftUI

struct ContentView: View {
    @State var showModal = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, GitHub!")
            Button {
                showModal.toggle()
            } label: {
                Text("hit!")
            }

        }
        .sheet(isPresented: $showModal, content: {
            Text("new view")
        })
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
