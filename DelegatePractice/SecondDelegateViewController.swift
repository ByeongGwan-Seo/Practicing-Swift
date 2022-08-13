//
//  SecondDelegateViewController.swift
//  DelegatePractice
//
//  Created by seobyeonggwan on 2022/08/13.
//

import UIKit

//changeUI 메소드를 실행하는 프로토콜 -> 위임받은 일을 실행함
protocol ChangeUIDelegate: AnyObject {
    func changeUI()
}

class SecondDelegateViewController: UIViewController {

    //delegate 변수의 자료형 = ChangeUIDelegate "프로토콜"
    //-> 1. 이러면 이제 delegate 변수는 일을 위임받을 준비가 되었음
    
    weak var delegate: ChangeUIDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //click버튼을 누르면
    @IBAction func clickButtonTapped(_ sender: UIButton) {
        //delegate 변수로 위임을 받은 객체가 changeUI를 실행
        //이 second view에서는 일을 시키기만 했고 뭘 하는지는 모름
        //일은 ChangeUIDelegate프로토콜을 채용한 first view가 한다.
        
        //2. Click 버튼을 눌러서 일을 위임받을 준비가 된 ChangeUIDelegate? 타입의 delegate 변수에게 changeUI라는 일을 시킨다.
        self.delegate?.changeUI()
        self.dismiss(animated: true, completion: nil)
    }
}
