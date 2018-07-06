//
//  RouterTestClass.swift
//  Pods
//
//  Created by 小星星 on 2018/7/6.
//

import UIKit
import TZRouter
// 这里是要通过路由从其他组件拿数据的调用
 open class RouterTestClass: NSObject {
    
   class func shareToplatform(_ url: URL?) -> Any? {
        guard let shareUrl = url else {
            return ""
        }
       return TZRouter.shareInstance.performAction(url: shareUrl , completion: nil)
    }
    open class func getMessageFormOtherModule(_ index: Int) -> Any? {
        if index == 1 {
            let str = "RightMuneTable://RouterApi/getRouterApiData"
            let utf8String = str.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            let url = URL(string: utf8String)!
           let value =  shareToplatform(url)
            return value as! String
        }
        if  index == 2 {
            let str = "RightMuneTable://RouterApi/retureStingArray"
            let utf8String = str.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            let url = URL(string: utf8String)!
            let value =  shareToplatform(url)
            return value as! [String]
        }
        return "瓜嘻嘻的"
    }
  
    
}


class RoutetForOtherClass: NSObject {
    class func retureNumber(_ params: [String: Any]) -> Int{
        return 998
    }
    class func retureString() -> String{
        return "我爱中国男足"
    }
    class func retureStringArray() -> [String]{
        return ["NicooYang","saytoWorld","我爱中国男足"]
    }
    class func retureIntArray(_ params:[String: Any]) -> [Int]{
        print("params = \(params["one"]), \(params["two"])")
        return [1,2,3,4,5,6,7]
    }
}
