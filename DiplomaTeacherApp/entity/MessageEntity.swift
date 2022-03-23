//
//  MessageEntity.swift
//  DiplomaTeacherApp
//
//  Created by Иван Суслов on 23.03.2022.
//

import Foundation

struct ChatMessage: Codable {
    
    let id: String
    let dialog_id: String
    //check if should be acc or another
    let sender: Account
    let text: String
    let isRead: Bool
    //TODO: - сделать вложения
//    let attachments: [Content]?
    let datetime: String
    
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        id = try container.decode(String.self, forKey: .id)
//        dialog = try container.decode(String.self, forKey: .dialog)
//        sender = try container.decode(Codable.self, forKey: .sender) as! User
//        text = try container.decode(String.self, forKey: .text)
//        isRead = try container.decode(Bool.self, forKey: .isRead)
//        forwardFrom = try container.decode(String.self, forKey: .forwardFrom)
//        datetime = try container.decode(Codable.self, forKey: .datetime) as! Date
//    }

    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case dialog_id = "dialog_id"
        case sender = "sender"
        case text = "text"
        case isRead = "isRead"
//        case attachments
        case datetime = "date"
    }
}

struct SearchMessage: Codable {
    let items: [ChatMessage]
}
