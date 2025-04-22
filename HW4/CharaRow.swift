//
//  CharaRow.swift
//  HW4
//
//  Created by Mac11 on 2025/4/22.
//
import SwiftUI

struct CharaRow: View{
    let character: Character
    
    var body: some View{
        HStack{
            Image(character.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            Text(character.name)
                .font(.system(size: 25, weight: .bold, design: .serif))
            Spacer()
        }
        
    }
}

#Preview(traits: .sizeThatFitsLayout){
    CharaRow(character: Character(coverImage: "Vi_intro", name: "菲艾", description: "菲艾的本性善良，來自底城佐恩，小時在一次皮爾托福與佐恩的衝突戰事中，范德爾收留了她和妹妹爆爆。她有強大的格鬥技巧，在上城的竊盜事件及後來西爾柯（或譯：希爾科）挾持養父范德爾事件後，與妹妹爆爆分離。而後來到上城，在皮爾托福警備隊服役，維護上城治安，她的主要武器是海克斯科技的拳套。", icon: "Vi_icon"))
}
