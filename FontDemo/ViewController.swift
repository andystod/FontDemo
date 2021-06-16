//
//  ViewController.swift
//  FontDemo
//
//  Created by Andrew Stoddart on 15/06/2021.
//

import UIKit

class ViewController: UIViewController {

    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        view.addSubview(scrollView)
        return scrollView
    }()
    
    lazy var contentView: UIView = {
        let contentView = UIView(frame: .zero)
        scrollView.addSubview(contentView)
        return contentView
    }()
    
    lazy var headline1Label: UILabel = {
        let label = makeLabel("Headline 1 Title", addTo: contentView)
        label.font = DefaultFonts.headline1.font
        return label
    }()
    
    lazy var headline2Label: UILabel = {
        let label = makeLabel("Headline 2 Title", addTo: contentView)
        label.font = DefaultFonts.headline2.font
        return label
    }()
    
    lazy var headline3Label: UILabel = {
        let label = makeLabel("Headline 3 Title", addTo: contentView)
        label.font = DefaultFonts.headline3.font
        return label
    }()
    
    lazy var headline4Label: UILabel = {
        let label = makeLabel("Headline 4 Title", addTo: contentView)
        label.font = DefaultFonts.headline4.font
        return label
    }()
    
    lazy var subtitleLabel: UILabel = {
        let label = makeLabel("Subtitle", addTo: contentView)
        label.font = DefaultFonts.subtitle.font
        return label
    }()
    
    lazy var bodyLabel: UILabel = {
        let label = makeLabel("Body", addTo: contentView)
        label.font = DefaultFonts.body.font
        return label
    }()
    
    lazy var button1Label: UILabel = {
        let label = makeLabel("Button 1", addTo: contentView)
        label.font = DefaultFonts.button1.font
        return label
    }()
    
    lazy var button2Label: UILabel = {
        let label = makeLabel("Button 2", addTo: contentView)
        label.font = DefaultFonts.button2.font
        return label
    }()
    
    lazy var captionLabel: UILabel = {
        let label = makeLabel("Caption", addTo: contentView)
        label.font = DefaultFonts.caption.font
        return label
    }()
    
    
    
    func makeLabel(_ text: String, addTo view: UIView) -> UILabel {
        let label = UILabel(frame: .zero)
        label.text = text
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
//        label.lineBreakMode = .byWordWrapping
        view.addSubview(label)
        return label
    }
    
    @IBOutlet weak var fontTestLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConstraints()
        
//        let families = UIFont.familyNames
//        families.sorted().forEach {
//          print("\($0)")
//          let names = UIFont.fontNames(forFamilyName: $0)
//          print(names)
//        }
//
//        fontTestLabel.font = Fonts.OpenSans.regular.of(size: 12)
    }
    
    
}

