//
//  ContentView.swift
//  practice
//
//  Created by taisei sumiyama on 2021/03/14.
//

import SwiftUI

struct ContentView: View {
    @State var num:Int = 0
    
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
