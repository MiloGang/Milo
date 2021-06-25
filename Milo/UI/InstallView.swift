//
//  InstallView.swift
//  Milo
//
//  Created by Mattso on 09/06/2021.
//

import Foundation
import SwiftUI

struct InstallView: View {
    var sourceAddView: SourceAddView?
    @State public var progressValue: Float = 0.0
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack {
            ZStack {
                AnimatedGradient().edgesIgnoringSafeArea(.all)
                    .blur(radius: 50)
                VStack {
                    Text("Installing ShitOS").font(Font.system(size: 40))
                        .frame(alignment: .center)
                        .padding(10)
                    
                    ProgressBar(progress: self.$progressValue)
                        .frame(width: 150.0, height: 150.0)
                        .padding(40)
                        .onTapGesture {
                            self.incrementProgress()
                        }
                    
                    Text("This is a log lmao")
            
                    Spacer()
                    
                    if progressValue >= 1 {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .foregroundColor(Color(UIColor.systemBlue))
                                .padding(.horizontal, 20)
                                .frame(height: 60)
                            
                            Text("Restart SpringBoard")
                                .foregroundColor(Color(UIColor.white))
                        }
                        .onTapGesture {
                            isShowing = false
                        }
                    } else {
                        Text("Please Wait...")
                    }
                }
            }
        }
    }
    
    func incrementProgress() {
        let randomValue = Float([0.012, 0.022, 0.034, 0.016, 0.11].randomElement()!)
        self.progressValue += randomValue
    }
}

struct AnimatedGradient: View{
    @State var start = UnitPoint(x:0, y:-2)
    @State var end = UnitPoint(x: 4, y: 0)
    
    let timer = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    
    let colours = [Color.pink, Color.blue, Color.yellow, Color.red]
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: colours), startPoint: start, endPoint: end)
            .animation(Animation.easeInOut(duration: 20)
                        .repeatForever()
            ).onReceive(timer, perform: { _ in
                
                self.start = UnitPoint(x: 4, y: 0)
                self.end = UnitPoint(x: 0, y:2)
                self.start = UnitPoint(x: -4, y: 20)
                self.end = UnitPoint(x: 4, y: 0)
            })
    }
    
}

struct ProgressBar: View {
    @Binding var progress: Float
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.3)
                .foregroundColor(Color(UIColor.systemPurple))
            
            Circle()
                .trim(from: 0.0, to: CGFloat(self.progress))
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color(UIColor.systemPurple))
                .rotationEffect(Angle(degrees: 270))
                .animation(.linear)
            Text(String(format: "%.0f%%", min(self.progress, 1.0)*100))
                .font(.largeTitle)
                .bold()
        }
    }
}
