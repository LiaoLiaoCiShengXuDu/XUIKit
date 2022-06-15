//
//  XNibAble.swift
//  Pods-XUIKit_Example
//
//  Created by zyx on 2022/6/15.
//

import Foundation

protocol XNibable {
    
}


extension XNibable {
    /// 从xib加载view
    /// - Parameters:
    ///   - nibName: nib name
    ///   - index: nib的下标 默认 0
    /// - Returns: 当前view
    static func x_loadFromNib(nibName: String? = nil, index: Int = 0) -> Self {
        let name = nibName ?? "\(Self.self)"
        return Bundle.main.loadNibNamed(name, owner: nil, options: nil)![index] as! Self
    }
}
