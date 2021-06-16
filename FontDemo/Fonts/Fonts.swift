//
//  Font.swift
//  FontDemo
//
//  Created by Andrew Stoddart on 15/06/2021.
//

import UIKit

// TODO Unit test to see that all fonts are loaded?
// TODO get rid of optional font?
// TODO Split into 2 files?

enum DefaultFonts {
    case headline1
    case headline2
    case headline3
    case headline4
    case subtitle
    case body
    case button1
    case button2
    case caption
    
    var font: UIFont {
        switch self {
        case .headline1:
            return CustomFonts.OpenSans.bold.of(textStyle: .title1, defaultSize: 34)
        case .headline2:
            return CustomFonts.OpenSans.bold.of(textStyle: .title2, defaultSize: 24)
        case .headline3:
            return CustomFonts.OpenSans.bold.of(textStyle: .title3, defaultSize: 20)
        case .headline4:
            return CustomFonts.OpenSans.bold.of(textStyle: .title3, defaultSize: 18)
        case .subtitle:
            return CustomFonts.OpenSans.semiBold.of(textStyle: .headline, defaultSize: 16)
        case .body:
            return CustomFonts.OpenSans.regular.of(textStyle: .body, defaultSize: 16)
        case .button1:
            return CustomFonts.HelveticaNeue.bold.of(textStyle: .body, defaultSize: 16)
        case .button2:
            return CustomFonts.OpenSans.semiBold.of(textStyle: .body, defaultSize: 16)
        case .caption:
            return CustomFonts.OpenSans.regular.of(textStyle: .footnote, defaultSize: 13)
        }
    }
}

enum CustomFonts {
    
    enum OpenSans: String, Font {
        case regular = "OpenSans-Regular"
        case semiBold = "OpenSans-SemiBold"
        case ultraBold = "OpenSans-UltraBold"
        case light = "OpenSans-Light"
        case bold = "OpenSans-Bold"
    }
    
    enum HelveticaNeue: String, Font {
        case bold = "HelveticaNeue-Bold"
    }
}



protocol Font {
    func of(size: CGFloat) -> UIFont
    func of(textStyle: UIFont.TextStyle, defaultSize: CGFloat, maxSize: CGFloat?) -> UIFont
}

extension Font where Self: RawRepresentable, Self.RawValue == String {
    func of(size: CGFloat) -> UIFont {
        if let font = UIFont(name: rawValue, size: size) {
            return font
        } else {
            return UIFont.preferredFont(forTextStyle: .body)
        }   
    }
    
    func of(textStyle: UIFont.TextStyle, defaultSize: CGFloat, maxSize: CGFloat? = nil) -> UIFont {
        
        //        let font = of(size: defaultSize)
        //        return UIFontMetrics.default.scaledFont(for: font)
        
        
        let font = of(size: defaultSize)
        let fontMetrics = UIFontMetrics(forTextStyle: textStyle)
        
        if let maxSize = maxSize {
            return fontMetrics.scaledFont(for: font, maximumPointSize: maxSize)
        } else {
            return fontMetrics.scaledFont(for: font)
        }
    }
}

