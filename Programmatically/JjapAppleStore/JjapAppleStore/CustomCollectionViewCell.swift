//
//  CustomCollectionViewCell.swift
//  JjapAppleStore
//
//  Created by 노연주 on 2021/10/21.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    static let identifier = "\(CustomCollectionViewCell.self)"
    
    var imgView = UIImageView().then {
        $0.image = UIImage(named: "img5")
    }
    
    var nameLabel = UILabel().then {
        $0.text = "몽키의 iPhone"
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        $0.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 12)
    }
    
    var phoneName = UILabel().then {
        $0.text = "iPhone 13 mini"
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        $0.font = UIFont(name: "AppleSDGothicNeo-Light", size: 9)
    }
    
    var infoButton = UIButton().then {
        $0.setTitle("기기 세부 정보", for: .normal)
        $0.setTitleColor(.systemBlue, for: .normal)
        $0.backgroundColor = .gray
    }
    
    var shopButton = UIButton().then {
        $0.setTitle("액세서리 등을 쇼핑하기", for: .normal)
        $0.setTitleColor(.systemBlue, for: .normal)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureUI()
    }
    
    func configureUI(){
        contentView.addSubview(imgView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(phoneName)
        contentView.addSubview(infoButton)
        contentView.addSubview(shopButton)
        
        imgView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
            make.width.equalToSuperview().dividedBy(2.34)
            make.height.equalToSuperview().dividedBy(6.94)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(imgView.snp.bottom).offset(14)
        }
        
        phoneName.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(nameLabel.snp.bottom).offset(6)
        }
        
        infoButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(phoneName.snp.bottom).offset(24)
            make.width.equalToSuperview().dividedBy(4.81)
            make.height.equalToSuperview().dividedBy(45.11)
        }
    }
}
