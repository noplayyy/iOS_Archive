//
//  LoginViewController.swift
//  AssignmentFirstApp
//
//  Created by 노연주 on 2021/08/23.
//

import UIKit
import SnapKit
import Then

class LoginViewController: UIViewController {
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
    
    lazy var loginLabel = UILabel().then {
        $0.text = "로그인"
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
    
    lazy var loginBtn = UIButton().then {
        $0.backgroundColor = .rgb(red: 76, green: 96, blue: 144)
        $0.setTitle("로그인", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Bold", size: self.view.frame.height/62.46)
        
        $0.addTarget(self, action: #selector(onTapLogin), for: .touchUpInside)
    }
    
    lazy var forgotPWBtn = UIButton().then {
        $0.setTitle("비밀번호를 잊으셨나요?", for: .normal)
        $0.setTitleColor(.rgb(red: 51, green: 51, blue: 51), for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Light", size: self.view.frame.height/62.46)
    }
    
    lazy var notUser = UIButton().then{
        $0.setTitle("아직 회원이 아니신가요?", for: .normal)
        $0.setTitleColor(.rgb(red: 255, green: 255, blue: 255), for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: self.view.frame.height/62.46)
        
        $0.addTarget(self, action: #selector(onTapNotUser), for: .touchUpInside)
    }
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
        
    //MARK: - Selectors
    
    @objc
    func onTapNotUser(){
        let controller = SignUpViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc
    func onTapLogin(){
        print("DEBUG : Click bottom login button Button")
    }
    
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
        view.addSubview(loginLabel)
        view.addSubview(idLabel)
        view.addSubview(idtextField)
        view.addSubview(pwLabel)
        view.addSubview(pwtextField)
        view.addSubview(loginBtn)
        view.addSubview(forgotPWBtn)
        view.addSubview(notUser)
    }
    
    func cornerRadius(){
        containerView.layer.cornerRadius = 20
        idtextField.layer.cornerRadius = 5
        pwtextField.layer.cornerRadius = 5
        loginBtn.layer.cornerRadius = 10
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
        
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(containerView).offset(self.view.frame.height/16.57)
            make.centerX.equalToSuperview()
        }
        
        idLabel.snp.makeConstraints { make in
            make.top.equalTo(containerView).offset(self.view.frame.height/6.06)
            make.left.equalTo(containerView).offset(self.view.frame.width/18.75)
        }
        
        idtextField.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.5)
            make.height.equalToSuperview().dividedBy(22.56)
            make.top.equalToSuperview().offset(self.view.frame.height/2.91)
            make.right.equalTo(containerView).offset(-self.view.frame.width/18.75)
        }
        
        pwLabel.snp.makeConstraints { make in
            make.top.equalTo(containerView).offset(self.view.frame.height/4.39)
            make.left.equalTo(containerView).offset(self.view.frame.width/18.75)
        }
        
        pwtextField.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.5)
            make.height.equalToSuperview().dividedBy(22.56)
            make.top.equalToSuperview().offset(self.view.frame.height/2.46)
            make.right.equalTo(containerView).offset(-self.view.frame.width/18.75)
        }
        
        loginBtn.snp.makeConstraints { make in
            make.width.equalToSuperview().dividedBy(1.38)
            make.height.equalToSuperview().dividedBy(22.56)
            make.centerX.equalToSuperview()
            make.top.equalTo(pwtextField).offset(self.view.frame.height/10.28)
        }
        
        forgotPWBtn.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(loginBtn).offset(self.view.frame.height/7.73)
        }
        
        notUser.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.top.equalTo(containerView).offset(self.view.frame.height/1.42)
            make.height.equalToSuperview().dividedBy(50.75)
            make.width.equalToSuperview().dividedBy(2.98)
        }
    }
}

extension UIColor{
    static func rgb(red: CGFloat ,green: CGFloat,blue:CGFloat) -> UIColor{
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    static func rgba(red: CGFloat ,green: CGFloat,blue:CGFloat, alpha:CGFloat) -> UIColor{
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}

//MARK: - Preview

#if DEBUG
import SwiftUI
struct LoginViewControllerRepresentable: UIViewControllerRepresentable {
    
func updateUIViewController(_ uiView: UIViewController,context: Context) {
        // leave this empty
}
    @available(iOS 13.0.0, *)
    func makeUIViewController(context: Context) -> UIViewController{
        LoginViewController()
    }
}
@available(iOS 13.0, *)
struct LoginViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            LoginViewControllerRepresentable()
                .ignoresSafeArea()
                .previewDisplayName(/*@START_MENU_TOKEN@*/"Preview"/*@END_MENU_TOKEN@*/)
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
        
    }
} #endif
