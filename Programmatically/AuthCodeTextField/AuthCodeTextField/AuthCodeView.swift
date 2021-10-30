//
//  AuthCodeView.swift
//  AuthCodeTextField
//
//  Created by 노연주 on 2021/10/30.
//

import UIKit
import SnapKit
import Then

class AuthCodeView: UIView {

    private let putLabel = UILabel().then {
        $0.text = "문자로 전송된 코드 4자리를 입력해주세요!"
        $0.dynamicFont(fontSize: 12, currentFontName: "AppleSDGothicNeo-UltraLight")
        $0.textColor = .rgb(red: 106, green: 106, blue: 106)
    }

}
