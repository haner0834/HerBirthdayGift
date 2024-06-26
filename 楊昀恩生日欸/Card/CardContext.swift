//
//  CardContext.swift
//  楊昀恩生日欸
//
//  Created by Andy Lin on 2024/2/6.
//

import Foundation
import SwiftUI

enum ContextType {
    case defaultContent, contentAfterVisit10Times, cardNonsense, graduateGreeting, memories, newNonsence, noGraduation, aSmartHumanSaid, noGraduation2
}

final class CardContext {
    var contextType: ContextType
    
    init(contextType: ContextType = .defaultContent) {
        self.contextType = contextType
    }
    
    var content: [CardContentItem] {
        switch contextType {
        case .defaultContent:
            return defaultContent
        case .contentAfterVisit10Times:
            return contentAfterVisit10Times
        case .cardNonsense:
            return cardNonsense
        case .graduateGreeting:
            return graduateGreeting
        case .memories:
            return memories
        case .newNonsence:
            return newNonsence
        case .noGraduation:
            return noGraduation
        case .aSmartHumanSaid:
            return aSmartHumanSaid
        case .noGraduation2:
            return noGraduation2
        default:
            return [.init(text: "ERROR")]
        }
    }
    
    fileprivate static let pushTimes = UserDefaults.standard.integer(forKey: UserDefaultKeys.notificationPushTimes)
    
