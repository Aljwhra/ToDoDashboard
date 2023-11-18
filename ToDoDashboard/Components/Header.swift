//
//  Header.swift
//  ToDoDashboard
//
//  Created by Aljwhra Alnasser on 17/11/2023.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack(spacing: 16){
            Text("Aljwhra Alnasser")
                .font(.title2)
                .foregroundStyle(.black)
                Image("sticker")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30,height: 30)
        }
    }
}

#Preview {
    Header()
}
