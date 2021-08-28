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
    
    func requestGalleryPermission(){
        PHPhotoLibrary.requestAuthorization( { status in
            switch status{
            case .authorized:
                print("Gallery: 권한 허용")
            case .denied:
                print("Gallery: 권한 거부")
            case .restricted, .notDetermined:
                print("Gallery: 선택하지 않음")
            default:
                break
            }
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        requestCameraPermission()
        requestGalleryPermission()
    }


}

