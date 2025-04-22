//
//  SeriesList.swift
//  HW4
//
//  Created by Mac11 on 2025/4/22.
//

import SwiftUI

struct SeriesList: View {
    var body: some View {
        ZStack {
            NavigationStack {
                GeometryReader{ geo in
                    Text("劇情暴雷")
                        .font(.system(size: 85, weight: .bold, design: .serif))
                        .foregroundStyle(.white)
                        .padding(.horizontal,20)
                        .background(.black)
                        .clipShape(.rect(cornerRadius: 10))
                        .padding()
                        .rotationEffect(.degrees(20))
                        .position(x: geo.size.width * 0.5, y: geo.size.height * 0.4)
                }
                
                Image(systemName: "exclamationmark.octagon.fill")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .foregroundStyle(.red)
                
                Text("注意")
                    .font(.system(size: 35, weight: .bold, design: .serif))
                    .foregroundStyle(.red)
                NavigationLink(destination: EpView()) {
                    Text("點擊這裡 大爆雷")
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundStyle(.red)
                        .padding()
                        .background(.black)
                        .clipShape(.rect(cornerRadius: 20))
                        .padding()
                }
            }
        }
    }
}

#Preview {
    SeriesList()
}
