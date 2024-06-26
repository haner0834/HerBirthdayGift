//
//  CardContent.swift
//  楊昀恩生日欸
//
//  Created by Andy Lin on 2024/2/4.
//

import SwiftUI

struct CardContent: View {
    @Binding var isTapped: Bool
    
    @State private var tapTimes: Int = 0
    @State private var isBack: Bool = false
    @State private var isShowBackButton: Bool = false
    let userDefault = UserDefaults.standard
    static let key = UserDefaultKeys.cardVisitTimes
    let visitTimes = UserDefaults.standard.integer(forKey: key)
    
    var card = CardContext()
    let contentType: ContextType
    
    init(isTapped: Binding<Bool>, forContent contentType: ContextType = .defaultContent) {
        _isTapped = isTapped
        let key = UserDefaultKeys.cardVisitTimes
        let visitTimes = userDefault.integer(forKey: key)
        if visitTimes >= 10 && visitTimes < 12 {
            self.contentType = .contentAfterVisit10Times
            card = CardContext(contextType: .contentAfterVisit10Times)
        }else {
            self.contentType = contentType
            card = CardContext(contextType: contentType)
        }
    }
    
    var body: some View {
        ZStack {
            VStack {
                let count = card.content.count
                
                ForEach(0..<count, id: \.self) { i in
                    let content = card.content[i]
                    
                    if tapTimes >= i && tapTimes < i + 1 {
                        Text(.init(content.text))
                            .font(.title)
                            .bold()
                            .transition(
                                .asymmetric(insertion: .move(edge: isBack ? .top: .bottom).combined(with: .opacity),
                                            removal: .move(edge: isBack ? .bottom: .top).combined(with: .opacity))
                            )
                        
                        if let image = content.image {
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 16.0))
                                .padding(.horizontal)
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.background)
            .foregroundStyle(Color.black)
            
            VStack {
                HStack(spacing: 0) {
                    Color.black.opacity(card.contextType == .defaultContent ? (tapTimes == 1 ? 0.3: 0.001): 0.001)
                        .onTapGesture(perform: processBack)
                    
                    Color.black.opacity(card.contextType == .defaultContent ? (tapTimes == 2 ? 0.3: 0.001): 0.001)
                        .onTapGesture(perform: processContinue)
                }
                .ignoresSafeArea(edges: .all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                if isShowBackButton {
                    Button(action: leaveCard) {
                        Text("Back")
                            .foregroundStyle(Color.white)
                            .bold()
                            .padding(16)
                            .background {
                                RoundedRectangle(cornerRadius: 20)
                            }
                    }
                }
            }
        }
        .onAppear {
            userDefault.set(visitTimes + 1, forKey: CardContent.key)
        }
    }
    
    func leaveCard() {
        withAnimation {
            isTapped = false
        }
    }
    
    func processContinue() {
        withAnimation {
            isBack = false
            tapTimes += 1
            
            let count = card.content.count
            isTapped = tapTimes <= count - 1
            if tapTimes <= count - 1 {
                if let isShowButtom = card.content[tapTimes].isShowButton {
                    isShowBackButton = isShowButtom
                }
            }
        }
    }
    
    func processBack() {
        withAnimation {
            isBack = tapTimes == 0 ? false: true
            tapTimes -= tapTimes == 0 ? -1: 1
            isTapped = tapTimes != 0
            
            if let isShowButton = card.content[tapTimes].isShowButton {
                isShowBackButton = isShowButton
            }
        }
    }
}

extension Array where Element == CardContentItem {
    func find(text: String = "", image: Image = Image("GraduationTrip"), isShowButton: Bool? = nil) -> Int? {
        for (i, item) in self.enumerated() where item.text == text && item.image == image && item.isShowButton == isShowButton {
            return i
        }
        return nil
    }
}

#Preview {
    CardContent(isTapped: .constant(false), forContent: .graduateGreeting)
}

#Preview {
    ContentView()
        .environmentObject(GlobalViewModel())
}
