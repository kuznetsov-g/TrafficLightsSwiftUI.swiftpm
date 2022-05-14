import SwiftUI

struct ColorCircleView: View {
     let color: Color
    /*
     у меня вопрос:
     Изначально я указал @State var color: Color
     и это не работало, цвета были только серые.
     Но не могу понять почему.
     */
    
    var body: some View {
        ZStack{
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(lineWidth: 4))
            .shadow(color: color ,radius: 10)
        }
    }
}

