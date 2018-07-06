//
//  Target_RouterApi.swift
//  Pods
//
//  Created by 小星星 on 2018/7/6.
//

/* 这里是组件：RightMuneTable 想要给外部暴露的API，其他组件 或者 主工程想要从 当前组件拿到的东西，都是从这里出去*/


import UIKit

class Target_RouterApi: NSObject {


    
    /// - Returns: 这里要注意的是，返回值的类型必须为 对象类型，路由是由 OC该写而来，这个规定了要用对象类型，OC类型安全
    @objc func Action_getRouterApiData() ->String {
        return RoutetForOtherClass.retureString()
    }
    @objc func Action_getRouterApiInt(_ params: [String: Any]) ->NSNumber {   // 基本数据类型都必须转成：  NSNumber 传递出去，外面在处理
        return RoutetForOtherClass.retureNumber(params) as NSNumber
    }
    @objc func Action_retureStingArray() -> [String] {
        return RoutetForOtherClass.retureStringArray()
    }
    @objc func Action_retureIntArray(_ param: [String: Any]) -> [Int] {  // 带参数
        return RoutetForOtherClass.retureIntArray(param)
    }
    
    
}
