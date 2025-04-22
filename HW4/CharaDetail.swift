//
//  CharaDetail.swift
//  HW4
//
//  Created by Mac11 on 2025/4/17.
//

import SwiftUI

struct CharaDetail: View {
    let character: Character
    
    
    var body: some View {
        ScrollView {
            VStack(spacing:0){
                Text(character.name)
                    .font(.system(size: 45, weight: .bold, design: .serif))
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .padding(.top)
                Image(character.coverImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 300)
                    .mask({
                        Circle()
                            .frame(width: 250, height: 235)
                            .offset(y: -50)
                    })
                    .shadow(radius: 15)
                    .padding(.horizontal)
                    .offset(y:50)
                Text(character.description)
                    .font(.system(size: 25, weight: .light, design: .serif))
                    .foregroundStyle(Color(red: 2/255, green: 4/255, blue: 156/255))
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .clipShape(.rect(cornerRadius: 15))
                    .padding(.horizontal)
                    .padding(.bottom, 15)
            }
//                Text("Image")
//                    .font(.system(size: 35, weight: .bold, design: .serif))
//                    .foregroundStyle(Color.white)
//                    .frame(maxWidth: .infinity)
//                    .background(Color.black)
//                ScrollView(.horizontal){
//                    HStack {
//                        Image(character.image)
//                            .resizable()
//                            .scaledToFit()
//                            .frame(maxHeight:450)
//                            .clipShape(.rect(cornerRadius: 10))
//                        Image(.imageVi02)
//                            .resizable()
//                            .scaledToFit()
//                            .frame(maxHeight:450)
//                            .clipShape(.rect(cornerRadius: 10))
//                        Image(.imageVi03)
//                            .resizable()
//                            .scaledToFit()
//                            .frame(maxHeight:450)
//                            .clipShape(.rect(cornerRadius: 10))
//                    }
//                    .padding(.horizontal)
//                }
                
        }
    }
}

#Preview {
    CharaDetail(character: Character(coverImage: "Vi_intro", name: "菲艾", description: "菲艾的本性善良，來自底城佐恩，小時在一次皮爾托福與佐恩的衝突戰事中，范德爾收留了她和妹妹爆爆。她有強大的格鬥技巧，在上城的竊盜事件及後來西爾柯（或譯：希爾科）挾持養父范德爾事件後，與妹妹爆爆分離。而後來到上城，在皮爾托福警備隊服役，維護上城治安，她的主要武器是海克斯科技的拳套。", icon: ""))
}