    let defaultContent: [CardContentItem] = [
        CardContentItem(text: "Tap to see moreeeee"),
        CardContentItem(text: "Left is back"),
        CardContentItem(text: "Right is continue"),
        CardContentItem(text: "welcome to your birthday greeting"),
        CardContentItem(text: "just watch "),
        CardContentItem(text: "and"),
        CardContentItem(text: "enjoy it :D"),
        CardContentItem(text: ""),
        CardContentItem(text: "欸你好"),
        CardContentItem(text: "這是我給你的生日禮物"),
        CardContentItem(text: "驚不驚喜 E不EY"),
        CardContentItem(text: "想必沒人給你過這種生日禮物8️⃣"),
        CardContentItem(text: "哎呀你那時候就在那裡問"),
        CardContentItem(text: "不是說了之後自己會知道唄"),
        CardContentItem(text: "總之"),
        CardContentItem(text: "你一定是非常高興收到這個對吧:D"),
        CardContentItem(text: "欸你看"),
        CardContentItem(text: "你總共開了這個app \(pushTimes)次ㄟ"),
        CardContentItem(text: "好啦這個功能是那次更新才加上去ㄉ\n所以可能會不準:D"),
        CardContentItem(text: "嗯對 ㄜ"),
        CardContentItem(text: "生日禮物的部分"),
        CardContentItem(text: "我很抱歉🙃"),
        CardContentItem(text: "🙇🏻‍♂️🙇🏻‍♂️🙇🏻‍♂️"),
        CardContentItem(text: ""),
        CardContentItem(text: "這就當作是你給我的禮物的回禮好ㄌ"),
        CardContentItem(text: "好啦，㊗️你生日快樂"),
        CardContentItem(text: "", image: Image("BirthdayGreeting")),
        CardContentItem(text: "用你的魔法打敗你:D"),
        CardContentItem(text: "好啦"),
        CardContentItem(text: "我多想一次"),
        CardContentItem(text: "試都考高 比賽都贏 不會遇到爛桃花"),
        CardContentItem(text: "多送第四個給你自己選ㄅ"),
        CardContentItem(text: "有空記得常來看看這些廢話(·▷．)"),
        CardContentItem(text: "搞不好會有你意想不到的東東:D"),
        CardContentItem(text: "好啦 廢話好像有點太多ㄌ\n講點正經的好了"),
        CardContentItem(text: "這段從國小開始的緣分（？"),
        CardContentItem(text: "好像是快要結束了餒：（"),
        CardContentItem(text: "這樣看一看 雖然我們才比較熟快一年而已"),
        CardContentItem(text: "阿但是好像真的挺多東西能拿出來講"),
        CardContentItem(text: "但這一年裡面我不知道惹了多少事:D"),
        CardContentItem(text: "而且好像也挺多事情發生ㄉ"),
        CardContentItem(text: "從一開始你來找我 那位柏寬🈹"),
        CardContentItem(text: "還有3月的那個11的事情（好我很對不起他：）"),
        CardContentItem(text: "到大概4月之後的自信🈹&那位人見人愛ㄉ婷涵:D"),
        CardContentItem(text: "之後你開始跟我說10一天到晚在那裡靠腰很煩"),
        CardContentItem(text: "後來6 7月"),
        CardContentItem(text: "ㄜ 耳環事件我就不多說了"),
        CardContentItem(text: "後面的我好像也幾乎忘了"),
        CardContentItem(text: "欸對"),
        CardContentItem(text: "還有你給我生日禮物"),
        CardContentItem(text: "不用客氣la"),
        CardContentItem(text: "阿但是沒關係"),
        CardContentItem(text: "在這之間充斥著所有時間線的就是你的一某:D"),
        CardContentItem(text: "雖然最近你不怎麼理我"),
        CardContentItem(text: "訊息都過好幾個小時才回：（"),
        CardContentItem(text: "啊但我還是回禮一下好了"),
        CardContentItem(text: "嗯對還是感謝一下你教我歷史好了:D"),
        CardContentItem(text: "還有那個設計到一半的東東：（"),
        CardContentItem(text: "你呢"),
        CardContentItem(text: "都會在那邊"),
        CardContentItem(text: "欸很扯欸 校車上/回去訊息講"),
        CardContentItem(text: "然後講著講著就不講ㄌ"),
        CardContentItem(text: "在那裡吊胃口"),
        CardContentItem(text: "。"),
        CardContentItem(text: "說到這個"),
        CardContentItem(text: "你還沒跟我說你為什麼你要在那裡"),
        CardContentItem(text: "什麼比目魚 中央空調ㄉ"),
        CardContentItem(text: "跟我講啦拜託( •᷄⌓•᷅ )"),
        CardContentItem(text: ""),
        CardContentItem(text: "好啦"),
        CardContentItem(text: "最後"),
        CardContentItem(text: "再祝你生日快樂一次"),
        CardContentItem(text: "不要太在意其他人怎麼評價你la"),
        CardContentItem(text: "他們愛嘴賤就讓他們去賤唄"),
        CardContentItem(text: "還有"),
        CardContentItem(text: "謝謝你"),
        CardContentItem(text: ":D"),
        CardContentItem(text: "", isShowButton: true),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: "ㄟ", isShowButton: false),
        CardContentItem(text: "你怎麼還在"),
        CardContentItem(text: "不要太喜歡這個啦:D"),
        CardContentItem(text: "好啦"),
        CardContentItem(text: "給你看一些製作的東東好ㄌ"),
        CardContentItem(text: "你看我多用心ㄚ", image: Image("MakingDetail")),
        CardContentItem(text: "", isShowButton: true),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: "偷偷跟你講個秘密", isShowButton: false),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: "期待嗎"),
        CardContentItem(text: "期待就先跟我講這個是什麼👀", image: Image("ReasonOfFlounder")),
        CardContentItem(text: ""),
        CardContentItem(text: "", isShowButton: true),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: "吼呦", isShowButton: false),
        CardContentItem(text: "你怎麼還在啦"),
        CardContentItem(text: "你是不是真的以為我會寫什麼👀"),
        CardContentItem(text: "沒有這種事情好ㄇ"),
        CardContentItem(text: "我可以給你看你的照片👌🏻"),
        CardContentItem(text: "雖然沒多少就是了：）"),
        CardContentItem(text: "這是你在校車上被偷拍:D", image: Image("SheOnSchoolBus")),
        CardContentItem(text: "還有同場加映", image: Image("SheOnSchoolBus2")),
        CardContentItem(text: "欸還有你在那裡一某", image: Image("EmoText")),
        CardContentItem(text: "不要忘記這個你說眼睛ㄆㄧㄚˊ掉ㄉ", image: Image("SchoolFail")),
        CardContentItem(text: "喔對 還有這個"),
        CardContentItem(text: "我直接躲到超旁邊:D", image: Image("GraduationTrip-GroupPhoto")),
        CardContentItem(text: "你知道這張辛拉麵那一天一直說8拍得很好，講超久：）", image: Image("GraduationTrip")),
        CardContentItem(text: "還有這個啦 皮老闆:D", image: Image("Plankton")),
        CardContentItem(text: "好啦後面是真的沒有東西ㄌ"),
        CardContentItem(text: "給我按那個返回", isShowButton: true),
        CardContentItem(text: "繼續按你也按不出什麼東西:D"),
        CardContentItem(text: ""),
        CardContentItem(text: "夠了我要強制驅離ㄌ")
    ]
    
    let contentAfterVisit10Times: [CardContentItem] = [
        CardContentItem(text: "欸你知道ㄇ"),
        CardContentItem(text: "這是你看超過10次之後會出現ㄉ"),
        CardContentItem(text: "如果你想要回去原本ㄉ東東"),
        CardContentItem(text: "多看完幾次就會回去ㄌ:D（大概2次ㄅ）"),
        CardContentItem(text: "既然你都看這麼多次ㄌ"),
        CardContentItem(text: "想必是對這東西很有愛對吧👀"),
        CardContentItem(text: "好啦"),
        CardContentItem(text: "說真的"),
        CardContentItem(text: "如果你真的看到這個了"),
        CardContentItem(text: "我很感動"),
        CardContentItem(text: "是真的很感動：）"),
        CardContentItem(text: "還有"),
        CardContentItem(text: "沒帶到你的氣球我真的很抱歉：（"),
        CardContentItem(text: "欸對你知道ㄇ"),
        CardContentItem(text: "這個東東ㄚ"),
        CardContentItem(text: "過90天就會消失了"),
        CardContentItem(text: "不是我刪掉他"),
        CardContentItem(text: "是他本身TestFlight的限制"),
        CardContentItem(text: "如果你想一直留著的話"),
        CardContentItem(text: "記得叫我去更新:D"),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: "不知道你過得怎樣"),
        CardContentItem(text: "也不知道你什麼時候會看到這個"),
        CardContentItem(text: "也許根本沒有看到也說不定:D"),
        CardContentItem(text: ""),
        CardContentItem(text: "如果"),
        CardContentItem(text: "你看到這個"),
        CardContentItem(text: "祝你會考能順利考上你嚮往的學校"),
        CardContentItem(text: "唉呀"),
        CardContentItem(text: "我人真的太好了:D"),
        CardContentItem(text: ""),
        CardContentItem(text: "ㄞ"),
        CardContentItem(text: "國中生活還真的要結束了欸"),
        CardContentItem(text: ""),
        CardContentItem(text: "好..不真實（？"),
        CardContentItem(text: "一切都發生得那麼快"),
        CardContentItem(text: "一轉眼間"),
        CardContentItem(text: "從我們開始認識的國二"),
        CardContentItem(text: "到現在已經他媽國三要畢業了"),
        CardContentItem(text: "。"),
        CardContentItem(text: "我"),
        CardContentItem(text: "不知道講什麼"),
        CardContentItem(text: "過得好快"),
        CardContentItem(text: "真的好快"),
        CardContentItem(text: "就好像是一段旅行"),
        CardContentItem(text: "感覺才剛踏上啟程的路途"),
        CardContentItem(text: "馬上就結束了一樣"),
        CardContentItem(text: "我也知道除了11那群以外對你來說基本沒什麼好留念ㄉ"),
        CardContentItem(text: "（聽說你覺得都是在勾心鬥角:D"),
        CardContentItem(text: "好ㄅ"),
        CardContentItem(text: "感覺我也想不到什麼要講的ㄌ"),
        CardContentItem(text: "剩的如果你還想聽"),
        CardContentItem(text: "你去訊息提醒我講:D\n我還有記得的話la"),
        CardContentItem(text: "那就先醬子唄", isShowButton: true),
        CardContentItem(text: "可以離開ㄌ"),
        CardContentItem(text: "後面沒東西了"),
        CardContentItem(text: ""),
        CardContentItem(text: "")
    ]
    
    let cardNonsense: [CardContentItem] = [
        CardContentItem(text: "好啦不要再點ㄌ"),
        CardContentItem(text: "快點點那個信封啦"),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: "吼呦"),
        CardContentItem(text: "聽不懂ㄇ"),
        CardContentItem(text: "我要強制你進去ㄌ")
    ]
    
    let graduateGreeting: [CardContentItem] = [
        CardContentItem(text: "ㄟ嘿"),
        CardContentItem(text: "想不到8️⃣"),
        CardContentItem(text: "又是新的玩法"),
        CardContentItem(text: "我真厲害"),
        CardContentItem(text: "承認我是天才ㄅ"),
        CardContentItem(text: "3D的欸"),
        CardContentItem(text: "看吧"),
        CardContentItem(text: "這超厲害"),
        CardContentItem(text: "反正到時候如果back出現你可能也不會按"),
        CardContentItem(text: "那就乾脆直接弄一本書"),
        CardContentItem(text: "你也退出不了:D"),
        CardContentItem(text: "欸而且"),
        CardContentItem(text: "這是我第一次有畢業典禮😂"),
        CardContentItem(text: "有夠可悲"),
        CardContentItem(text: "國小沒有畢典：（"),
        CardContentItem(text: "好啦"),
        CardContentItem(text: "廢話不多說"),
        CardContentItem(text: ":D"),
        CardContentItem(text: "你看到這個的時候應該已經畢業了吧？"),
        CardContentItem(text: "至少我是這麼預定的ㄌㄚ"),
        CardContentItem(text: "ㄣ"),
        CardContentItem(text: "不知道你上了哪所高中"),
        CardContentItem(text: "不知道你的會考成績如何"),
        CardContentItem(text: "也不知道我們之後到底會不會再繼續聊天"),
        CardContentItem(text: ""),
        CardContentItem(text: "ㄞ"),
        CardContentItem(text: "三年 好像就真的這樣過去了ㄟ"),
        CardContentItem(text: "這之間的各種往事"),
        CardContentItem(text: "什麼都體驗過"),
        CardContentItem(text: "卻又說什麼都沒辦法接受它已經要結束了的事實"),
        CardContentItem(text: "好希望這一切都只是假的"),
        CardContentItem(text: "希望這不要結束"),
        CardContentItem(text: "唉可惜了 \n：）"),
        CardContentItem(text: "欸對"),
        CardContentItem(text: "如果你有看到那個什麼"),
        CardContentItem(text: "你看這個ㄟㄆ超過10次的那個"),
        CardContentItem(text: "我會很感動🫶🏻"),
        CardContentItem(text: ""),
        CardContentItem(text: "好吧"),
        CardContentItem(text: "畢業快樂"),
        CardContentItem(text: "🎓"),
        CardContentItem(text: "我知道啦"),
        CardContentItem(text: "那個賈伯斯的"),
        CardContentItem(text: "Stay hungry"),
        CardContentItem(text: "Stay foolish"),
        CardContentItem(text: "給個畢業祝福好了"),
        CardContentItem(text: "希望你上高中也能搞好人際關係"),
        CardContentItem(text: "不要整天一某:D"),
        CardContentItem(text: "還有"),
        CardContentItem(text: "讀書變很輕鬆"),
        CardContentItem(text: "直接開竅👍🏻"),
        CardContentItem(text: "你看我人多好ㄚ"),
        CardContentItem(text: "還幫你祝福那麼多", isShowButton: true),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: "欸", isShowButton: false),
        CardContentItem(text: "你還在ㄚ"),
        CardContentItem(text: "感動ㄟ（雖然你也退出不了😂"),
        CardContentItem(text: "我不知道怎麼結尾欸"),
        CardContentItem(text: "前面講那麼多"),
        CardContentItem(text: "突然不知道要怎麼結尾了"),
        CardContentItem(text: "超好笑"),
        CardContentItem(text: "還是你來幫我想:D", isShowButton: true),
        CardContentItem(text: ""),
        CardContentItem(text: "", isShowButton: false),
        CardContentItem(text: "好吧"),
        CardContentItem(text: "我來講一下你的這個禮物我藏的所有彩蛋好ㄌ"),
        CardContentItem(text: "有些真的是無聊到我也不知道為什麼我會要放這個😂"),
        CardContentItem(text: "來首先是第一個"),
        CardContentItem(text: "這個是不是很眼熟", image: Image("Egg-16e")),
        CardContentItem(text: "你知道為什麼是長這樣ㄇ"),
        CardContentItem(text: "你去算一下這有幾個e"),
        CardContentItem(text: "第一面總共7個"),
        CardContentItem(text: "全部的的話是16個"),
        CardContentItem(text: "看我多厲害ㄚ"),
        CardContentItem(text: "然後接下來是"),
        CardContentItem(text: "這個", image: Image("Egg-Donald")),
        CardContentItem(text: "是在致敬你給我的生日卡片旁邊那隻可愛ㄉ唐老鴨"),
        CardContentItem(text: "", image: Image("CardGaveToMe")),
        CardContentItem(text: "只是我找不到旁邊那個貼紙：（"),
        CardContentItem(text: "所以史努比就沒放ㄌ"),
        CardContentItem(text: "然後"),
        CardContentItem(text: "還有還有"),
        CardContentItem(text: "最開始"),
        CardContentItem(text: "你ㄉ生日還沒到的時候"),
        CardContentItem(text: "不是有那個"),
        CardContentItem(text: "點螢幕就有一堆廢話跑出來"),
        CardContentItem(text: "這個ㄚ"),
        CardContentItem(text: "你點7次是第一條"),
        CardContentItem(text: "點11次是第二條"),
        CardContentItem(text: "點16次是第三條"),
        CardContentItem(text: "後面還有一個"),
        CardContentItem(text: "34次是第6條"),
        CardContentItem(text: "然後其他的都是隨便的數字"),
        CardContentItem(text: "欸 拜託"),
        CardContentItem(text: "作者還是可以留名一下ㄉ好嗎👌🏻"),
        CardContentItem(text: "這代表什麼"),
        CardContentItem(text: "讓我想想"),
        CardContentItem(text: "ㄜ"),
        CardContentItem(text: "一定是什麼"),
        CardContentItem(text: "代表你們三個可以永不分離"),
        CardContentItem(text: "對8️⃣"),
        CardContentItem(text: ":D"),
        CardContentItem(text: "還有就是"),
        CardContentItem(text: "當你開這個app超過10次"),
        CardContentItem(text: "他會跳出來一個特別篇"),
        CardContentItem(text: "裡面也沒什麼"),
        CardContentItem(text: "但就是多講了一些話"),
        CardContentItem(text: "而且不知道你有沒有發現"),
        CardContentItem(text: "就是"),
        CardContentItem(text: "我有說"),
        CardContentItem(text: "：有空記得常回來看"),
        CardContentItem(text: "：搞不好會有你想不到的東西(·▷．)"),
        CardContentItem(text: "看吧"),
        CardContentItem(text: "都講過了"),
        CardContentItem(text: "有沒有被發現而已😀"),
        CardContentItem(text: "讓我再想想"),
        CardContentItem(text: "喔對"),
        CardContentItem(text: "還有那個"),
        CardContentItem(text: "我在你生日當天的通知"),
        CardContentItem(text: "有7.16.11秒送出的通知"),
        CardContentItem(text: "酷ㄅ"),
        CardContentItem(text: "let me想一下還有什麼"),
        CardContentItem(text: "ㄛ對啦"),
        CardContentItem(text: "還有那個"),
        CardContentItem(text: "不是有後面點很多下才出現的彩蛋ㄇ"),
        CardContentItem(text: "那個分別是7下11下16下"),
        CardContentItem(text: "ㄣ"),
        CardContentItem(text: "好像還有其他的"),
        CardContentItem(text: "但"),
        CardContentItem(text: "我目前想不到"),
        CardContentItem(text: "想到再說唄"),
        CardContentItem(text: "欸對你知道嗎"),
        CardContentItem(text: "我這個作品有上傳ㄛ"),
        CardContentItem(text: "酷吧"),
        CardContentItem(text: ""),
        CardContentItem(text: "好"),
        CardContentItem(text: "我沒話講了"),
        CardContentItem(text: "那就"),
        CardContentItem(text: "ㄜ"),
        CardContentItem(text: "掰掰"),
        CardContentItem(text: ":D", isShowButton: true),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: "沒有啦開玩笑的", isShowButton: false),
        CardContentItem(text: "我怎麼可能沒話講了"),
        CardContentItem(text: "我想講的話超多欸"),
        CardContentItem(text: "比公民老師話癆"),
        CardContentItem(text: "搞笑的還是真的想講的"),
        CardContentItem(text: "全部弄出來可能有快千字（一定是這樣的好嗎"),
        CardContentItem(text: "我想得到的話再講ㄅ"),
        CardContentItem(text: "好啦"),
        CardContentItem(text: "這個章節就在這裡畫上句號ㄌ"),
        CardContentItem(text: "掰:D")
    ]
    
    let newNonsence: [CardContentItem] = [
        CardContentItem(text: "欸"),
        CardContentItem(text: "你好啊"),
        CardContentItem(text: "要會考了ㄟ"),
        CardContentItem(text: "ㄍㄢ"),
        CardContentItem(text: "讀不完了啦"),
        CardContentItem(text: "我也不知道你那時候還會剩幾天"),
        CardContentItem(text: "啊那我就做個會考倒數好了"),
        CardContentItem(text: "出去左轉就有了:D", isShowButton: true),
        CardContentItem(text: "好啦沒有啦開玩笑的", isShowButton: false),
        CardContentItem(text: "我也沒那個時間去做了"),
        CardContentItem(text: "真的要的話我明年可以送你😎"),
        CardContentItem(text: "啊是誰啊"),
        CardContentItem(text: "叫我再更新這個:D"),
        CardContentItem(text: "很愛是嗎"),
        CardContentItem(text: "跟你講ㄛ"),
        CardContentItem(text: "好吧\n我也不知道講什麼"),
        CardContentItem(text: "沒關係"),
        CardContentItem(text: "最近還好嗎"),
        CardContentItem(text: "會考ㄚ"),
        CardContentItem(text: "段考ㄚ"),
        CardContentItem(text: "模考ㄚ"),
        CardContentItem(text: "ㄍㄢ啊怎麼那麼多東西都排在四月。"),
        CardContentItem(text: "欸雖然壓力很大"),
        CardContentItem(text: "很煩"),
        CardContentItem(text: "可能覺得怎麼準備都學不會"),
        CardContentItem(text: "但不要放棄"),
        CardContentItem(text: "真的不要放棄"),
        CardContentItem(text: "不放棄至少還有一點機會"),
        CardContentItem(text: "放了真的就什麼都沒了💩"),
        CardContentItem(text: "加油"),
        CardContentItem(text: "😃"),
        CardContentItem(text: "相信自己"),
        CardContentItem(text: "喔然後還有"),
        CardContentItem(text: "到底誰跟你說的有情緒不處理是成熟"),
        CardContentItem(text: "是堅強"),
        CardContentItem(text: "是好事啊"),
        CardContentItem(text: "=="),
        CardContentItem(text: "有情緒就處理ㄚ"),
        CardContentItem(text: "又不是矯情"),
        CardContentItem(text: "你這是什麼被扭曲的三觀"),
        CardContentItem(text: "❓"),
        CardContentItem(text: "有情緒就好好面對它"),
        CardContentItem(text: "不要一直放在心裡"),
        CardContentItem(text: "這樣總有一天會爆ㄉ"),
        CardContentItem(text: "相信你也不會想某天特別不爽然後直接來一個爆炸ㄅ"),
        CardContentItem(text: "不要再被其他人的那種被扭曲的三觀影響了啦"),
        CardContentItem(text: "講到扭曲的三觀"),
        CardContentItem(text: "到底為什麼你會一直覺得你的腳很粗"),
        CardContentItem(text: "❓❓"),
        CardContentItem(text: "還有一直說自己很黑"),
        CardContentItem(text: "❓❓❓"),
        CardContentItem(text: "健康最重要啦‼️"),
        CardContentItem(text: "在那邊都不吃飯"),
        CardContentItem(text: "你這已經超過標準很多了好嗎👌🏻"),
        CardContentItem(text: "不是往下超過"),
        CardContentItem(text: "不要給我亂解讀：）"),
        CardContentItem(text: ""),
        CardContentItem(text: "好啦"),
        CardContentItem(text: "最後的最後"),
        CardContentItem(text: "你想按這按鈕退出就按這按鈕", isShowButton: true),
        CardContentItem(text: "不想的話我也是會強制驅逐👍🏻"),
        CardContentItem(text: "反正", isShowButton: false),
        CardContentItem(text: "我想說的是"),
        CardContentItem(text: "考試加油"),
        CardContentItem(text: "😃")
    ]
    
    let memories: [CardContentItem] = [
        CardContentItem(text: "ㄟ"),
        CardContentItem(text: "你點進來這個了"),
        CardContentItem(text: "是不是很期待ㄚ"),
        CardContentItem(text: "跟你說ㄛ"),
        CardContentItem(text: "我也很期待"),
        CardContentItem(text: "這裡就是放很多我拍的一些照片而已"),
        CardContentItem(text: "然後講個幹話"),
        CardContentItem(text: "反正"),
        CardContentItem(text: "等等就看唄"),
        CardContentItem(text: "但由於我真的沒啥你的照片"),
        CardContentItem(text: "so"),
        CardContentItem(text: "一堆截圖"),
        CardContentItem(text: "：）"),
        CardContentItem(text: "然後"),
        CardContentItem(text: "我也很希望能照時間放照片"),
        CardContentItem(text: "但真的沒辦法"),
        CardContentItem(text: "那些截圖很多都是剛截的"),
        CardContentItem(text: "找不到時間ㄌ"),
        CardContentItem(text: ": ("),
        CardContentItem(text: "欸對"),
        CardContentItem(text: "我們會認識"),
        CardContentItem(text: "還是因為你中檢沒帶證件"),
        CardContentItem(text: "超好笑"),
        CardContentItem(text: "我跟大家認識的過程都好奇怪"),
        CardContentItem(text: "好我要放照片ㄌ"),
        CardContentItem(text: "這好像是我們才剛認識沒多久（？", image: Image("MiddleFinger")),
        CardContentItem(text: "你還記得嗎\n這是你教我歷史，我那時候不在家還拿手機做筆記", image: Image("FirstCall")),
        CardContentItem(text: "欸對"),
        CardContentItem(text: "這是我第一次跟女生講電話 :D"),
        CardContentItem(text: "超好笑"),
        CardContentItem(text: "然後是婷涵", image: Image("Tinghan")),
        CardContentItem(text: "滿滿ㄉ自信🈹小丑紀錄🤡", image: Image("Tinghan")),
        CardContentItem(text: "接下來這個", image: Image("SheOnSchoolBus")),
        CardContentItem(text: "跟這個", image: Image("SheOnSchoolBus2")),
        CardContentItem(text: "都是國二好像才認識沒多久的時候拍的"),
        CardContentItem(text: "還是什麼時候我也忘了：）"),
        CardContentItem(text: "欸對 這張我講完海蟑螂你就去睡覺了", image: Image("Plankton")),
        CardContentItem(text: "：（"),
        CardContentItem(text: "真可借 :D"),
        CardContentItem(text: "欸然後是這個", image: Image("BeLikeImage")),
        CardContentItem(text: "到底哪裡像：（", image: Image("BeLikeImage")),
        CardContentItem(text: "然後你看", image: Image("SchoolFail")),
        CardContentItem(text: "還有這個", image: Image("TyingHair")),
        CardContentItem(text: "都是在校慶的時候少數幾張有你ㄉ照片"),
        CardContentItem(text: "再後來 這是畢旅", image: Image("GraduationTrip-GroupPhoto")),
        CardContentItem(text: "還有這個", image: Image("GraduationTrip")),
        CardContentItem(text: "然後這個是我們在那裡玩螢光棒😂", image: Image("PlayingGlowSticks2")),
        CardContentItem(text: "還有你綁兩邊", image: Image("PlayingGlowSticks")),
        CardContentItem(text: "欸那時候真的超好玩"),
        CardContentItem(text: "還有"),
        CardContentItem(text: "這是最重要ㄉ"),
        CardContentItem(text: "聽說是不到100齁：）", image: Image("MyBDGift")),
        CardContentItem(text: "然後這超煩 你還是沒講", image: Image("ReasonOfFlounder")),
        CardContentItem(text: "然後這超好笑 你還畫在張腳上😂", image: Image("HappyBDOnHand")),
        CardContentItem(text: "接下來是這個"),
        CardContentItem(text: "欸這個學姊超唱歌厲害", image: Image("GreatSinger")),
        CardContentItem(text: "欸你還記得這個嗎😂", image: Image("KeepLaughing")),
        CardContentItem(text: "超好笑他那時候不知道在笑什麼"),
        CardContentItem(text: "然後"),
        CardContentItem(text: "過年"),
        CardContentItem(text: "好像沒有什麼東西"),
        CardContentItem(text: "那我放張101煙火好ㄌ", image: Image("Fireworks")),
        CardContentItem(text: "好ㄉ"),
        CardContentItem(text: "美好的2023就此結束"),
        CardContentItem(text: "進入到個人不怎麼喜歡的2024"),
        CardContentItem(text: "剛過完年就是", image: Image("MadeByPlastic")),
        CardContentItem(text: "❓", image: Image("HerDraw")),
        CardContentItem(text: "你設計到一半烙幹ㄉ", image: Image("MemoodContent")),
        CardContentItem(text: "然後這是你的生日蛋糕", image: Image("Icon")),
        CardContentItem(text: "看我多有心ㄚ"),
        CardContentItem(text: "ㄣ 那時候搞超久 超好笑", image: Image("SheHasBeenInvited")),
        CardContentItem(text: "然後ㄚ 跟你講 這絕對比那個52分鐘值得多ㄌ", image: Image("ScienceTeaching")),
        CardContentItem(text: "ㄟ 是醜魚欸", image: Image("WaterBottle")),
        CardContentItem(text: "Emo~~", image: Image("EmoText2")),
        CardContentItem(text: "貼圖:D", image: Image("Sticker")),
        CardContentItem(text: "天ㄚ愛死ㄌ 漂釀😍😍😍", image: Image("HasBeenLiked")),
        CardContentItem(text: "欸 要不是我有你電話 不然你回不了家ㄟ", image: Image("HerPhone")),
        CardContentItem(text: "好吧"),
        CardContentItem(text: "差不多就醬ㄌ"),
        CardContentItem(text: "其實還有很多我想放ㄉ"),
        CardContentItem(text: "但考慮到我真的沒有太多時間"),
        CardContentItem(text: "反正就"),
        CardContentItem(text: "ㄜ"),
        CardContentItem(text: "欸對"),
        CardContentItem(text: "有一首歌很好聽"),
        CardContentItem(text: "你去查查看"),
        CardContentItem(text: "サクラキミワタシ"),
        CardContentItem(text: "羅馬拼音是"),
        CardContentItem(text: "sakurakimiwatashi"),
        CardContentItem(text: "歌詞是畢業ㄉ"),
        CardContentItem(text: "個人覺得很好聽:D"),
        CardContentItem(text: "阿然後"),
        CardContentItem(text: "歌詞也挺有意境ㄉ"),
        CardContentItem(text: "雖然你可能也不會去聽：）"),
        CardContentItem(text: "好ㄌ"),
        CardContentItem(text: "先醬ㄅ"),
        CardContentItem(text: "我也沒什麼要講的了（吧？"),
        CardContentItem(text: "掰"),
        CardContentItem(text: ":D")
    ]
    
    let otherNonsence: [CardContentItem] = [
        CardContentItem(text: "我發現一件事"),
        CardContentItem(text: "那就是"),
        CardContentItem(text: "我好閒喔"),
        CardContentItem(text: "還有時間在這裡跟你做這個"),
        CardContentItem(text: "超無聊😂"),
        CardContentItem(text: "欸你知道嗎"),
        CardContentItem(text: "我也不知道我要講什麼"),
        CardContentItem(text: "反正你能看到這個"),
        CardContentItem(text: "肯定是你的福氣好嗎👌🏻"),
        CardContentItem(text: "來老實講"),
        CardContentItem(text: "你到底"),
        CardContentItem(text: "有沒有信心"),
        CardContentItem(text: "會考的部分😀"),
        CardContentItem(text: "來"),
        CardContentItem(text: "我也不知道剩幾天"),
        CardContentItem(text: "酷欸"),
        CardContentItem(text: "完蛋了"),
        CardContentItem(text: "…"),
        CardContentItem(text: "：）"),
        CardContentItem(text: ""),
        CardContentItem(text: "怎麼感覺我會死ㄚ"),
        CardContentItem(text: "ㄍㄢ"),
        CardContentItem(text: "怎麼辦"),
        CardContentItem(text: "我現在超挫"),
        CardContentItem(text: "怎麼辦啦"),
        CardContentItem(text: "完蛋"),
        CardContentItem(text: "我什麼都不會"),
        CardContentItem(text: "ㄍㄢ"),
        CardContentItem(text: "會不會到時候沒高中"),
        CardContentItem(text: ""),
        CardContentItem(text: ""),
        CardContentItem(text: "欸我突然發現"),
        CardContentItem(text: "我廢話好多ㄛ"),
        CardContentItem(text: "真的超無聊"),
        CardContentItem(text: "超好笑"),
        CardContentItem(text: "好"),
        CardContentItem(text: "這堆廢話要結束ㄌ"),
        CardContentItem(text: "81")
    ]

