//
//  Box.swift
//  ToDoDashboard
//
//  Created by Aljwhra Alnasser on 18/11/2023.
//

import SwiftUI

struct Box: View {
    var body: some View {
        
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 800, height: 581)
         // .frame(width: 1008, height: 581)
          .background(Color(red: 1, green: 0.98, blue: 0.97))
          .cornerRadius(27)
          .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
        
//        Rectangle()
//          .foregroundColor(.clear)
//          .frame(width: 800, height: 481)
//          .background(
//            LinearGradient(
//              stops: [
//                Gradient.Stop(color: Color(red: 1, green: 0.94, blue: 0.9), location: 0.00),
//                Gradient.Stop(color: .white.opacity(0), location: 1.00),
//              ],
//              startPoint: UnitPoint(x: 0.5, y: 0),
//              endPoint: UnitPoint(x: 0.5, y: 1)
//            )
//          )
//          .cornerRadius(27)
//          .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
    }
}

#Preview {
    Box()
}
