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
        view.addSubview(loginLabel)
    }
    
    func cornerRadius(){
        containerView.layer.cornerRadius = 20
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
