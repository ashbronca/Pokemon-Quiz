//
//  WelcomeScreen.swift
//  Pokemon Quiz
//
//  Created by Ash on 19/8/21.
//

import SwiftUI

struct WelcomeScreen: View {
    @State private var zoomed = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("AllPokemonImage")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 1300, height: 900)
                
                VStack{
                    Spacer()

                    Image("PokemonLogo")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 320, height: 130)
                        .padding(.top, 90)
                        .shadow(radius: 30)

                    Spacer()
                    
                    HStack(spacing: 15){
                        Image("#001 Bulbasaur")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: zoomed ? .fill : .fit)
                            .onTapGesture { zoomed.toggle() }
                            .frame(width: 80, height: 80)
                            .shadow(radius: 15)
                            .padding(10)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .shadow(color: .green, radius: 5, x: 0.0, y: 0.0)

                        Image("#004 Charmander")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .shadow(radius: 15)
                            .padding(10)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .shadow(color: .red, radius: 5, x: 0.0, y: 0.0)
                            
                        Image("#007 Squirtle")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .shadow(radius: 15)
                            .padding(10)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .shadow(color: .blue, radius: 5, x: 0.0, y: 0.0)
                    }
                    .shadow(radius: 7)
                    
                    Spacer()
                    
                    NavigationLink(destination: HomeScreen()) {
                        Text("Let's Go!!")
                            .font(.title)
                            .fontWeight(.heavy)
                            .padding(20)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/).clipShape(Rectangle())
                            .cornerRadius(25)
                            .foregroundColor(.blue)
                    }
                    .shadow(radius: 17)

                    .padding()
                    Spacer()
                    Spacer()
                }
//                .navigationBarTitle(Text("Home"), displayMode: .inline)
            }
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    } // Remove hanging navigation link
}


struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen().preferredColorScheme(.light)


    }
}
