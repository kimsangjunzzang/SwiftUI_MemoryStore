//
//  MotionAnimationView.swift
//  MemoeyStore
//
//  Created by 김상준 on 3/21/24.
//
import SwiftUI

struct Position {
    var x: CGFloat
    var y: CGFloat
}


struct MotionAnimationView: View {
    @State private var randomCircle: Int = 20
    @State private var isAnimating = false
    
    
    @State private var positionList: [Position]?
    @State private var screenSize: CGSize?
    
    let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()


  var body: some View {
    GeometryReader { geometry in
      ZStack {
          LinearGradient(gradient: Gradient(colors: [.red,.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing)
        ForEach(0...randomCircle, id: \.self) { item in
          Circle()
                .foregroundColor(.white)
                .opacity(0.5)
                .frame(width: 70, height: 70, alignment: .center)
                .scaleEffect(isAnimating ? 1 : 1)
            
            .position(
                x: CGFloat(positionList?[item].x ?? geometry.size.width / 2),
                y: CGFloat(positionList?[item].y ?? geometry.size.height / 2)
            )
            
            .onAppear(perform: {
                screenSize = CGSize(width: geometry.size.width,height: geometry.size.height)
                isAnimating = true
            }) //onAppera
        } //loop
      } //zstack
      
    } //geometry
    
    .onReceive(timer) { _ in
        generatePositions()
    }
  }
}

extension MotionAnimationView {
    
    // 1. RANDOM COORDINATE
    func randomCoordinate(max: CGFloat) -> CGFloat {
      return CGFloat.random(in: 0...max)
    }
    // 2. GENERATE POSITION
    func generatePositions() {
        guard
            let screenSize = screenSize else {
            return
        }
        var newPositionList: [Position] = []
        
        for _ in 0...randomCircle {
            newPositionList.append(
                Position(
                    x: randomCoordinate(max: screenSize.width),
                    y: randomCoordinate(max: screenSize.height)
                )
            )
        }
        withAnimation(.linear(duration: 2)) {
            positionList = newPositionList
        }
    }
}

//preview

struct MotionAnimationView_Previews: PreviewProvider {
  static var previews: some View {
    MotionAnimationView()
  }
}
