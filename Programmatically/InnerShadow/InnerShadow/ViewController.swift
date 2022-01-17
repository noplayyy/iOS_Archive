//
//  ViewController.swift
//  InnerShadow
//
//  Created by 노연주 on 2022/01/17.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
 
    // MARK: - rounded inner shadow 불가..
    
    let test = UIView().then {
        $0.backgroundColor = .white
        $0.layer.backgroundColor = UIColor.rgba(red: 1, green: 1, blue: 0, alpha: 0).cgColor
        $0.layer.cornerRadius = 20
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(test)

        test.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalToSuperview().dividedBy(1.09)
            make.height.equalToSuperview().dividedBy(3.41)
        }
    }


}

//MARK: - Shadow extension
extension CALayer {
func applySketchShadow(color: UIColor = .lightGray,alpha: Float = 0.5,x:CGFloat,y:CGFloat,blur: CGFloat,spread: CGFloat = 0){
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur/UIScreen.main.scale
        masksToBounds = false
    
        if spread == 0 {
            shadowPath = nil
        }else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}

// MARK: - reuse color extension
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
  
