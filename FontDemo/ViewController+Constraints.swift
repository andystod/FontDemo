//
//  ViewController+Layout.swift
//  FontDemo
//
//  Created by Andrew Stoddart on 15/06/2021.
//

import UIKit
import SnapKit

extension ViewController {
    
    func setupConstraints() {
        
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(view.snp.width)
        }
        
        headline1Label.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leadingMargin)
            make.trailing.equalTo(contentView.snp.trailingMargin)
            make.top.equalTo(contentView.snp.topMargin)
        }
        
        headline2Label.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leadingMargin)
            make.trailing.equalTo(contentView.snp.trailingMargin)
            make.top.equalTo(headline1Label.snp.bottom).offset(20)
        }
        
        headline3Label.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leadingMargin)
            make.trailing.equalTo(contentView.snp.trailingMargin)
            make.top.equalTo(headline2Label.snp.bottom).offset(20)
        }
        
        headline4Label.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leadingMargin)
            make.trailing.equalTo(contentView.snp.trailingMargin)
            make.top.equalTo(headline3Label.snp.bottom).offset(20)
        }
        
        subtitleLabel.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leadingMargin)
            make.trailing.equalTo(contentView.snp.trailingMargin)
            make.top.equalTo(headline4Label.snp.bottom).offset(20)
        }
        
        bodyLabel.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leadingMargin)
            make.trailing.equalTo(contentView.snp.trailingMargin)
            make.top.equalTo(subtitleLabel.snp.bottom).offset(20)
        }
        
        button1Label.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leadingMargin)
            make.trailing.equalTo(contentView.snp.trailingMargin)
            make.top.equalTo(bodyLabel.snp.bottom).offset(20)
        }
        
        button2Label.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leadingMargin)
            make.trailing.equalTo(contentView.snp.trailingMargin)
            make.top.equalTo(button1Label.snp.bottom).offset(20)
        }
        
        captionLabel.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leadingMargin)
            make.trailing.equalTo(contentView.snp.trailingMargin)
            make.top.equalTo(button2Label.snp.bottom).offset(20)
            make.bottom.equalTo(contentView.snp.bottom)
        }
        
        
    }
    
    
    
}
