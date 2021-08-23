//
//  SignUpViewController.swift
//  AssignmentFirstApp
//
//  Created by 노연주 on 2021/08/23.
//

import UIKit
import SnapKit
import Then

class SignUpViewController: UIViewController {
    //MARK: - Properties
    
    lazy var imageView = UIImageView().then {
        $0.image = UIImage(named: "bgimage")
        $0.contentMode = .scaleAspectFill
    }
    
    lazy var titleLabel = UILabel().then {
        $0.text = "ASSIGNMENT"
        $0.textColor = .white
        $0.font = UIFont(name: "AppleSDGothicNeo-Light", size: self.view.frame.height/27.11)
    }
    
    lazy var containerView = UIView().then {
        $0.backgroundColor = .white
    }
    
    lazy var signUpLabel = UILabel().then {
        $0.text = "회원가입"
        $0.textColor = .rgb(red: 118, green: 118, blue: 118)
        $0.font = UIFont(name: "AppleSDGothicNeo-Light", size: self.view.frame.height/32.48)
    }
    
    lazy var idLabel = UILabel().then {
        $0.text = "아이디"
        $0.textColor = .rgb(red: 150, green: 150, blue: 150)
        $0.font = UIFont(name: "AppleSDGothicNeo-Light", size: self.view.frame.height/62.46)
    }
    
    lazy var idtextField = UITextField().then {
        $0.backgroundColor = .rgb(red: 248, green: 248, blue: 248)
        $0.placeholder = "  아이디를 입력하세요"
        $0.font = UIFont(name: "AppleSDGothicNeo-Light", size: self.view.frame.height/54.13)
    }
    
    lazy var pwLabel = UILabel().then {
        $0.text = "비밀번호"
        $0.textColor = .rgb(red: 150, green: 150, blue: 150)
        $0.font = UIFont(name: "AppleSDGothicNeo-Light", size: self.view.frame.height/62.46)
    }
    
    lazy var pwtextField = UITextField().then {
        $0.backgroundColor = .rgb(red: 248, green: 248, blue: 248)
        $0.placeholder = "  비밀번호를 입력하세요"
        $0.font = UIFont(name: "AppleSDGothicNeo-Light", size: self.view.frame.height/54.13)
        $0.isSecureTextEntry = true
    }
    
    lazy var rePwLabel = UILabel().then {
        $0.text = "비밀번호\n확인"
        $0.textColor = .rgb(red: 150, green: 150, blue: 150)
        $0.font = UIFont(name: "AppleSDGothicNeo-Light", size: self.view.frame.height/67.67)
        $0.numberOfLines = 2
        $0.textAlignment = .center
    }
    
    lazy var rePwtextField = UITextField().then {
        $0.backgroundColor = .rgb(red: 248, green: 248, blue: 248)
        $0.placeholder = "  비밀번호를 다시 입력하세요"
        $0.font = UIFont(name: "AppleSDGothicNeo-Light", size: self.view.frame.height/54.13)
        $0.isSecureTextEntry = true
    }
    
    lazy var phoneNumLabel = UILabel().then {
        $0.text = "전화번호"
        $0.textColor = .rgb(red: 150, green: 150, blue: 150)
        $0.font = UIFont(name: "AppleSDGothicNeo-Light", size: self.view.frame.height/62.46)
    }
    
    lazy var phoneNumField = UITextField().then {
        $0.backgroundColor = .rgb(red: 248, green: 248, blue: 248)
        $0.placeholder = "  전화번호를 입력하세요"
        $0.font = UIFont(name: "AppleSDGothicNeo-Light", size: self.view.frame.height/54.13)
        $0.isSecureTextEntry = true
    }
    
