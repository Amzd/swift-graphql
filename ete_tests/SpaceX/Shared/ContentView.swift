//
//  ContentView.swift
//  Shared
//
//  Created by Casper Zandbergen on 27/01/2021.
//

import SwiftUI
import SwiftGraphQL

struct ContentView: View {
    @State var token: Token?
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                let userId = Selection<String, Objects.Users> {
                    try $0.id()
                }
                
                let subscription = Selection { (fields: Fields<Operations.Subscription>) in
                    try fields.users(limit: .present(10), .list(userId))
                }
                
                let endpoint = "wss://api.spacex.land/graphql/"
                
                token = SG.listen(subscription, to: endpoint, onEvent: { result in
                    print(result)
                })
            }
    }
}


