//
//  ContentView.swift
//  GlassMorphism
//
//  Created by Augustin Diabira on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [.cyan, .pink], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            Circle().frame(width: 360).foregroundColor(.cyan).blur(radius: 10).offset(x: -100, y: 150)
            Circle().frame(width: 360).foregroundColor(.pink).blur(radius: 10).offset(x: 100, y: -360)
            
            Rectangle().frame(width: 360).foregroundColor(.yellow).blur(radius: 10).offset(x: 300, y: 440)

            VStack{
                HStack {
                    VStack {
                        Text("Name")
                        Text("Nash")
                    }
                    Spacer()
                    VStack {
                        Text("Ability")
                        Text("Stealth")
                    }
                    Spacer()
                    VStack {
                        Text("Age")
                        Text("19")

                }
            }.padding()
                    .frame(width: 360)
                    .foregroundColor(.white)
                    .background(LinearGradient(colors: [.red, .blue], startPoint: .bottomLeading, endPoint: .topTrailing))
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12))
                    .padding()
                
                VStack {
                    Text("Synopsis").font(.largeTitle).padding()
                    
                    Text("The story takes place in an alternate reality where a small percentage of children manifest superhuman abilities upon reaching puberty. A focus is placed on Yuu Otosaka, a high school boy who awakens the ability to temporarily possess others, which brings him to the attention of Nao Tomori, the student council president of a school founded as a haven for children with such abilities.").font(.footnote).padding()
                    
                    
                    HStack (spacing: 55){
                        VStack {
                            Text("9%").foregroundColor(.green)
                            Text("This month").font(.subheadline)
                        }
                        
                        VStack {
                            Text("$1B").foregroundColor(.red)
                            Text("Avg Income").font(.subheadline)
                        }
                        VStack {
                            Text("Japan").foregroundColor(.blue)
                            Text("Country").font(.subheadline)
                        }
                    }.padding()
               }.padding().frame(width: 360).background(.ultraThickMaterial, in: RoundedRectangle(cornerRadius: 50))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
