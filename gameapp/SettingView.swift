//
//  settingview.swift
//  gameapp
//
//  Created by Nec Money on 4/24/24.
//

import SwiftUI

struct SettingView : View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(colors: [.yellow,.pink], startPoint: .top, endPoint: .center)
                )
                .cornerRadius(20)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                HStack {
                     Image("jamirul_islam")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60,height: 60)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white,lineWidth: 2))
                    Spacer()
                    ZStack {
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: 50,height: 50)
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(.red)
                            
                    }
                    
                }
                
                Text("Hey, Latizia Sen")
                    .foregroundColor(.black)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Split your bills with your friends and family")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                
                Text("Recenttly added")
                    .foregroundColor(.black)
                    .font(.system(size: 10))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.vertical, 10)
                ZStack {
                    /*
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.clear)
                        .frame(height: 300)
                        .border(Color.white, width:2)
                     */
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(.white,lineWidth: 2)
                        .frame(height: 300)
                    
                    /**[@ Box Container ]**/
                    VStack(alignment: .leading) {
                       
                        /**[@Step one ]**/
                        HStack (alignment: .firstTextBaseline){
                            Text("Q2trip")
                                .foregroundColor(.black)
                                .font(.system(size: 20))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Spacer()
                            HStack {
                                Text("One day trip")
                                    .font(.system(size: 10))
                                    .padding(5)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                
                                Image(systemName: "ellipsis")
                                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(.white)
                                    .rotationEffect(.degrees(90.00))
                                    
                            }
                        }
                        /**[@Step two ]**/
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .frame(width: 40,height: 80)
                                    .foregroundColor(.white)
                                Image(systemName: "note")
                                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.red)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Bil amount")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14))
                                Text("$10000")
                                    .foregroundColor(.white)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.system(size: 20))
                            }
                        }
                        
                        /**[@Step three ]**/
                        
                        HStack {
                            Image(systemName: "book")
                                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                            Text("3")
                                .font(.system(size: 20))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("Expenses")
                                .font(.system(size: 15))
                                .fontWeight(.none)
                        }
                        /**[@Step Four ]**/
                        
                        HStack (alignment: .bottom){
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                Text("$")
                            }
                                
                            Text("346546")
                                .font(.system(size: 20))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .padding(1)
                            Text("Budget")
                                .font(.system(size: 15))
                                .fontWeight(.none)
                            Spacer()
                            HStack {
                                Image("app-image-2")
                                    .resizable()
                                    .frame(width: 80,height: 80)
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.white, lineWidth: 1)
                                    )
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                        
                        
                        
                        
                    }.padding(8)

                       
                    
                    
                }
                
                
                    
                
            }.padding()
            
            
        }
    }
    
}

#Preview{
    SettingView()
}
