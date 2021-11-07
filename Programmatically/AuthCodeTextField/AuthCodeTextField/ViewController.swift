//
//  ViewController.swift
//  AuthCodeTextField
//
//  Created by 노연주 on 2021/10/30.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    //MARK: - Properties
    private let authCodeView = AuthCodeView()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        authCodeView.tf1.becomeFirstResponder()
    }
    
    @objc
    func textDidChange(textfield: UITextField) {
        let text = textfield.text
        
        if text?.utf16.count == 1{
            switch textfield {
                
            case authCodeView.tf1:
                authCodeView.tf2.becomeFirstResponder()
                break
                
            case authCodeView.tf2:
                authCodeView.tf3.becomeFirstResponder()
                break
                
            case authCodeView.tf3:
                authCodeView.tf4.becomeFirstResponder()
                break
                
            default:
                break
                
            }
        } else {
            
        }
    }
    
    //MARK: - Selectors
    
    //MARK: - Helpers
    private func configureUI(){
        view.backgroundColor = .white
        addView()
        cornerRadius()
        location()
        
        authCodeView.tf1.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
        authCodeView.tf2.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
        authCodeView.tf3.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
        authCodeView.tf4.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
    }
    
    // MARK: - Add View
    
    private func addView(){
        view.addSubview(authCodeView)
    }
    
    // MARK: - Corner Radius
    
    private func cornerRadius(){
        
    }
    
    // MARK: - Location
    
    private func location(){
        authCodeView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(self.view.frame.height/2.9)
            make.width.equalToSuperview().dividedBy(1.79)
            make.height.equalToSuperview().dividedBy(10.98)
        }
    }
    
}

//MARK: - Preview
#if DEBUG
import SwiftUI
struct ViewControllerRepresentable: UIViewControllerRepresentable {
    
func updateUIViewController(_ uiView: UIViewController,context: Context) {
        // leave this empty
}
    @available(iOS 13.0.0, *)
    func makeUIViewController(context: Context) -> UIViewController{
        ViewController()
    }
}
@available(iOS 13.0, *)
struct ViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            ViewControllerRepresentable()
                .ignoresSafeArea()
                .previewDisplayName(/*@START_MENU_TOKEN@*/"Preview"/*@END_MENU_TOKEN@*/)
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
        
    }
} #endif
