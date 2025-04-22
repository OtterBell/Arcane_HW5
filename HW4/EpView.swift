//
//  Ep01_03View.swift
//  HW4
//
//  Created by Mac11 on 2025/4/22.
//

import SwiftUI

struct EpView: View {
    let title = ["第1集","第2集","第3集","第4集","第5集","第6集","第7集","第8集","第9集"]
    let images = ["bg_01", "bg_02", "bg_03", "bg_04", "bg_05", "bg_06", "bg_07", "bg_08", "bg_09"]
    let descriptions = ["菲艾、妹妹爆爆和兩位跟班，根據小不點艾克的情報潛入富裕的皮爾托福搶劫，但原本順利的計畫卻在屋主杰西回家後出了差錯，並炸毀了這棟建築物。雖然無人傷亡，但這起事件不僅讓執法者對於地下城區展開大規模搜查，使得人們生活開始改變。","爆炸導致杰西的危險研究曝光，遭到警方逮捕，領導學院的漢默丁格試著保護他，但充滿雄心壯志的杰西不顧他的勸告，在議會上公開自己希望透過魔法達成的願景。另一方面，菲艾和爆爆的行為讓養父范德爾被皮爾托福的菁英警察盯上，頻頻跑到他們的酒館搜查，並給予嚴重的警告。","一頭失去理智的野獸殺死前來酒吧搜索的警察，並把范德爾給抓走。前往營救范德爾的菲艾落入反派設下的圈套，面對絕境，范德爾為了拯救菲艾決定喝下紫色藥劑，儘管成功解決反派的打手，但也因為要保護菲艾而犧牲了生命。同一時間，杰西與維克特終於成功研發能夠運用奧術的工具。","爆爆現在叫吉茵珂絲，與希爾科住在一起，並幫助他將材料走私到皮爾托福，其中以「微光」為大宗，然而這次走私出錯了。","凱特琳將菲艾從監獄中釋放出來並與她一起尋找希爾科。","維克特找到了他的童年導師，以幫助完善海克斯核心。此時菲艾和凱特琳則找到一個安全屋，並在這邊養傷。恢復後菲艾與爆爆短暫重逢，但又被偷襲而被迫分離。","隨著兩座城市之間的動盪和暴力日益加劇，梅爾說服傑西從事海克斯科技武器的研發。","希爾科帶著吉茵珂絲求助醫生，並在治療中因為注入大量微光而使瞳孔變為微光的顏色。漢默丁格與艾克相遇。","菲艾擊敗塞薇卡，但隨後被吉茵珂絲綁架。經由最後的辯論，吉茵珂絲選擇成為「吉茵珂絲」，並向皮爾托福(上城)議會開火。"]
    @Environment(\.horizontalSizeClass) private var placetobe
    @State private var selectedItem = 0
        
    var body: some View {
        ZStack {
            TabView(selection: $selectedItem){
                ForEach(0..<images.count, id: \.self){ item in
                    Image(images[item])
                        .resizable()
                        .scaledToFill()
                        .tag(item)//讓tabview知道這是第幾頁
                }
            }
            .tabViewStyle(.page)

            GeometryReader { geo in
                Text(title[selectedItem])
                    .font(.system(size: 30, weight: .bold, design: .serif))
                    .foregroundStyle(.linearGradient(colors: [.green,.blue, .purple], startPoint: .top, endPoint: .bottom))
                    .shadow(radius: 5)
                    .padding()
                    .background(.black.opacity(0.8))
                    .clipShape(.rect(cornerRadius: 15))
                    .padding(.horizontal)
                    .position(x: geo.size.width * 0.5, y: geo.size.height * 0.06)
            }
                
            GeometryReader { geo in
                Text(descriptions[selectedItem])
                    .font(.system(size: 25, weight: .medium, design: .serif))
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black.opacity(0.8))
                    .clipShape(.rect(cornerRadius: 15))
                    .padding(.horizontal)
                    .position(x: geo.size.width * 0.5, y: geo.size.height * 0.74)
            }
        }
    }
}

#Preview {
    EpView()
}
