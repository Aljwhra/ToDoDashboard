//
//  ContentView.swift
//  ToDoDashboard
//
//  Created by Aljwhra Alnasser on 17/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    let cardArry = [
        CardTask(titile1: "Task 1 🚀", titile2: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        CardTask(titile1: "Task 2 🚀", titile2: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        CardTask(titile1: "Task 3 🚀", titile2: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        CardTask(titile1: "Task 4 🧘🏼‍♀️", titile2: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        CardTask(titile1: "Task 5 🧘🏼‍♀️", titile2: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
    ]
    
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3) // 3 columns
    
    @State private var selectedFilter: FilterType = .all
    
    var filteredCards: [CardTask] {
        switch selectedFilter {
        case .all:
            return cardArry
        case .important:
            return Array(cardArry.prefix(3))
        }
    }
        
        var body: some View {
            
            ZStack{
                Image("backgrond")
                    .resizable()
                    .ignoresSafeArea()
                
                HStack{
                    Header()
                        .padding(.bottom,670)
                    
                }
                .frame(width: 700, height: 50 , alignment: .leading)
                
                
                Search(titileSearch: "Search..")
                    .padding(.bottom,670)
                    .frame(width: 900, height: 50 , alignment: .trailing)
                
                VStack{
                    SideMenu(selectedFilter: $selectedFilter)
                    
                        .padding(.bottom,570)
                }
                .frame(width: 960, height: 100, alignment: .leading)
                
                
                Box()
                    .padding(.leading,120)
                    .padding(.top,20)
                
                LazyVGrid(columns: columns, spacing: 12){
                    
                    ForEach(filteredCards) { card in
                        card
                    }
                    
                    
                } .padding(.horizontal,-75)
                    .frame(width: 610,  height: 500 )
                    .padding(.leading,120)
                
                
                
            }
            .frame(width: 1000, height: 800)
        }
    }



enum FilterType {
    case all
    case important
}


#Preview {
    ContentView()
}



