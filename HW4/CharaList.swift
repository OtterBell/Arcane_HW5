//
//  CharaList.swift
//  HW4
//
//  Created by Mac11 on 2025/4/22.
//

import SwiftUI

struct CharaList: View {
    let characters = [
                    Character(coverImage: "Vi_intro", name: "菲艾", description: "菲艾的本性善良，來自底城佐恩，小時在一次皮爾托福與佐恩的衝突戰事中，范德爾收留了她和妹妹爆爆。她有強大的格鬥技巧，在上城的竊盜事件及後來西爾柯（或譯：希爾科）挾持養父范德爾事件後，與妹妹爆爆分離。而後來到上城，在皮爾托福警備隊服役，維護上城治安，她的主要武器是海克斯科技的拳套。", icon: "Vi_icon"),
                      Character(coverImage: "Jinx_intro", name: "吉茵珂絲", description: "吉茵珂絲小名爆爆，小時跟著姊姊菲艾經歷不少街頭犯罪，在西爾柯挾持養父范德爾事件，成了兩人命運的分離，她被西爾柯收養，長大成了瘋狂的犯罪分子，性情衝動，以破壞為樂，會帶一些自己製造的玩具（但卻是爆炸物品或致命武器），製造混亂與恐慌。", icon: "Jinx_icon"),
                      Character(coverImage: "Cait_intro", name: "凱特琳", description: "凱特琳是皮爾托福的執法官，與菲艾搭檔，她的個性冷靜，可以互補不時爆衝的菲艾。她的主要武器是海克斯科技的來福槍。", icon: "Cait_icon"),
                      Character(coverImage: "Heimer_intro", name: "漢默丁格", description: "漢默丁格是皮爾托福有史以來擁有最創新思想和最令人尊敬的發明大師，他是杰西和維克特的老師，但在奧術的海克斯科技應用立場上，與杰西和維克特相左。", icon: "Heimer_icon"),
                      Character(coverImage: "Jayce_intro", name: "傑西", description: "杰西是科學發明家，小時曾經歷奧術魔法，解救母親生命的奇蹟，從而不停想以科技創造出改變世界的奧術。在竊盜事件，以致他的魔法研究曝光，遭到上城議會審判，之後在維克特的協助下，兩人研究出海克斯科技。", icon: "Jayce_icon"),
                      Character(coverImage: "Viktor_intro", name: "維克特", description: "維克特因瘸腿，忍受不少外人的歧視眼光，他原是漢默丁格的助手，但極有企圖心，不甘只是做為別人的幕僚，他有強烈的科技進化理想，希望透過科技，激發人類隱藏的潛能。", icon: "Viktor_icon"),
                      Character(coverImage: "Ekko_intro", name: "艾克", description: "艾克是佐恩街頭的天才，他從小與菲艾和吉茵珂絲姊妹相識。他發明裝置「驅動-Z」，可以探索現實的平行時空及操控時間。", icon: "Ekko_icon")]
    
    var body: some View {
        ZStack {
            NavigationStack{
                Text("主要角色")
                    .font(.system(size: 35, weight: .bold, design: .serif))
                List{
                    ForEach(0..<characters.count, id: \.self) { item in
                        let character = characters[item]
                        NavigationLink {
                            CharaDetail(character: character)
                        } label: {
                            CharaRow(character: character)
                        }
                    }
                    .listRowBackground(
                        UnevenRoundedRectangle()
                            .foregroundStyle(.white)
                            
                    )
                    .listRowSeparator(.automatic)
                }
                .listStyle(.automatic)
                .scrollContentBackground(.hidden)
                .background(.black)
            }
        }
        
    }

}

#Preview {
    CharaList()
}
