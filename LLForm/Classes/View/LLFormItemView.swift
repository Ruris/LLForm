//
//  LLFormViewCell.swift
//  LLForm
//
//  Created by ZHK on 2020/11/17.
//  
//

import UIKit

public protocol LLFormItemView: UITableViewCell {
    
    var item: LLFormItem? { get set}
}
