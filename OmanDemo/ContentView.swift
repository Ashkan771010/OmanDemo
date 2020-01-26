//
//  ContentView.swift
//  OmanDemo
//
//  Created by Shayan Mehranpoor on 1/24/20.
//  Copyright © 2020 Shayan Mehranpoor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selected = 0
    init() {
           //Use this if NavigationBarTitle is with displayMode = .inline
            UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Arial", size: 23)
            , .foregroundColor : UIColor(red: 239/255, green: 211/255, blue: 121/255, alpha: 1.0)]
        UITabBar.appearance().backgroundColor = UIColor(red: 32/255, green: 32/255, blue: 32/255, alpha: 1.0)
    
       }
    var body: some View {
        
        NavigationView{
            ZStack{
            Color(red: 50/255, green: 51/255, blue: 51/255)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: -39) {
                HStack {
                    NavigationLink(destination: SwiftUIView()){
                        
                        customImages(images: "DG-awards", imageText: "Shops")
                    }
                    Spacer()
                    NavigationLink(destination: SwiftUIView()){
                    customImages(images: "DG-vehicle services", imageText: "Taxi Credit")
                    }
                    Spacer()
                    NavigationLink(destination: SwiftUIView()){
                    customImages(images: "DG-airplane ticket", imageText: "Flights")
                    }
                }.padding(30)
                
                HStack{
                    NavigationLink(destination: SwiftUIView()){
                    customImages(images: "DG-internet", imageText: "Internet Packages")
                    }
                    Spacer()
                    NavigationLink(destination: SwiftUIView()){
                    customImages(images: "DG-charge-up", imageText: "SIM Credit")
                    }
                    Spacer()
                    NavigationLink(destination: SwiftUIView()){
                    customImages(images: "DG-bill payment", imageText: "Bill Payment")
                    }
                }.padding(30)
                
                HStack{
                    NavigationLink(destination: SwiftUIView()){
                    customImages(images: "DG-bus ticket", imageText: "Local Tours")
                    }
                    Spacer()
                    NavigationLink(destination: SwiftUIView()){
                    customImages(images: "DG-Insurance", imageText: "Insurance")
                    }
                    Spacer()
                    NavigationLink(destination: SwiftUIView()){
                    customImages(images: "DG-Exhibitions", imageText: "Exhibitions")
                    }
                }.padding(30)
                
                HStack{
                    NavigationLink(destination: SwiftUIView()){
                    customImages(images: "DG-card to card", imageText: "Exchangers")
                    }
                    Spacer()
                    NavigationLink(destination: SwiftUIView()){
                    customImages(images: "DG-internet-1", imageText: "Visa Services")
                    }
                    Spacer()
                    NavigationLink(destination: SwiftUIView()){
                    customImages(images: "DG-Passenger Insurance", imageText: "Passenger Insurance")
                    }
                }.padding(30)
                tabBarImages(selected: self.$selected)
                                
            }
                
            
            .navigationBarTitle (Text("Services"), displayMode: .inline).navigationBarItems(leading: Image(systemName: "person.circle.fill"), trailing: Image(systemName: "trash.fill")
                ).foregroundColor(Color(red: 239/255, green: 211/255, blue: 121/255))
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
                    .foregroundColor(Color(red: 239/255, green: 211/255, blue: 121/255))
                    .frame(width: 60, height: 60)
                    .aspectRatio(contentMode: .fit)
                
            }
            Text(imageText)
            .foregroundColor(Color(red: 239/255, green: 211/255, blue: 121/255))
                .multilineTextAlignment(.center)
        }.frame(width: 120, height: 160, alignment: .center)
    }
}
struct tabBarImages: View {
     @Binding var selected : Int
    var body: some View {
        TabView {
            Text("")
                .tabItem{
                    VStack{
                        Image("Tab bar - 3 profile - off")
                        
                        Text("Services")
                }
            }
        .tag(0)
            
            Text("")
                    .tabItem{
                        VStack{
                            Image("Tab bar - 2 eWallet - off")
                            Text("eWallet")
                    }
                }
            .tag(1)
            
            Text("")
                    .tabItem{
                        VStack{
                            Image("Tab bar - 1 Offers - off")
                            Text("Offers")
                    }
                }
            .tag(2)
            
            Text("")
                    .tabItem{
                        VStack{
                            Image("Tab bar - 0 Service - off")
                            Text("Services")
                    }
                }
            .tag(3)
        }
    }
}
