//
//  OpenAPISecuritySchemasBuilder.swift
//  TaskerServerLib
//
//  Created by Marcin Czachurski on 25.03.2018.
//

import Foundation

class OpenAPISecuritySchemasBuilder {

    let authorizations: [APIAuthorizationType]?
    let authorization: Bool

    init(authorization: Bool, authorizations: [APIAuthorizationType]?) {
        self.authorization = authorization
        self.authorizations = authorizations
    }

    func build() -> [[String: [String]]]? {

        var securitySchemas: [[String: [String]]]? = nil

        if self.authorization && self.authorizations != nil {
            securitySchemas = []

            for authorization in self.authorizations! {
                switch authorization {
                case .basic(description: _):
                    var securityDict:[String: [String]] = [:]
                    securityDict["auth_basic"] = []
                    securitySchemas!.append(securityDict)
                case .jwt(description: _):
                    var securityDict:[String: [String]] = [:]
                    securityDict["auth_jwt"] = []
                    securitySchemas!.append(securityDict)
                case .anonymous:
                    break
                }
            }
        }

        return securitySchemas
    }
}
