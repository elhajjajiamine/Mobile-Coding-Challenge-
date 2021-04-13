//
//  DetailView.swift
//  Load Data from a JSON API
//
//  Created by elhajjaji on 12/4/2021.
//

import SwiftUI

struct CardView: View {
    var article : Post
    var isLast : Bool
    
    var body: some View {
        VStack (alignment:.trailing, spacing: 10){
            ZStack(alignment: .bottomTrailing) {
                Image(systemName: "photo.fill")
                .frame(width: 350, height: 200)

          
                Text("سياسة")
                    .font(Font.custom("Al-Jazeera-Arabic-Regular", size: 12))
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.red)
                    .cornerRadius(4.0)
            }
        
            Text(article.title.rendered)
                    .foregroundColor(.black)
                    .font(Font.custom("Al-Jazeera-Arabic-Regular", size: 15))
                    .multilineTextAlignment(.trailing)



            if self.isLast {
            Text(article.date)
                .font(Font.system(size:8))
                    .foregroundColor(.gray)
                    .font(.footnote)
                .onAppear{
                    print("LoadDAta")
                }
            }
            else {
                
            }
            
    

        }
    }
}


