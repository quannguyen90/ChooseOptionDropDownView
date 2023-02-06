//
//  Extensions.swift
//  ChooseOptionDropDownView
//
//  Created by Quan Nguyen on 06/02/2023.
//

import Foundation
import UIKit

extension UIApplication {
    static var bottomMargin: CGFloat {
        get {
            if #available(iOS 11.0, *) {
                return UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
            } else {
                // Fallback on earlier versions
                return 0
            }
        }
    }
}


extension UIView {
    @objc func nibName() -> String {
        return type(of: self).description().components(separatedBy: ".").last!
    }
    
    @objc func setupNib() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "ChooseOptionBottomDropdownView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        let bindings = ["view": view]
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|", options: [], metrics: nil, views: bindings))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|", options: [], metrics: nil, views: bindings))
    }
    
}

extension String {
    
    func removeSignVietnamese() -> String {
        var standard = ""
        for c in self {
            let str = String(c)
            if "áàạảãâấầậẩẫăắằặẳẵ".contains(str) {
                standard.append("a")
            } else if "ÁÀẠẢÃÂẤẦẬẨẪĂẮẰẶẲẴ".contains(str) {
                standard.append("A")
            } else if "éèẹẻẽêếềệểễ".contains(str) {
                standard.append("e")
            } else if "ÉÈẸẺẼÊẾỀỆỂỄ".contains(str) {
                standard.append("E")
            } else if "óòọỏõôốồộổỗơớờợởỡ".contains(str) {
                standard.append("o")
            } else if "ÓÒỌỎÕÔỐỒỘỔỖƠỚỜỢỞỠ".contains(str) {
                standard.append("O")
            } else if "úùụủũưứừựửữ".contains(str) {
                standard.append("u")
            } else if "ÚÙỤỦŨƯỨỪỰỬỮ".contains(str) {
                standard.append("U")
            } else if "íìịỉĩ".contains(str) {
                standard.append("i")
            } else if "ÍÌỊỈĨ".contains(str) {
                standard.append("I")
            } else if "đ".contains(str) {
                standard.append("d")
            } else if "Đ".contains(str) {
                standard.append("D")
            } else if "ýỳỵỷỹ".contains(str) {
                standard.append("y")
            } else if "ÝỲỴỶỸ".contains(str) {
                standard.append("Y")
            } else {
                standard.append(str)
            }
            
        }
        
        if let data = standard.data(using: String.Encoding.ascii, allowLossyConversion: true) {
            if let textResult = String(data: data, encoding: String.Encoding.utf8) {
                return textResult
            } else {
                return standard
            }
        } else {
            return standard
        }
    }
}
