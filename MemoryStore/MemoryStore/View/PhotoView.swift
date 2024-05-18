//
//  PhotoView.swift
//  MemoryStore
//
//  Created by 김상준 on 3/25/24.
//

import SwiftUI

struct PhotoView: View {
    
    @ObservedObject var viewModel: CameraViewModel
    @State private var action: Int? = 0
    
    var body: some View {
        NavigationStack{
            VStack {
                if let previewImage = viewModel.recentImage{
                    Image(uiImage: previewImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height * 2 / 3)
                }else{
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height * 2 / 3)
                    
                }
                Spacer()
                
                NavigationLink(destination: PlusView(), tag: 1, selection: $action) {
                    EmptyView()
                }
                NavigationLink(destination: CameraView(), tag: 2, selection: $action) {
                    EmptyView()
                }
                HStack {
                    Button(action: {
                        self.action = 1
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(LinearGradient(gradient: Gradient(colors: [.red,.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 150, height: 100)
                                .opacity(0.8)
                            
                            
                            Text("추억 담기")
                                .foregroundStyle(.white)
                                .font(.title2)
                            
                        }
                        .shadow(radius: 10,x:5,y:5)
                    })
                    .padding()
                    
                    Button(action: {
                        self.action = 2
                        
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(LinearGradient(gradient: Gradient(colors: [.red,.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 150, height: 100)
                                .opacity(0.8)
                            
                            
                            
                            Text("다시 찍기")
                                .foregroundStyle(.white)
                                .font(.title2)
                            
                            
                            
                        }
                        .shadow(radius: 10,x:5,y:5)
                    }).padding()
                    
                }
                Spacer()
                
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    PhotoView(viewModel: CameraViewModel())
}
