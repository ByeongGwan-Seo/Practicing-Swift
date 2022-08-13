//
//  DelegateViewController.swift
//  DelegatePractice
//
//  Created by seobyeonggwan on 2022/08/13.
//

import UIKit

class DelegateViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        /*
         instantiateViewController(withIdentifier:)
         
         "Creates the view controller with the specified identifier and initializes it with the data from the storyboard."
         - from Apple Developer
         "특정 식별자로 뷰 컨트롤러를 생성하고 스토리보드의 데이터를 가지고 초기화한다."
         
         결국 화면전환인데 UI를 어떻게 구성하느냐에 따라 이걸 쓰거나 탭바 컨트롤러를 쓰거나 네비게이션 컨트롤러를 쓰거나 하는 건가?
         */
        
        //버튼을 눌렀을때 SecondDelegateViewController를 찾는다.
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondDelegateViewController") as? SecondDelegateViewController else {return}
        
        //찾으면 수직 모달창을 불러온다.
        vc.modalTransitionStyle = .coverVertical
        
        //Second에서 변수 delegate의 타입이 ChangeUIDelegate?임.
        //상수 vc는 delegate와 연결됨
        //3. 일을 위임받은 delegate가 일하러 왔다.
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
    }
    
}

/*
 첫번째 뷰인 DelegateViewController가 ChangeUIDelegate 프로토콜을 채용했음.
 -> ChangeUIDelegate를 채용했기 때문에 프로토콜의 기능을 수행해야함.
 4. 위임받은 changeUI를 하러왔는데 first view에서는 이렇게 하라고 한다. 그런데 Second에서는 이걸 모른다. 그냥 시키기만 했음.
 */

/*그래서 이게 왜 댕쩌는 거고 왜 쓰는 겁니까?
 어떤 작업을 처리해야 하는데 동일한 작업인데도 객체마다 다른 내용을 처리해야 하는 경우 -> 동일한 작업에 대해서는 함수를 전달하기만 하고 각각의 내용은 전달 받은 객체에서 처리하기만 하면 된다. -> 코드 재사용성이 좋아진다.
 
 ex)
 인력시장 사장이 도배공보고 방 4개 도배하라고 함
 사장은 무슨 방을 무슨 색으로 도배를 하든 알 바가 아님(~까라는대로 까~)
 
 방 1 -> 도배를 하는데 파란색으로 해주세요
 방 2 -> 도배를 하는데 빨간색으로 해주세요
 방 3 -> 도배를 하는데 노란색으로 해주세요
 방 4 -> 도배를 하는데 초록색으로 해주세요
 
 사장이 가서 도배하라고 해서 오기는 왔는데 각 방(객체)마다 작업이 다름.
 도배공은 반드시 도배라는 작업을 수행해야함(프로토콜 내부의 기능)
 
 사장(위임시키는 사람)
 도배공(위임받는 사람) -> 도배를 반드시 해야함(프로토콜)
 각 방 주인(각각의 객체) -> ?
 
 사장 입장에서는 그냥 보내기만 하면 되니 댕편함. 지시는 현장에서 받음
 "방 1은 파란색으로 하고, 방 2는 빨간색으로 하고..." 이럴 필요가 없음
 
 
 
 */
extension DelegateViewController: ChangeUIDelegate {
    func changeUI() {
        self.textLabel.text = "UI가 변경되었습니다."
        self.view.backgroundColor = .systemTeal
    }
    
    
}
