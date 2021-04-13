//
//  ContentView.swift
//  Load Data from a JSON API
//
//  Created by elhajjaji on 12/4/2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var posts:[Post] = []
    var article : Post
    @State var rows: [String] = Array(repeating: "Item", count: 20)

    //Fetching data from Core Data
    @Environment(\.managedObjectContext) var context

    var body: some View {
        
        NavigationView{
            
        List(posts) { post in
            
            
            //Display fetched Json Data
            NavigationLink(
                
                destination: DetailView(article: post),
                label: {
                    CardView(article: post, isLast: true)
                })
            //Fetching Data
            }.onAppear{
                Api().getPosts(context: context) { (posts) in
                    self.posts = posts
                    
                   
                }

            }
        .navigationTitle("News")
        .navigationBarColor(backgroundColor:.red, tintColor: .white)
        .toolbar {
                           ToolbarItemGroup(placement: .navigationBarTrailing) {
                            Button(action: {}, label: {
                                Image(systemName: "text.alignright")
                            })
                           }
        }
        }
    }

}


