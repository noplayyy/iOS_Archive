//
//  ViewController.swift
//  SwiftPackageManager
//
//  Created by 노연주 on 2022/06/30.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {


    lazy var text = UILabel().then {
        $0.text = "TEXT"
        $0.textColor = .red
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
        
    func configureUI(){
        view.backgroundColor = .white
            
        view.addSubview(text)
            
        text.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }


}

