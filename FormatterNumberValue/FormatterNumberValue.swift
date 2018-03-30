//
//  FormatterNumberValue.swift
//  FormatterNumberValue
//
//  Created by sungrow on 2018/3/29.
//  Copyright © 2018年 sungrow. All rights reserved.
//

import Foundation

extension String {
    /// 格式化字符串: 保留三位小数, 按四舍五入规则
    ///
    /// - Returns: 处理后的字符串
    func formatterNumberValue() -> String {
        // 1. 校验是否是数字类型
        guard Double(self) != nil else {
            return self
        }
        // 2. 转换为大数字
        let decimalNum = NSDecimalNumber(string: self)
        // 3. 校验大数字是否合法
        if decimalNum == NSDecimalNumber.notANumber {
            return self
        }
        // 4. 设置格式化规则
        let numFmt = NumberFormatter()
        numFmt.decimalSeparator = "."
        numFmt.groupingSeparator = ","
        numFmt.maximumFractionDigits = 3
        numFmt.minimumFractionDigits = 0
        numFmt.numberStyle = .decimal
        let result = numFmt.string(from: decimalNum) ?? ""
        let isValid = NSDecimalNumber(string: result).compare(NSDecimalNumber(string: "0.001")) == .orderedAscending && (decimalNum != NSDecimalNumber.zero)
        return (isValid) ? self : result
    }
}
