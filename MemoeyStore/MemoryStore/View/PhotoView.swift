//
//  PhotoView.swift
//  MemoryStore
//
//  Created by 김상준 on 3/25/24.
//

import SwiftUI

struct PhotoView: View {
    
    @ObservedObject var viewModel: CameraViewModel
    
    var body: some View {
        VStack {
            if let previewImage = viewModel.recentImage{
                
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 3)
                        .foregroundColor(.white)
                        .frame(width: 75,height: 75)
                    
                    Image(uiImage: previewImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 75,height: 75)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .aspectRatio(1,contentMode: .fit)
                }
                
            }else{
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 3)
                    .foregroundColor(.white)
                    .frame(width: 75,height: 75)
            }
        }
        .background(.red)
    }
}

#Preview {
    PhotoView(viewModel: CameraViewModel())
}
