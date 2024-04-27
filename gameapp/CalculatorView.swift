//
//  CalculatorView.swift
//  gameapp
//
//  Created by Nec Money on 4/27/24.
//

import SwiftUI

struct CalculatorView : View {
   
    var videos : [Video] = VideoList.topTen
    var body: some View {
        NavigationView {
            List(videos, id : \.id) { videos in
                NavigationLink(
                    destination: VideoDetailsView(video: videos), label: {
                        VideoCard(videos: videos)
                    }
                )
            }
            .navigationBarTitle("Sean's Top 10 Video") // Title applied to the Text view
        }
    }
}



struct VideoCard : View {
    var videos : Video
    var body: some View {
        HStack {
            Image(videos.imageName)
                .resizable()
                .frame(height: 70)
                .scaledToFit()
                .cornerRadius(3.0)
                .padding(.vertical, 5)
            VStack (alignment: .leading, spacing: 20){
                Text(videos.title)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                Text(videos.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}



#Preview {
    CalculatorView()
}
