//
//  UDHAccountManagerExt.swift
//  UDHAccount
//
//  Created by hcy on 2019/6/26.
//  Copyright © 2019 yd. All rights reserved.
//

import Foundation


extension UDHAccountManager:UDHAccountLoginProtocol{
    public func getVercode(mobile: String, comp: @escaping UDHAccountCompletion) {
            self .makeLoginWithDelay(time: 2, comp: comp);

    }
    
    public func login(account: String, pwd: String, comp: @escaping UDHAccountCompletion) {
        self .makeLoginWithDelay(time: 2, comp: comp);

    }
    
    public func login(account: String, code: String, comp: @escaping UDHAccountCompletion) {
        self .makeLoginWithDelay(time: 2, comp: comp);
    }
    
    public func login(account: String, ssoCode: String, comp: @escaping UDHAccountCompletion) {
        self .makeLoginWithDelay(time: 2, comp: comp);
        self.noticeLogin();
    }
    
    public func logout(comp: @escaping UDHAccountCompletion) {
        self.account=nil;
        comp(nil,nil);
        self.noticeLogout();
    }
    func noticeLogin() -> Void {
        NotificationCenter.init().post(name: NSNotification.Name(rawValue: UDHAccountNotification.logined), object: self);
    }
    
    func noticeLogout()->Void{
        NotificationCenter.init().post(name: NSNotification.Name(rawValue: UDHAccountNotification.logout), object: self);
    }
    
    
    
    
    
    
//    public func getVercode(mobile: String, comp:@escaping (NSError?) -> Void) {
//
//    }
//
//    public func logout(comp:@escaping (NSError?) -> Void) {
//
//    }
//
  
//    public func login(account: String,  pwd: String, comp: @escaping (NSError?) -> Void) {
//    }
//
//    public func login(account: String, code: String, comp: @escaping (NSError?) -> Void) {
//        self .makeLoginWithDelay(time: 2, comp: comp);
//    }
//
//    public func login(account: String, ssoCode: String, comp: @escaping (NSError?) -> Void) {
//        self .makeLoginWithDelay(time: 2, comp: comp);
//
//    }
    func makeLoginWithDelay(time:TimeInterval,comp:@escaping UDHAccountCompletion){
        DispatchQueue.global().async {
            sleep(UInt32(time));
            self.makeAccount();
            comp(nil,nil);
        }
    }
    
    func makeAccount(){
        let account = UDHAccount.init();
        account.accountId="123123";
        account.nick="nick";
        account.name="name";
        account.age=12;
        account.token="ajdajlkdjalkd";
        account.avaterPath="";
        self.account=account;

    }
    
    
}
