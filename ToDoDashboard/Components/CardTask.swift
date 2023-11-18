//
//  CardTask.swift
//  ToDoDashboard
//
//  Created by Aljwhra Alnasser on 18/11/2023.
//

import SwiftUI

struct CardTask: View , Identifiable {
    
    var id = UUID()
    var titile1: String
    var titile2: String
    
    var body: some View {
        
        VStack(alignment: .center){
            
          Text(titile1)
                .font(.title2)
                .foregroundStyle(.color1)
            
            Text(titile2)
                .multilineTextAlignment(.center)
                .font(.callout)
                .foregroundStyle(.black.opacity(0.5))
                .padding(.all,10)
        }
        .frame(width: 245, height: 163)
        .background(
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(red: 1, green: 0.93, blue: 1))
            
        )
       
        
       
    }
}

#Preview {
    CardTask(titile1: "ghjk", titile2: "tcyvujbcyhj xtcyhvujbkln xcfvgib jjkl gh")
}
