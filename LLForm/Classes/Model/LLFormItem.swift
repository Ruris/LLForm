//
//  LLFormItem.swift
//  LLForm
//
//  Created by ZHK on 2020/11/17.
//  
//

import UIKit
   
public struct LLFormItem: Codable {
    
    /// 标题
    public var title: String?
    
    /// placeholder
    public var placeholder: String?
    
    /// 单位
    public var unit: String?
    
    /// 键盘类型
    public var keyboardType: UIKeyboardType = .default
    
    /// key
    public var key: String?
    
    /// 行高
    public var rowHeight: CGFloat =  44.0
}

extension UIKeyboardType: Codable {}
