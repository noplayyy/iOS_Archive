//
//  ViewController.swift
//  FrameAndBounds
//
//  Created by 노연주 on 2021/12/01.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {

    private let view1 = UIView().then {
        $0.backgroundColor = .yellow
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    private func configureUI(){
        view.addSubview(view1)
        
        view1.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(100)
        }
        
        print(view1.frame)
        print(view1.bounds)
    }
}

