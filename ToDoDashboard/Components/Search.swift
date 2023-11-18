//
//  Search.swift
//  ToDoDashboard
//
//  Created by Aljwhra Alnasser on 18/11/2023.
//

import SwiftUI

struct Search: View {
    
    
   // @State var Search = ""
    
    var titileSearch: String
    
    var body: some View {
        HStack(alignment:.lastTextBaseline){
            
         
            Text(titileSearch)
              .foregroundColor(.gray)
              .font(.caption)
            
            Image(systemName:"magnifyingglass")
                .foregroundColor(.black)
                .padding(.leading,80)
              
                .font(.caption)
        }
        .frame(width: 140, height: 34, alignment: .leading)
        .padding(.horizontal)
        .background(
            RoundedRectangle(cornerRadius: 30)
            .fill(Color(red: 0.97, green: 0.97, blue: 0.97))
           

         .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
        
        )


        
    }
    
}

#Preview {
    Search(titileSearch: "Search..")
}
