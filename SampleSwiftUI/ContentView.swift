//
//  ContentView.swift
//  SampleSwiftUI
//
//  Created by Anton Zuev on 12/06/2019.
//  Copyright © 2019 Anton Zuev. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var showingAlert = false
    @State private var name = "Anton"
    
    var body: some View {
        NavigationView {
            HStack {
                VStack(spacing: 20.0) {
                        Text("Hello")
                        TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $name)
                            .padding(.horizontal, 15.0)
                        Button(action: {
                            self.showingAlert = true
                        }) {
                            Text("Show Alert")
                                .foregroundColor(Color.red)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("Important message"), message: Text("Welcome \(name)"), dismissButton: .default(Text("Got it!")))
                        }
                        NavigationLink(destination: DetailView()) {
                            Text("Go to Detail")
                        }
                    }.padding(.all, 10.0)
                        
                .navigationBarTitle("Main Page")
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        VStack() {
            ContentView()
        }
    }
}
#endif
