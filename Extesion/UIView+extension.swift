//
//  UIView+extension.swift
//  Pods-XUIKit_Example
//
//  Created by zyx on 2022/6/15.
//

import UIKit

public extension UIView {
    
}


// MARK: - Properties
public extension UIView {
    ///  Border color of view; also inspectable from Storyboard.
    @IBInspectable var x_layerBorderColor: UIColor? {
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
        set {
            guard let color = newValue else {
                layer.borderColor = nil
                return
            }
            // Fix React-Native conflict issue
            guard String(describing: type(of: color)) != "__NSCFType" else { return }
            layer.borderColor = color.cgColor
        }
    }
    
    ///  Border width of view; also inspectable from Storyboard.
    @IBInspectable var x_layerBorderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    ///  Corner radius of view; also inspectable from Storyboard.
    @IBInspectable var x_layerCornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.masksToBounds = true
            layer.cornerRadius = abs(CGFloat(Int(newValue * 100)) / 100)
        }
    }
    
    ///  x origin of view.
        var x_x: CGFloat {
            get {
                return frame.origin.x
            }
            set {
                frame.origin.x = newValue
            }
        }

        ///  y origin of view.
        var x_y: CGFloat {
            get {
                return frame.origin.y
            }
            set {
                frame.origin.y = newValue
            }
        }
    
    /// Width of view.
    var x_width: CGFloat {
        get {
            return frame.size.width
        }
        set {
            frame.size.width = newValue
        }
    }
    
    ///  Height of view.
    var x_height: CGFloat {
        get {
            return frame.size.height
        }
        set {
            frame.size.height = newValue
        }
    }
    
    /// Size of view.
    var x_size: CGSize {
        get {
            return frame.size
        }
        set {
            x_width = newValue.width
            x_height = newValue.height
        }
    }
}

// MARK: - Methods
public extension UIView {
    /// Add array of subviews to view.
    ///
    /// - Parameter subviews: array of subviews to add to self.
    func addSubviews(_ subviews: [UIView]) {
        subviews.forEach { addSubview($0) }
    }
    
}
