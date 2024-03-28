//
//  PlusView.swift
//  MemoryStore
//
//  Created by 김상준 on 3/25/24.

import SwiftUI

struct PlusView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.red,.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing)
                VStack{
                    
                    Spacer()
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .frame(width: 330, height: 80)
                            .opacity(0.8)
                        
                        Text("어떤 추억을 저장하실 건가요?")
                            .fontWeight(.bold)
                            .foregroundStyle(.orange)
                            .font(.title2)
                    }
                    
                    Spacer()
                    
                    ZStack{
                        
                        VStack {
                            HStack {
                                NavigationLink(destination: CameraView()){
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color.white)
                                            .frame(width: 150, height: 100)
                                            .opacity(0.8)
                                        
                                        
                                        VStack {
                                            Image(systemName: "camera")
                                                .foregroundStyle(.orange)
                                                .font(.largeTitle)
                                                .padding(.bottom,1)
                                            Text("사진")
                                                .foregroundStyle(.orange)
                                                .font(.title2)
                                        }
                                        
                                        
                                    }
                                    .shadow(radius: 20)
                                }
                                
                                
                                NavigationLink(destination: HomeView()){
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color.white)
                                            .frame(width: 150, height: 100)
                                            .opacity(0.8)
                                        
                                        VStack {
                                            Image(systemName: "video")
                                                .foregroundStyle(.orange)
                                                .font(.largeTitle)
                                                .padding(.bottom,1)
                                            Text("영상")
                                                .foregroundStyle(.orange)
                                                .font(.title2)
                                        }
                                    }
                                    .shadow(radius: 20)
                                    
                                }
                            }
                            
                            
                            
                            HStack {
                                NavigationLink(destination: HomeView()){
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color.white)
                                            .frame(width: 150, height: 100)
                                            .opacity(0.8)
                                        
                                        VStack {
                                            Image(systemName: "recordingtape")
                                                .foregroundStyle(.orange)
                                                .font(.largeTitle)
                                                .padding(.bottom,1)
                                            Text("음성 메모")
                                                .foregroundStyle(.orange)
                                                .font(.title2)
                                        }
                                    }
                                    .shadow(radius: 20)
                                }
                                
                                NavigationLink(destination: MemoView()){
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color.white)
                                            .frame(width: 150, height: 100)
                                            .opacity(0.8)
                                        
                                        VStack {
                                            Image(systemName: "text.bubble")
                                                .foregroundStyle(.orange)
                                                .font(.largeTitle)
                                                .padding(.bottom,1)
                                            Text("텍스트")
                                                .foregroundStyle(.orange)
                                                .font(.title2)
                                        }
                                    }
                                    .shadow(radius: 20)
                                    
                                    
                                }
                            }
                        }
                        
                    }
                    
                    Spacer()
                }
            }
            .navigationBarBackButtonHidden(true)
            .edgesIgnoringSafeArea(.top)
            
        }
        
    }
    
}


#Preview {
    PlusView()
}
