//
//  ContentView.swift
//  practice
//
//  Created by taisei sumiyama on 2021/03/14.
//

import SwiftUI

struct ContentView: View {
    @State var num:Int = 0
    @State var isFast = true
    @State var iLike = true
    @State var R:Double = 0
    @State var G:Double = 0
    @State var B:Double = 0
    @State private var selectedColor = 0
    let colorViews = [Color.red, Color.green, Color.blue]
    let colorNames = ["Red", "Green", "Blue"]
    
    var body: some View {
        VStack{
            HStack{
            ///ボタン
                Button(action: {
                    self.num = Int.random(in: 0...100)
            ///            print(num)
                }) {
                    Text("Ramdom Button")
                    .background(Color.gray)
                }

            
                Text("\(num)")
                .font(.largeTitle)
                    
                Stepper(value: $num, in: 0 ... 100) {
                }
                .padding(0)
                .frame(width : 90)
            }
            
            ///トグル
            HStack{
                Toggle(isOn: $iLike) {
                    Text("Like or Not")
                    .font(.largeTitle)
                }
                .fixedSize()
                .padding(10)
                
                if iLike{
                    Text("Like")
                    .foregroundColor(.red)
                    .font(.largeTitle)
                }else{
                    Text("Not")
                    .foregroundColor(.green)
                    .font(.largeTitle)
                }
            }
            HStack{
                ///回転ボタン
                Button(action: {
                    withAnimation{
                        self.isFast.toggle()
                    }
                }) {
                    Image(systemName: isFast ? "hare" : "tortoise")
                    .rotationEffect(.degrees(isFast ? 0 : 180))
                    .scaleEffect(3)
                }
                .padding(10)
//                ///スライダー
//                Circle()
//                .frame(width: 70,height: 70)
//                .padding()
//                .foregroundColor(Color(red: R/255, green: G/255, blue: B/255))
                }
//            HStack{
//                Circle()
//                .foregroundColor(.red)
//                .frame(width: 20, height: 20)
//                Text(String(Int(R)))
//                .frame(width: 40)
//                Slider(value: $R, in: 0 ... 255)
//                .frame(width: 200)
//            }
//            HStack{
//                Circle()
//                .foregroundColor(.green)
//                .frame(width: 20, height: 20)
//                Text(String(Int(G)))
//                .frame(width: 40)
//                Slider(value: $G, in: 0 ... 255)
//                .frame(width: 200)
//            }
//            HStack{
//                Circle()
//                .foregroundColor(.blue)
//                .frame(width: 20, height: 20)
//                Text(String(Int(B)))
//                .frame(width: 40)
//                Slider(value: $B, in: 0 ... 255)
//                .frame(width: 200)
//            }
            VStack{
                Picker(selection: $selectedColor, label: Text("Color")) {
                    Text("Red").tag(0)
                    Text("Grren").tag(1)
                    Text("Blue").tag(2)
                }
                .padding()
                .frame(height: 100)
                
                HStack{
                    colorViews[selectedColor]
                        .frame(width: 50, height: 100)
                    Text("value: \(selectedColor)")
                        .frame(width: 60)
                    Text("\(colorNames[selectedColor])")
                        .frame(width: 70)
                    
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
