//
//  PresenterClass.swift
//  UnitTestProj
//
//  Created by Rish on 11/4/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import Foundation

protocol PresenterClassInterface {
    func buildErrorMessage(errorCode: Int) -> String
}

class PresenterClass: PresenterClassInterface {
    
    /// This is temporary function which create error message from errorCode
    ///
    /// - Parameter errorCode: error code Int Type
    /// - Returns: errormessage string type
    func buildErrorMessage(errorCode: Int) -> String {
        let errorMessage = ErrorCode(rawValue: errorCode)?.errorMessage
        return errorMessage ?? ""
    }
}
