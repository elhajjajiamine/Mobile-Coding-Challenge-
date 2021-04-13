//
//  JsonViewModel.swift
//  Load Data from a JSON API
//
//  Created by elhajjaji on 13/4/2021.
//

import Foundation
import CoreData

class Api : ObservableObject {
    @Published var posts:[Post] = []

    //Saving JSON to Core Data
    func saveData(context:NSManagedObjectContext){
        posts.forEach { (data) in
            let entity = Article(context: context)
            entity.content = data.content.rendered
            entity.date = data.date
            entity.title = data.title.rendered
     
        }
        
        // saving all pandin data once
        do {
            try context.save()
            print("succes")
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func getPosts(context: NSManagedObjectContext, completion: @escaping ([Post]) ->()) {
        let purl  = "http://soltana.ma/wp-json/wp/v2/posts?page="
        var nextPageToLoad = 1
        
        guard let url = URL(string: purl + "\(nextPageToLoad)") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
                self.saveData(context: context)

            }
        }
        .resume()
    }
}
