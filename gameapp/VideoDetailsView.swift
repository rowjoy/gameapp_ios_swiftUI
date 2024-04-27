//
//  VideoDetailsView.swift
//  gameapp
//
//  Created by Nec Money on 4/27/24.
//

import SwiftUI

struct VideoDetailsView: View {
    var video : Video
    var body: some View {
        VStack (spacing: 20){
            Spacer()
            VideoDetailsBody(video: video)
            Spacer()
            CustomButtonVide(video: video, buttonLabel: "Watch now")
        }
        .padding()
    }
}




struct VideoDetailsBody : View {
    var video : Video
    var body: some View {
        Image(video.imageName)
            .resizable()
            .frame(height: 200)
            .scaledToFit()
            .cornerRadius(10.0)
            .padding(.horizontal)
        Text(video.title)
            .font(.title2)
            .fontWeight(.semibold)
            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
        HStack (spacing: 59){
            Label(
                "\(video.viewCount)",
                 systemImage: "eye.fill"
            )
            .font(.subheadline)
            .foregroundColor(.secondary)
            Text(video.uploadDate)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
        }
        Text(video.description)
            .font(.custom("", size:17))
            .foregroundColor(.black)
    }
}





struct CustomButtonVide : View {
    var video : Video
    var buttonLabel : String
    var body: some View {
        Link(destination: video.url, label: {
            Text("\(buttonLabel)")
                .bold()
                .font(.title2)
                .frame(width: 300,height: 50)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
         }
            
        ).frame(height: 50)
        
        
    }
}





#Preview {
    VideoDetailsView(video: VideoList.topTen[0])
}
