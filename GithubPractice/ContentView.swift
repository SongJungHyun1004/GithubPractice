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
        TabView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, GitHub!")
                Button {
                    showModal.toggle()
                } label: {
                    Text("show!")
                }
            }
            .sheet(isPresented: $showModal, content: {
                Text("new view")
            })
            .padding()
            .tabItem {
                Text("home")
            }
            Text("view2")
                .tabItem {
                    Text("view")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
