//
//  MemoryListItemView.swift
//  MemoryStore
//
//  Created by 김상준 on 3/24/24.
//

import SwiftUI
import UIKit

struct MemoryListItemView: View {
    
    let location: Place
    
    
    var body: some View {
        
            HStack(alignment: .center, spacing: 5) {
                
                Image(location.image[0])
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: 70)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 12)
                    )
                    Spacer()
                
                Text("Date : 2024.01.21")
                    .font(.footnote)
                    
                
                Spacer()
            }
    }
}

