//
//  AuthService.swift
//  vkApp
//
//  Created by Даниил Ермоленко on 26.03.2022.
//

import Foundation
import VK_ios_sdk

final class AuthService: NSObject, VKSdkDelegate, VKSdkUIDelegate {
  
    
    private let appId = "8116311"
    private let vkSdk: VKSdk
    
    override init() {
        vkSdk = VKSdk.initialize(withAppId: appId)
        super.init()
        print("VKSdk.initialize")
        vkSdk.register(self)
        vkSdk.uiDelegate = self
    }
    // MARK: VKSdkDlegate
    
    func vkSdkAccessAuthorizationFinished(with result: VKAuthorizationResult!) {
        print(#function)
    }
    
    func vkSdkUserAuthorizationFailed() {
        print(#function)
    }
    
    // MARK: VKSdkUIDlegate
    
    func vkSdkShouldPresent(_ controller: UIViewController!) {
        print(#function)
    }
    
    func vkSdkNeedCaptchaEnter(_ captchaError: VKError!) {
        print(#function)
    }
}
