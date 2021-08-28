//
//  ViewController.swift
//  CameraMicrophonePermission
//
//  Created by 노연주 on 2021/08/28.
//

import UIKit
import AVKit
import Photos

class ViewController: UIViewController {

    func requestCameraPermission(){
        AVCaptureDevice.requestAccess(for: .video, completionHandler: { (granted: Bool) in
            if granted {
                print("Camera: 권한 허용")
            } else {
                print("Camera: 권한 거부")
            }
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        requestCameraPermission()
    }


}

