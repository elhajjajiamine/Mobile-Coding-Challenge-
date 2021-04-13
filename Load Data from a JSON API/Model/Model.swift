import SwiftUI


struct Post:Codable,Identifiable {
    let id = UUID()
    var title: Rendered
    var date: String
    var content : Rendered
    }


struct Rendered: Codable {
     var rendered: String
}

