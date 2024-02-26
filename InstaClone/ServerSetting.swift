//
//  ServerSetting.swift
//  Universal
//
//  Created by Awesomepia on 2023/03/29.
//

import Foundation

struct ServerSetting {
    static let server: Server = .DEV
    
    // MARK: DEV v1.0.20(154) with Unity(1.0.14_f2) - 2023/12/22
    
    enum Server: String {
        case DEV
        case QA
        case RELEASE
        
        var URL: String {
            switch self {
            case .DEV:
                return ""
                
            case .QA:
                return ""
                
            case .RELEASE:
                return ""
            }
        }
        
        var imageServerFactor: String {
            switch self {
            case .DEV:
                return "dev"
                
            case .QA:
                return "qa"
                
            case .RELEASE:
                return "prod"
            }
        }
        
    }
}
