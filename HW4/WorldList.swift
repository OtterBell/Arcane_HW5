//
//  WorldList.swift
//  HW4
//
//  Created by Mac11 on 2025/4/22.
//

import SwiftUI

struct WorldList: View {
    let title = ["世界觀","皮爾托福","佐恩"]
    let images = ["Map01", "Map02", "Map03"]
    let descriptions = ["《奧術》故事主要圍繞在「皮爾托福」和「佐恩」共生的兩座城市恩怨。","皮爾托福是《奧術》中，上城繁榮的城市，地理位置在底城佐恩上方的峽谷中，對著海岸，商業貿易興盛，成了追逐財富的夢想之地。","相較皮爾托福的進步，佐恩則是藏污納垢，皮爾托福的垃圾及不光明的一面，全來到底層，佐恩如黑市般的陰暗，所有皮爾托福走私、犯罪等檯面下的事，都來在此發生。"]
    @Environment(\.horizontalSizeClass) private var placetobe
    @State private var selectedItem = 0
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedItem){
                ForEach(0..<images.count, id: \.self){ item in
                    Image(images[item])
                        .resizable()
                        .tag(item)//讓tabview知道這是第幾頁
                }
            }
            .tabViewStyle(.page)
//            Text(title[selectedItem])
//                .font(.system(size: 35, weight: .bold, design: .serif))
//                .foregroundStyle(.linearGradient(colors: [.yellow,.green,.blue], startPoint: .top, endPoint: .bottom))
//                .shadow(radius: 5)
//                .padding()
//                .background(.black.opacity(0.8))
//                .clipShape(.rect(cornerRadius: 5))
//                .padding(.horizontal)
            GeometryReader { geo in
                Text(title[selectedItem])
                    .font(.system(size: 45, weight: .bold, design: .serif))
                    .foregroundStyle(.linearGradient(colors: [.yellow,.green,.blue], startPoint: .top, endPoint: .bottom))
                    .shadow(radius: 5)
                    .padding()
                    .background(.black.opacity(0.8))
                    .clipShape(.rect(cornerRadius: 15))
                    .padding(.horizontal)
                    .position(x: geo.size.width * 0.5, y: geo.size.height * 0.09)
            }
//                .offset(y: -300)
            
            GeometryReader { geo in
                Text(descriptions[selectedItem])
                    .font(.system(size: 25, weight: .medium, design: .serif))
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black.opacity(0.5))
                    .clipShape(.rect(cornerRadius: 15))
                    .padding(.horizontal)
                    .position(x: geo.size.width * 0.5, y: geo.size.height * 0.85)
            }
                
//                    .offset(y:250)
            
            
//            VStack(alignment: .center, spacing:0){
//                
//                Text("世界觀")
//                    .font(.system(size: 35, weight: .bold, design: .serif))
//                    .foregroundStyle(.linearGradient(colors: [.yellow,.green,.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
//                    .shadow(radius: 5)
//                    .padding()
//                    .background(.black.opacity(0.8))
//                    .clipShape(.rect(cornerRadius: 5))
//                    .padding(.horizontal)
//                Spacer()
//                }
//            
//            .frame(maxWidth: .infinity)
        }
        
    }
}

#Preview {
    WorldList()
}
