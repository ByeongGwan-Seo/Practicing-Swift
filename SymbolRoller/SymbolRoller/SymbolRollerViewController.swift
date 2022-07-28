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
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(systemName: "cloud")
        // Do any additional setup after loading the view.
        
        print("view did load...")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("view did appear")
    }
    
    //IBOutlet은 인터페이스 빌더에 있는 컴포넌트와 코드를 연결하겠다.
    //IBAction은 클릭이 됐을때 뭔가를 수행할 것이다.
    @IBAction func buttonTapped(_ sender: Any) {
        print("clicked...")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
