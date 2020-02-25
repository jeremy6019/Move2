//
//  ViewController.swift
//  Move2
//
//  Created by 503 on 2020/02/24.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var x:Int = 100
    var stepX = 10
    var flag:Bool = true // 방향결정 변수
    // 이 변수를 대상으로 삼항연산자가 작동
    
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goMove(_ sender: Any) {
        //좌표 이동시키기
        //일정한 시간을 두고 함수 호출하기 '
        Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(move), userInfo: nil, repeats: true)
        
    }
    
    @objc func move(){
        stepX = (flag) ? stepX : -stepX
        //x값 변경
        x = x + stepX
        
        //비행기 좌표이동
        imgView.frame.origin =
            CGPoint(x:x, y:170)
        
        // stepX 는 200에 도달하면 음수로
        // stepX는 100에 도달하면 양수로
        //결론ㅍ200 or 100에 도덜사 부호사 바/귐
        
        flag = (x > 500 || x < 100) ?
            false : true
    }
}

