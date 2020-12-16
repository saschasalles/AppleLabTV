//
//  HomeView.swift
//  Apple Lab Tv
//
//  Created by Sascha Sallès on 02/12/2020.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView() {
                VStack(alignment: .leading, spacing: 0){
                    Divider()
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            CustomButtonView(image: "film.fill", text: "films")
                            CustomButtonView(image: "tv.fill", text: "séries")
                            CustomButtonView(image: "face.smiling.fill", text: "enfants")
                        }.padding(.horizontal)
                    }
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("À suivre")
                            .font(.title2)
                            .bold()
                            .padding(.horizontal)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                CardVisionView(image: "poc", value: .constant(0.3))
                                CardVisionView(image: "simpson", value: .constant(0.6))
                                CardVisionView(image: "hp", value: .constant(0.4))
                            }.padding(.horizontal)
                        }
                    }
                    .padding(.vertical, 18)
                    .background(
                        LinearGradient(gradient:
                                        Gradient(colors:[Color.white, Color(.systemGray5)]),
                                       startPoint: .top,
                                       endPoint: .bottom))
                    
                    
                    VStack(alignment: .leading) {
                        
                        HStack {
                            Text("À ne pas manquer")
                                .font(.title2)
                                .bold()
                            Spacer()
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("Tout")
                            })
                            
                        }.padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                CardView(cardType: .small, bgImage: "mentalist", promoText: "A découvrir")
                                CardView(cardType: .small, bgImage: "poc", promoText: "A découvrir")
                                CardView(cardType: .small, bgImage: "simpson", promoText: "A découvrir")
                            }.padding(.horizontal)
                        }
                    }
                    .padding(.vertical, 18)
                    .background(
                        LinearGradient(gradient:
                                        Gradient(colors:[Color.white, Color(.systemGray5)]),
                                       startPoint: .top,
                                       endPoint: .bottom))
                }
                
                
            }
            .navigationBarTitle(Text("Regarder"))
            .navigationBarItems(trailing:
                                    Image("light")
                                    .resizable()
                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                    .padding(.bottom, 5)
            )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        //            .environment(\.colorScheme, .dark)
    }
}