#if DEBUG
    let testArray: [CardContentItem] = [
        .init(text: "Page 1"),
        .init(text: "Page 2"),
        .init(text: "Page 3")
    ]
#endif
    
    let noGraduation: [CardContentItem] = [
        CardContentItem(text: "好ㄉ"),
        CardContentItem(text: "你點進來ㄌ"),
        CardContentItem(text: "開心了ㄇ"),
        CardContentItem(text: "沒有畢業要看什麼畢業紀念冊"),
        CardContentItem(text: "ㄏㄚˊ？"),
        CardContentItem(text: "好ㄚ"),
        CardContentItem(text: "都醬子ㄚ"),
        CardContentItem(text: "我都弄一個鎖在那裡ㄌ"),
        CardContentItem(text: "好笑ㄇ"),
        CardContentItem(text: ""),
        CardContentItem(text: "欸嘿"),
        CardContentItem(text: "你點進來了"),
        CardContentItem(text: "還是什麼都沒得到"),
        CardContentItem(text: "ㄏㄚㄏㄚ"),
        CardContentItem(text: ":D"),
    ]
    
    let noGraduation2: [CardContentItem] = [
        CardContentItem(text: "你以為"),
        CardContentItem(text: "在畢業前點進來"),
        CardContentItem(text: "我會讓你看這個ㄇ"),
        CardContentItem(text: "ㄏㄚˊ"),
        CardContentItem(text: "我有那麼善良就好了：）")
    ]
    
    let aSmartHumanSaid: [CardContentItem] = [
        CardContentItem(text: "有位智者曾說道："),
        CardContentItem(text: "“人生"),
        CardContentItem(text: "就像一條條看似毫無交集的平行線"),
        CardContentItem(text: "可微風輕拂"),
        CardContentItem(text: "造化弄人"),
        CardContentItem(text: "便有了縱橫交錯"),
        CardContentItem(text: "理不清，理還亂的交集”"),
        CardContentItem(text: "不愧是文科天才"),
        CardContentItem(text: "文筆就是不一樣"),
        CardContentItem(text: ":D")
    ]
}