    lazy var signUpBtn = UIButton().then {
        $0.backgroundColor = .rgb(red: 76, green: 96, blue: 144)
        $0.setTitle("회원가입", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Bold", size: self.view.frame.height/62.46)
    }
    
    lazy var alreadyUser = UIButton().then{
        $0.setTitle("이미 회원이신가요?", for: .normal)
        $0.setTitleColor(.rgb(red: 255, green: 255, blue: 255), for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: self.view.frame.height/62.46)
    }
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
        
    //MARK: - Selectors
    
    //MARK: - Helpers
    
    func configureUI(){
        view.backgroundColor = .white
        addView()
        cornerRadius()
        location()
    }
    
    func addView(){
        view.addSubview(imageView)
        view.addSubview(containerView)
        view.addSubview(titleLabel)
        view.addSubview(signUpLabel)
        view.addSubview(idLabel)
        view.addSubview(idtextField)
        view.addSubview(pwLabel)
        view.addSubview(pwtextField)
        view.addSubview(rePwLabel)
        view.addSubview(rePwtextField)
        view.addSubview(phoneNumLabel)
        view.addSubview(phoneNumField)
        view.addSubview(signUpBtn)
        view.addSubview(alreadyUser)
    }
    
    func cornerRadius(){
        containerView.layer.cornerRadius = 20
        idtextField.layer.cornerRadius = 5
        pwtextField.layer.cornerRadius = 5
        rePwtextField.layer.cornerRadius = 5
        phoneNumField.layer.cornerRadius = 5
        signUpBtn.layer.cornerRadius = 10
    }
    
    func location(){
        imageView.snp.makeConstraints { make in
            make.width.height.equalToSuperview()
        }
        
        containerView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().dividedBy(1.1)
            make.height.equalToSuperview().dividedBy(1.96)
            make.top.equalToSuperview().offset(self.view.frame.height/5.2)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(self.view.frame.height/14.25)
            make.centerX.equalToSuperview()
        }
        
        signUpLabel.snp.makeConstraints { make in
            make.top.equalTo(containerView).offset(self.view.frame.height/16.57)
            make.centerX.equalToSuperview()
        }
        
        idLabel.snp.makeConstraints { make in
            make.centerY.equalTo(idtextField)
            make.left.equalTo(containerView).offset(self.view.frame.width/18.75)
        }
        
        idtextField.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.5)
            make.height.equalToSuperview().dividedBy(22.56)
            make.top.equalToSuperview().offset(self.view.frame.height/2.91)
            make.right.equalTo(containerView).offset(-self.view.frame.width/18.75)
        }
        
        pwLabel.snp.makeConstraints { make in
            make.centerY.equalTo(pwtextField)
            make.left.equalTo(containerView).offset(self.view.frame.width/18.75)
        }
        
        pwtextField.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.5)
            make.height.equalToSuperview().dividedBy(22.56)
            make.top.equalToSuperview().offset(self.view.frame.height/2.46)
            make.right.equalTo(containerView).offset(-self.view.frame.width/18.75)
        }
        
        rePwLabel.snp.makeConstraints { make in
            make.left.equalTo(containerView).offset(self.view.frame.width/18.75)
            make.centerY.equalTo(rePwtextField)
        }
        
        rePwtextField.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.5)
            make.height.equalToSuperview().dividedBy(22.56)
            make.top.equalToSuperview().offset(self.view.frame.height/2.13)
            make.right.equalTo(containerView).offset(-self.view.frame.width/18.75)
        }
        
        phoneNumLabel.snp.makeConstraints { make in
            make.left.equalTo(containerView).offset(self.view.frame.width/18.75)
            make.centerY.equalTo(phoneNumField)
        }
        
        phoneNumField.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.5)
            make.height.equalToSuperview().dividedBy(22.56)
            make.top.equalToSuperview().offset(self.view.frame.height/1.88)
            make.right.equalTo(containerView).offset(-self.view.frame.width/18.75)
        }
        
        signUpBtn.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.38)
            make.height.equalToSuperview().dividedBy(22.56)
            make.centerX.equalToSuperview()
            make.top.equalTo(containerView).offset(self.view.frame.height/2.34)
        }
        
        alreadyUser.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.top.equalTo(containerView).offset(self.view.frame.height/1.42)
        }
    }
}

//MARK: - Preview

#if DEBUG
import SwiftUI
struct SignUpViewControllerRepresentable: UIViewControllerRepresentable {
    
func updateUIViewController(_ uiView: UIViewController,context: Context) {
        // leave this empty
}
    @available(iOS 13.0.0, *)
    func makeUIViewController(context: Context) -> UIViewController{
        SignUpViewController()
    }
}
@available(iOS 13.0, *)
struct SignUpViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            SignUpViewControllerRepresentable()
                .ignoresSafeArea()
                .previewDisplayName(/*@START_MENU_TOKEN@*/"Preview"/*@END_MENU_TOKEN@*/)
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
        
    }
} #endif
