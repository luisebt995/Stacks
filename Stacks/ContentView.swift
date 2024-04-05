//
//  ContentView.swift
//  Stacks
//
//  Created by Luis on 4/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Header()
            HStack{
                Fighter(name: "Goku", power: 800, description: "Ultra Instinct", colorText: .white, colorBackground: .mint)
                ZStack {
                    Fighter(name: "Vegeta", power: 700, description: "SSJ3", colorText: .black, colorBackground: Color(red: 237/255, green: 64/255, blue: 90/255))
                    Text("Insecto")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                        .background(.yellow)
                        .offset(x: 0 , y: 50)
                }
            }
            .padding(.horizontal, 5)
            HStack {
                ZStack {
                    VStack{
                        Image(systemName: "flag.2.crossed")
                        Text("Vegeto")
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.white)
                            .fontWeight(.black)
                        Text("1000/1000")
                            .font(.system(size: 12, weight: .medium, design: .rounded))
                            .foregroundColor(.white)
                        Text("Fusion")
                            .font(.system(size: 12, weight: .medium, design: .rounded))
                            .foregroundColor(.white)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 100)
                    .padding(30)
                    .background(.purple)
                    .cornerRadius(20)
                    Text("Kayosama help me")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                        .background(.yellow)
                        .offset(x: 0 , y: 50)
                }
            }
            .padding(.horizontal, 5)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            VStack(alignment: .center, spacing: 5){
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .foregroundColor(.purple)
                    .fontWeight(.black)
                Text("your")
                    .font(.system(.largeTitle, design: .rounded))
                    .foregroundColor(.purple)
                    .fontWeight(.heavy)
                Text("Fighter")
                    .font(.system(.largeTitle, design: .rounded))
                    .foregroundColor(.purple)
                    .fontWeight(.bold)
            }
            Spacer()
        }
        .padding(.horizontal, 7)
        .padding(.bottom, 30)
    }
}

struct Fighter: View {
    let name : String
    let power : Int
    let description : String
    
    let colorText : Color
    let colorBackground : Color
    var body: some View {
        VStack{
            Text("\(name)")
                .font(.system(.title, design: .rounded))
                .foregroundColor(colorText)
                .fontWeight(.black)
            Text("\(power)/1000")
                .font(.system(size: 12, weight: .medium, design: .rounded))
                .foregroundColor(colorText)
            Text("Ultra Instinct")
                .font(.system(size: 12, weight: .medium, design: .rounded))
                .foregroundColor(colorText)
        }
        //.frame(width: 100, height: 100)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 100)
        .padding(30)
        .background(colorBackground)
        .cornerRadius(20)
    }
}
