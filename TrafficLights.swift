import SwiftUI

struct TrafficLights: View {
    
    @State var num = 0
    @State var buttonTitle = "Start"
    
    
    var body: some View {
        VStack {
            ColorCircleView(color: num == 1 ? .red : .gray)
            ColorCircleView(color: num == 2 ? .yellow : .gray)
            ColorCircleView(color: num == 3 ? .green : .gray)
            Spacer()
            Button(buttonTitle,
                   action:{
                num += 1
                if num == 5 {
                    num = 1
                }
                print("num is \(num)")
                switch num {
                case 0:
                    buttonTitle = "Start"
                case 1:
                    buttonTitle = "Next"
                case 3:
                    buttonTitle = "Finish"
                case 4:
                    buttonTitle = "Start"
                default:
                    print(2)
                }
                
                
            })
        }
        .padding(35)
    }
}

