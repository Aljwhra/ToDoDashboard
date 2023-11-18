//
//  SideMenu.swift
//  ToDoDashboard
//
//  Created by Aljwhra Alnasser on 17/11/2023.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var selectedFilter: FilterType
    
    var body: some View {
        
        VStack(alignment: .leading,spacing: 40){
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
        
                
              VStack(alignment: .leading, spacing: 16){
                    
                
                  Button(action: {
                      selectedFilter = .all
                  }, label: {
                      Text("My Tasks")
                      .font(.title3)
                      .foregroundColor(selectedFilter == .all ? .color1 : .gray)
                    
                  }).buttonStyle(.plain)
                    
                
                  Button(action: {
                      selectedFilter = .important
                  }, label: {
                    Text("Important Tasks")
                    .font(.title3)
                    .foregroundColor(selectedFilter == .important ? .color1 : .gray )
                  }).buttonStyle(.plain)
                
                }
               
               
                
            
            
        }
    }
}

//#Preview {
//    SideMenu()
//}
