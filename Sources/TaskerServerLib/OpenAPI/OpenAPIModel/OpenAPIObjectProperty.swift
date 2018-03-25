//
//  OpenAPIObjectProperty.swift
//  TaskerServerLib
//
//  Created by Marcin Czachurski on 21.03.2018.
//

import Foundation

class OpenAPIObjectProperty: Encodable {
    
    public private(set) var type: String
    public private(set) var example: String?

    init(type: String, example: String?) {
        self.type = type
        self.example = example
    }
}
