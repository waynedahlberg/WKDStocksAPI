//
//  APIError.swift
//  
//
//  Created by Wayne Dahlberg on 10/2/22.
//

import Foundation

public enum APIError: CustomNSError {
  case invalidURL
  case invalidResponse
  case httpStatusCodeFailed(statusCode: Int, error: ErrorResponse?)
  
  public static var errorDomain: String {
    "StocksAPI"
  }
  
  public var errorCode: Int {
    switch self {
    case .invalidURL:
      return 0
    case .invalidResponse:
      return 1
    case .httpStatusCodeFailed:
      return 2
    }
  }
  
  public var errorUserInfo: [String : Any] {
    let text: String
    switch self {
    case .invalidURL:
      text = "Invalid URL"
    case .invalidResponse:
      text = "Invalid response type"
    case let .httpStatusCodeFailed(statusCode, error):
      if let error = error {
        text = "Error: Status code: \(statusCode), message: \(error.description)"
      } else {
        text = "Error: status code: \(statusCode)"
      }
    }
    return [NSLocalizedDescriptionKey: text]
  }
}
