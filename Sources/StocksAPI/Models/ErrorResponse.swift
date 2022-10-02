//
//  ErrorResponse.swift
//  
//
//  Created by Wayne Dahlberg on 10/2/22.
//

import Foundation

public struct ErrorResponse: Codable {
  public let code: String
  public let description: String
  
  public init(code: String, description: String) {
    self.code = code
    self.description = description
  }
  
}
