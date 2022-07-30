//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by seobyeonggwan on 2022/07/29.
//

import UIKit

//UIViewController를 상속받은 SymbolRollerViewController
class SymbolRollerViewController: UIViewController {

    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    //좌측의 컴포넌트를 control + 드래그로 여기로 끌고 온다.
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    //view 컴포넌트들이 실제로 메모리에 로드 되었을때의 시점
    //화면이 로드되었을 때 해야할 일:
    //심볼 중 하나를 임의로 추출하고
    //이미지와 텍스트를 설정한다. -> 얘를 함수로 만들면 굳이 똑같은거 또 쓸 필요가 없지 않을까?
    //DRY -> Do not Repeat Yourself (중복을 보면 참지 말아라)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.tintColor = UIColor.systemPink
        reload()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    //임의의 이미지와 텍스트를 호출하는 함수
    func reload() {
        let symbol = symbols.randomElement()!
        
        imageView.image = UIImage(systemName: symbol)
        
        label.text = symbol
    }
    
    //IBOutlet은 인터페이스 빌더에 있는 컴포넌트와 코드를 연결하겠다.
    //IBAction은 클릭이 됐을때 뭔가를 수행할 것이다.
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }

}
