//
//  ContentView.swift
//  OmanDemo
//
//  Created by Shayan Mehranpoor on 1/24/20.
//  Copyright © 2020 Shayan Mehranpoor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack{
            Color(red: 50/255, green: 51/255, blue: 51/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: -30) {
                HStack {
                    customImages(images: "DG-awards", imageText: "Shops")
                    Spacer()
                    customImages(images: "DG-vehicle services", imageText: "Taxi Credit")
                    Spacer()
                    customImages(images: "DG-airplane ticket", imageText: "Flights")
                }.padding(30)
                
                HStack{
                    customImages(images: "DG-internet", imageText: "Internet Packages")
                    Spacer()
                    customImages(images: "DG-charge-up", imageText: "SIM Credit")
                    Spacer()
                    customImages(images: "DG-bill payment", imageText: "Bill Payment")
                }.padding(30)
                
                HStack{
                    customImages(images: "DG-bus ticket", imageText: "Local Tours")
                    Spacer()
                    customImages(images: "DG-Insurance", imageText: "Insurance")
                    Spacer()
                    customImages(images: "DG-Exhibitions", imageText: "Exhibitions")
                }.padding(30)
                
                HStack{
                    customImages(images: "DG-card to card", imageText: "Exchangers")
                    Spacer()
                    customImages(images: "DG-internet-1", imageText: "Visa Services")
                    Spacer()
                    customImages(images: "DG-Passenger Insurance", imageText: "Passenger Insurance")
                }.padding(30)
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View { ContentView()}
    }
}

struct customImages: View {
    var images: String
    var imageText: String
    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                Color(red: 32/255, green: 32/255, blue: 32/255)
                    .frame(width: 90, height: 90)
                    .cornerRadius(40)
                Image(images).resizable()
                    .frame(width: 65, height: 65)
                    .aspectRatio(contentMode: .fit)
            }
            
            Text(imageText)
            .foregroundColor(Color(red: 239/255, green: 211/255, blue: 121/255))
                .multilineTextAlignment(.center)
        }.frame(width: 120, height: 160, alignment: .center)
    }
}
