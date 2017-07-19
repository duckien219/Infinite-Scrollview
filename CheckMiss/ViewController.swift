//
//  ViewController.swift
//  CheckMiss
//
//  Created by Kien Nguyen Duc on 7/11/17.
//  Copyright © 2017 Kien Nguyen. All rights reserved.
//

import UIKit
import  AVFoundation
class ViewController: UIViewController,UIScrollViewDelegate,AVAudioPlayerDelegate {
    var soundEffect = AVAudioPlayer()
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        addImage()
        scrollView.delegate = self
        
        soundEffect = try! AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: Bundle.main.path(forResource: "scroll", ofType: "wav")!) as URL)
        soundEffect.delegate = self
        
    }
    
    // Khi thực hiện thao tác kéo trên màn hình thì phát ra hiệu ứng âm thanh
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        soundEffect.play()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let X = scrollView.contentOffset.x
        print(X)
        // Khi Scroll đến hết cái ảnh thứ 6 (tức ảnh có tên "1") thì gọi lại tọa độ của ảnh thứ 1
        if X >=  scrollView.frame.size.width * 5 {
            self.scrollView.contentOffset = CGPoint(x: 0 , y: 0)
        }
        
        
        
        //        let pageWidth = scrollView.frame.size.width
        //
        //        let page = Int(((scrollView.contentOffset.x * 2.0 + pageWidth) / (pageWidth * 2.0)))
        //
        //        print(page)
        //        if page == 3 {
        //            self.scrollView.contentOffset = CGPoint(x: 0 , y: 0)
        //        }
        
        
    }
    
    
    
    func addImage() {
        //Khởi tạo mảng chứa các ảnh
        var pictures:[UIImage] = [ ]
        //Thêm ảnh vào mảng
        pictures.append(UIImage(named: "1.jpg")!)
        pictures.append(UIImage(named: "2.jpg")!)
        pictures.append(UIImage(named: "3.jpg")!)
        pictures.append(UIImage(named: "4.jpg")!)
        pictures.append(UIImage(named: "5.jpg")!)
        pictures.append(UIImage(named: "1.jpg")!)
        self.scrollView.contentSize = CGSize(width: scrollView.frame.size.width * CGFloat(pictures.count), height: scrollView.frame.size.height)
        for i in 0..<pictures.count {
            var frame = CGRect()
            //Đặt điểm gốc của bức ảnh
            frame.origin.x = scrollView.frame.size.width * CGFloat(i)
            frame.origin.y = 0
            frame.size = scrollView.frame.size
            // Ẩn thanh scrollbar
            scrollView.showsHorizontalScrollIndicator = false
            let subView = UIImageView(frame: frame)
            subView.image = pictures[i]
            subView.contentMode = .scaleAspectFit
            self.scrollView.addSubview(subView)
        }
    }
    //    func onTimer() {
    //
    //        if (scrollView.contentOffset.x < 800) {
    //            //scroll to desire position
    //            scrollView.contentOffset = CGPoint(x:scrollView.contentOffset.x + 1, y:0);
    //        }
    //        
    //    }
}






