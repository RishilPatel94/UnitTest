//
//  ErrorHandler.swift
//  UnitTestProj
//
//  Created by Rish on 11/4/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import Foundation

enum ErrorCode: Int {
    case error1000 = 1000
    case error2000 = 2000
    
    var errorMessage: String {
        let errorMessage1000 = "Temporary error 1000"
        let errorMessage2000 = "Temporary error 2000"
    
        switch self {
        case .error1000:
            return errorMessage1000
        case .error2000:
            return errorMessage2000
        }
    }
}
