import SwiftUI

struct ContentView: View {
    @State var number1 = 0
    @State var number2 = 0
    @State var answer = 0
    var body: some View {
        HStack {
            TextField("0", value: $number1, format: .number)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .padding()
            TextField("0", value: $number2, format: .number)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .padding()
        }
        Text("Answer:\(answer)")
        
        VStack{
            Button{
                answer = number1 + number2
            } label: {
                ZStack{
                    Circle()
                        .frame(width: 45, height: 45)
                        .foregroundStyle(.white)
                    Text("+")
                        .font(.largeTitle)
                }
            }
        }
    }
}
