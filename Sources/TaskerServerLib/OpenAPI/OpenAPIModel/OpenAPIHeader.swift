//
//  OpenAPIHeader.swift
//  TaskerServerLib
//
//  Created by Marcin Czachurski on 19.03.2018.
//

import Foundation

class OpenAPIHeader: Encodable {

    public private(set) var ref: String?
    public private(set) var name: String?
    public private(set) var parameterLocation: OpenAPIParameterLocation = OpenAPIParameterLocation.path
    public private(set) var description: String?
    public private(set) var required: Bool = false
    public private(set) var deprecated: Bool = false
    public private(set) var allowEmptyValue: Bool = false

    init(ref: String) {
        self.ref = ref
    }
    
    init(name: String, parameterLocation: OpenAPIParameterLocation = OpenAPIParameterLocation.path, description: String? = nil,
         required: Bool = false, deprecated: Bool = false, allowEmptyValue: Bool = false) {
        self.name = name
        self.parameterLocation = parameterLocation
        self.description = description
        self.required = required
        self.deprecated = deprecated
        self.allowEmptyValue = allowEmptyValue
    }

    private enum CodingKeys: String, CodingKey {
        case ref = "$ref"
        case name
        case parameterLocation = "in"
        case description
        case required
        case deprecated
        case allowEmptyValue
    }
}
