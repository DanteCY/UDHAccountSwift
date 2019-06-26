//
//  UDHAccountManager.swift
//  UDHAccount
//
//  Created by hcy on 2019/6/26.
//  Copyright © 2019 yd. All rights reserved.
//

import UIKit

/// 通知
struct UDHAccountNotification {
    static let logined = "logined";//登录
    static let logout  =  "logout";//登出
}

/// 登录回调
public typealias  UDHAccountCompletion = (_ data:Any?, _ error: NSError?) -> Void



/// 登录登出
public protocol UDHAccountLoginProtocol:NSObject{
    
    func getVercode(mobile:String,comp:@escaping UDHAccountCompletion);
    
    func login(account:String,pwd:String,comp:@escaping UDHAccountCompletion);
    
    func login(account:String,code:String,comp:@escaping UDHAccountCompletion);
    
    func login(account:String,ssoCode:String,comp:@escaping UDHAccountCompletion);
    
    func logout(comp:@escaping UDHAccountCompletion);
}


/// 信息修改
public protocol UDHAccountInfoProtocol:NSObject{
    func modifyPwd(oldpwd:String,newPwd:String,comp:@escaping UDHAccountCompletion);
    
}

public protocol UDHAccountManagerProtocol:UDHAccountLoginProtocol{
    
}

public class UDHAccountManager: NSObject {
    public var host:String = "";//服务器地址
    
   public  init(host:String) {
    self.host=host;
    }
    
 public internal(set) var account:UDHAccount?=nil;
}

