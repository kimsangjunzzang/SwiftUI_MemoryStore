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
        
        HStack(alignment: .center, spacing: 16) {
            
            Image(location.image[0])
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text(location.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.yellow)
                
                Text(location.memo)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
                
            } //: VSTACK
        }
        
        
    }
}

// MARK: - PREVIEW
