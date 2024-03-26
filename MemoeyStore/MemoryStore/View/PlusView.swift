//
//  PlusView.swift
//  MemoryStore
//
//  Created by 김상준 on 3/25/24.
//

import SwiftUI

struct PlusView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    NavigationLink(destination: CameraView()){
                        ZStack {
                            Circle()
                                .fill(Color.yellow)
                                .frame(width: 100, height: 100)
                                .opacity(0.6)
                            
                            
                            Text("Camera")
                                .foregroundStyle(.black)
                        }
                    }
                    
                    
                    NavigationLink(destination: HomeView()){
                        ZStack {
                            Circle()
                                .fill(Color.yellow)
                                .frame(width: 100, height: 100)
                                .opacity(0.6)
                            
                            
                            Text("Video")
                                .foregroundStyle(.black)
                        }
                        
                    }
                }
                
                
                
                HStack {
                    NavigationLink(destination: HomeView()){
                        ZStack {
                            Circle()
                                .fill(Color.yellow)
                                .frame(width: 100, height: 100)
                                .opacity(0.6)
                            
                            Text("Record")
                                .foregroundStyle(.black)
                        }
                    }
                    
                    NavigationLink(destination: HomeView()){
                        ZStack {
                            Circle()
                                .fill(Color.yellow)
                                .opacity(0.6)
                            .frame(width: 100, height: 100)
                            Text("Text")
                                .foregroundStyle(.black)
                        }
                        
                        
                    }
                }
            }
        }
    }
}

#Preview {
    PlusView()
}
