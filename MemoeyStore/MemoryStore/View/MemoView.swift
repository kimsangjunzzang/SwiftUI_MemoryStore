//
//  MemoView.swift
//  MemoryStore
//
//  Created by 김상준 on 3/27/24.
//

import SwiftUI

struct MemoView: View {
    @State private var response = ""
    @FocusState private var responseIsFocussed: Bool // dismiss response editor keyboard when hit Return
    @State private var action: Int? = 0
    
    var body: some View {
        VStack{
            HStack {
                Text("추억을 적어주세요")
                    .fontWeight(.bold)
                    .font(.title)
                Spacer()
                
                NavigationLink(destination: PlusView(), tag: 1, selection: $action) {
                    EmptyView()
                }
                Button(action: {
                    self.action = 1
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(gradient: Gradient(colors: [.red,.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 50, height: 35)
                            .opacity(0.8)
                        
                        
                        Text("저장")
                            .foregroundStyle(.white)
                            .font(.title2)
                        
                    }
                    .shadow(radius: 10,x:5,y:5)
                })
            }
            
            TextEditor(text: $response)
                .focused($responseIsFocussed)
                .onReceive(response.publisher.last()) {
                    if ($0 as Character).asciiValue == 10 { // ASCII 10 = newline
                        responseIsFocussed = false // unfocus TextEditor to dismiss keyboard
                        response.removeLast() // remove newline at end to prevent retriggering...
                    }
                }
            
            
        }
        .padding(.horizontal,20)
    }
}

#Preview {
    MemoView()
}
