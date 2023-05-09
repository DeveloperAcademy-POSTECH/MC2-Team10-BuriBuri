//
//  Item.swift
//  FileManagerTest
//
//  Created by xnoag on 2023/05/08.
//

import Foundation
import SwiftUI

// 데이터(뷰에 전달할 수 있는)를 저장할 모델(Item)을 만든다.
// Item 타입을 따르는 각 데이터들을 식별할 수 있게 Identifiable 프로토콜을 준수하게 한다.
// JSON 파일과 데이터를 주고받고할 수 있게 Codable 프로토콜을 준수하게 한다.
struct Item: Identifiable, Codable {
    // 자동으로 UniqueID를 부여해주는 UUID를 사용해서 id 프로퍼티를 생성한다.
    var id: UUID = UUID()
    var url: URL
}

extension Item: Equatable {
    static func ==(lhs: Item, rhs: Item) -> Bool {
        return lhs.id == rhs.id && lhs.id == rhs.id
    }
}
