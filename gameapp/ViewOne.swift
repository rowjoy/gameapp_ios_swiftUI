//
//  ViewOne.swift
//  gameapp
//
//  Created by Nec Money on 4/25/24.
//

import SwiftUI

struct ViewOne: View {
    
    func rendomColor ()-> Color {
        let red = Double.random(in:0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        return Color(red : red, green: green, blue : blue)
    }
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Circle()
                        .frame(width: 50,height: 50)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Image(systemName: "person")
                        .foregroundColor(.white)
                }
                .padding()
                Spacer()
                Image(systemName: "bell")
                    .padding()
            }
            
            ScrollView {
                VStack {
                    ForEach(1..<100) { index in
                        CardView(color: self.rendomColor(), index: index)
                        
                    }
                }
            }
            
            
        }
    }
}


struct CardView : View {
    var color : Color
    var index : Int
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(color)
                    .frame(height: 100)
                    .overlay(
                        HStack {
                            ZStack (alignment: .center){
                                Circle()
                                    .frame(width: 50)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                    .overlay(
                                        Text(
                                            "\(Character(UnicodeScalar(index + 97-1)!))".uppercased()
                                            
                                        )
                                        .foregroundColor(.white)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        
                                        .padding(.trailing, 10)
                                    )
                            }
                            Spacer()
                            Text("Card \(index)")
                            
                                                    }.padding()
                    )
                    .padding(10)
    }
}

#Preview {
    ViewOne()
}
