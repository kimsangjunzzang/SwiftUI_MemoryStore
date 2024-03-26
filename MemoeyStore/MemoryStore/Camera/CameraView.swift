//
//  CameraView.swift
//  MemoryStore
//
//  Created by 김상준 on 3/25/24.
//
import SwiftUI
import AVFoundation

struct CameraView: View {
    @StateObject var viewModel = CameraViewModel()
    
    var body: some View {
        ZStack {
            viewModel.cameraPreview.ignoresSafeArea()
                .onAppear {
                    viewModel.configure()
                }
            
                .gesture(MagnificationGesture()
                            .onChanged { val in
                    viewModel.zoom(factor: val)
                }
                            .onEnded { _ in
                    viewModel.zoomInitialize()
                }
                )
            
            VStack {
                HStack {
                    // 셔터사운드 온오프
                    Button(action: {viewModel.switchSilent()}) {
                        Image(systemName: viewModel.isSilentModeOn ?
                              "speaker.fill" : "speaker")
                        .foregroundColor(viewModel.isSilentModeOn ? .yellow : .white)
                    }
                    Spacer()
                    
                    // 플래시 온오프
                    Button(action: {viewModel.switchFlash()}) {
                        Image(systemName: viewModel.isFlashOn ?
                              "bolt.fill" : "bolt")
                        .foregroundColor(viewModel.isFlashOn ? .yellow : .white)
                    }
                    
                }
                .font(.system(size:25))
                .padding()
                
                Spacer()
                NavigationStack{
                    HStack{
                        // 찍은 사진 미리보기
                        NavigationLink(destination: PhotoView(viewModel: viewModel)){
//                        Button(action: {}) {
//                            if let previewImage = viewModel.recentImage {
//                                Image(uiImage: previewImage)
//                                    .resizable()
//                                    .scaledToFill()
//                                    .frame(width: 75, height: 75)
//                                    .clipShape(RoundedRectangle(cornerRadius: 15))
//                                    .aspectRatio(1, contentMode: .fit)
//                            } else {
//                                RoundedRectangle(cornerRadius: 15)
//                                    .stroke(lineWidth: 3)
//                                    .foregroundColor(.white)
//                                    .frame(width: 75, height: 75)
//                            }
//                        }
//                        .padding()
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
                        
                        Spacer()
                        
                        // 사진찍기 버튼
                        Button(action: {viewModel.capturePhoto()}) {
                            
                            ZStack{
                                Circle()
                                    .frame(width: 65,height: 65)
                                Circle()
                                    .stroke(lineWidth: 2)
                                    .frame(width: 75, height: 75)
                                    .padding()
                            }
                        }
                        
                        Spacer()
                        
                        // 전후면 카메라 교체
                        Button(action: {viewModel.changeCamera()}) {
                            Image(systemName: "arrow.triangle.2.circlepath.camera")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                            
                        }
                        .frame(width: 75, height: 75)
                        
                    }.padding(.horizontal,10)
                }
            }
            .foregroundColor(.white)
        }
        .opacity(viewModel.shutterEffect ? 0 : 1)
    }
}


