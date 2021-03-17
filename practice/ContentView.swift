//
//  ContentView.swift
//  practice
//
//  Created by taisei sumiyama on 2021/03/14.
//

import SwiftUI

struct ContentView: View {
    @State var num:Int = 0
    @State var iLike = true
    
    var body: some View {
        VStack{
            Button(action: {
                self.num = Int.random(in: 0...100)
    ///            print(num)
            }) {
                Text("Ramdom Button")
            }

                Text("\(num)")
                    .font(.largeTitle)
            
            Toggle(isOn: $iLike) {
                Text("Like or Not")
                    .font(.largeTitle)
            }
                .fixedSize()
                .padding(20)
            
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
