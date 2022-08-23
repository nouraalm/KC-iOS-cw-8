//
//  SeconedView.swift
//  myDiary
//
//  Created by Noura. on 22/08/2022.
//

import SwiftUI

struct SeconedView: View {
    let myC : Color
    let myS : String
    var body: some View {
        ZStack{
            Color.green
            myC.ignoresSafeArea()
            VStack{
                Text(myS)
                
            }
        }
    }
}

struct SeconedView_Previews: PreviewProvider {
    static var previews: some View {
        SeconedView(myC: Color.blue, myS: "Hi")
            .previewDevice("iPhone 12")
    }
}
