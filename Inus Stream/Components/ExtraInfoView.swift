//
//  ExtraInfoView.swift
//  Inus Stream
//
//  Created by Inumaki on 25.10.22.
//

import SwiftUI

struct ExtraInfoView: View {
    let infoApi: InfoApi
    
    var body: some View {
        
        VStack {
            ZStack {
                Color(hex: "#ff1E222C")
                
                VStack(alignment: .leading, spacing: 14) {
                    VStack(alignment: .leading) {
                        Text("Synonyms")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer().frame(maxHeight: 6)
                        
                        VStack(alignment: .leading, spacing: 6) {
                            ForEach(0..<infoApi.infodata!.synonyms!.count) {synonym in
                                Text("\(infoApi.infodata!.synonyms![synonym])")
                                    .bold()
                                    .foregroundColor(Color(hex: "#ff999999"))
                                    .font(.title3)
                                    .bold()
                            }
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Country of Origin")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer().frame(maxHeight: 6)
                        
                        Text(infoApi.infodata!.countryOfOrigin!)
                            .bold()
                            .foregroundColor(Color(hex: "#ff999999"))
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Format")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer().frame(maxHeight: 6)
                        
                        Text(infoApi.infodata!.type!)
                            .bold()
                            .foregroundColor(Color(hex: "#ff999999"))
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Studios")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer().frame(maxHeight: 6)
                        
                        VStack(alignment: .leading, spacing: 6) {
                            ForEach(0..<infoApi.infodata!.studios.count) {studio in
                                Text("\(infoApi.infodata!.studios[studio])")
                                    .bold()
                                    .foregroundColor(Color(hex: "#ff999999"))
                                    .font(.title3)
                                    .bold()
                            }
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Duration")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer().frame(maxHeight: 6)
                        
                        Text("\(infoApi.infodata!.duration!)")
                            .bold()
                            .foregroundColor(Color(hex: "#ff999999"))
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Episodes")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer().frame(maxHeight: 6)
                        
                        Text("\(infoApi.infodata!.totalEpisodes!)")
                            .bold()
                            .foregroundColor(Color(hex: "#ff999999"))
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Status")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer().frame(maxHeight: 6)
                        
                        Text("\(infoApi.infodata!.status.uppercased())")
                            .bold()
                            .foregroundColor(Color(hex: "#ff999999"))
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Released in")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer().frame(maxHeight: 6)
                        
                        Text(String(infoApi.infodata!.releaseDate))
                            .bold()
                            .foregroundColor(Color(hex: "#ff999999"))
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Season")
                            .bold()
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Spacer().frame(maxHeight: 6)
                        
                        Text("\(infoApi.infodata!.season!)")
                            .bold()
                            .foregroundColor(Color(hex: "#ff999999"))
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .top)
                .fixedSize(horizontal: false, vertical: true)
                .frame(maxHeight: 1300, alignment: .top)
                .padding(.all, 30)
            }
            .cornerRadius(20)
            .padding(.all, 20)
            .frame(width: 390)
            .frame(maxWidth: .infinity, alignment: .top)
            .fixedSize(horizontal: false, vertical: true)
            .cornerRadius(20)
            .padding(.top, 20)
            
            Spacer()
        }
        .frame(height: 1300)
        .frame(maxHeight: 1300, alignment: .top)
        
    }
}
