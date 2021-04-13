//
//  DetailView.swift
//  Load Data from a JSON API
//
//  Created by elhajjaji on 12/4/2021.
//

import SwiftUI

struct DetailView: View {
    var article : Post

    var body: some View {
        VStack(alignment:.trailing, spacing: 10){
            
            ZStack(alignment: .bottomTrailing) {
                Image(systemName: "photo.fill")
                .frame(width: 350, height: 200)

          
                Text("سياسة")
                    .font(Font.custom("Al-Jazeera-Arabic-Regular", size: 12))
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.red)
                    .cornerRadius(4.0)
            }.padding()
            

            
            
            ScrollView {
                VStack (alignment:.trailing, spacing: 10){
                    Text(article.title.rendered)
                            .foregroundColor(.black)
                            .font(Font.custom("Al-Jazeera-Arabic-Regular", size: 20))
                        .multilineTextAlignment(.trailing)
                        .padding(.trailing)
                    
                    Text(article.date)
                        .font(Font.system(size:10))
                            .foregroundColor(.gray)
                            .font(.footnote)
                        .padding(.trailing)
                    
                    Text(article.content.rendered)
                            .foregroundColor(.black)
                            .font(Font.custom("Al-Jazeera-Arabic-Regular", size: 12))
                            .multilineTextAlignment(.trailing)
                            .padding()
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
            
            
            }
    }
}

