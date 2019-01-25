//
//  ViewController.swift
//  Login
//
//  Created by ph7164 on 2019. 1. 24..
//  Copyright © 2019년 ph7164. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var uiIdInput: UITextField!
    @IBOutlet var uiPasswordInput: UITextField!
    
    @IBOutlet var uiResult: UILabel!
    
    let id = "test1"
    let password = "123456"

    @IBAction func loginClicked(_ sender: Any) {
        let userId = uiIdInput.text
        let userPassword = uiPasswordInput.text
        
        let alert = UIAlertController(title:"알림", message:"아이디 : \(userId!), 비밀번호 : \(userPassword!)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title:"확인", style: .default){
            (alert:UIAlertAction!)->Void in
            NSLog("알림 대화상자의 확인 버튼이 눌렸습니다.")
            
            if(userId == self.id) && (userPassword == self.password){
                self.uiResult.text="로그인 성공"
            } else{
                self.uiResult.text="로그인 실패"
            }
        }
        alert.addAction(okAction)
        present(alert,animated: true,completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("뷰 컨트롤러가 로딩되었습니다.")
        // Do any additional setup after loading the view, typically from a nib.
    }


}

