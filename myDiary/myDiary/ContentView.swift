//
//  ContentView.swift
//  myDiary
//
//  Created by Noura. on 22/08/2022.
//

import SwiftUI

struct ContentView: View {
    let Colors = [Color.pink , Color.gray , Color.cyan , Color.red]
    @State var myNote = ""
    @State var selected : Color = Color.indigo
    var body: some View {
        NavigationView{
            ZStack{
                Color.pink.opacity(0.5)
                    .ignoresSafeArea()
                VStack{
                    Text("Choose your fav color")
                        .font(.title)
                    HStack {
                        ForEach(Colors, id:\.self){
                            Colors in
                            Circle()
                                .fill(Colors)
                                .frame(width: 85, height: 90)
                                .onTapGesture {
                                    selected = Colors
                                        
                                }
                        }
                    } .padding()
                    Text("What do u want to write")
                        .font(.title)
                    TextField("Write here", text: $myNote)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .frame(width: 400, height: 100)
                    
                    NavigationLink(destination: SeconedView(myC: selected, myS: myNote)) {
                        Text("Save")
                            .frame(width: 200, height: 30)
                            .font(.system(size: 50, weight: .medium, design: .default))
                            .padding()
                            .background(.green)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                       
                            
                    }

                }
                    }
            .navigationTitle("Dear Diary")
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
