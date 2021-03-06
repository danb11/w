//
//  ThirdViewController.swift
//  day10
//
//  Created by Danb on 2017. 1. 18..
//  Copyright © 2017년 Danb. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var mymodel : MyModel?
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        let jsonData = "[{\"title\":\"\u{c0c8}\u{b85c}\",\"image\":\"01.jpg\",\"content\":\"\u{c601}\u{d654}\u{bcf4}\u{b7ec}\u{ac00}\u{c790}\",\"comments\":[{\"id\":1,\"user\":\"jobs\",\"comment\":\"apple\"},{\"id\":4,\"user\":\"cook\",\"comment\":\"apple\"}]}, {\"title\":\"\u{d1a0}\u{c774}\u{c2a4}\u{d1a0}\u{b9ac}\",\"image\":\"02.jpg\", \"content\":\"Pixar\",\"comments\":[]}, {\"title\":\"ToyStory\",\"image\":\"03.jpg\",\"content\":\"\u{c6b0}\u{b514}\u{ac00}\u{cd5c}\u{ace0}\",\"comments\":[{\"id\":2,\"user\":\"bill\",\"comment\":\"Microsoft\"}]}, {\"title\":\"\u{adf9}\u{c7a5}\u{c740}\",\"image\":\"04.jpg\",\"content\":\"\u{c5b4}\u{b514}\u{b85c}\",\"comments\":[{\"id\":4,\"user\":\"cook\",\"comment\":\"apple\"}]}]".data(using: .utf8)
        
        mymodel = MyModel()
        
        mymodel?.MakeJsonArray(jsonDataA: jsonData!)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func RandomButton(_ sender: Any) {
            let random = Int(arc4random_uniform(3))
            let JData = mymodel?.item(atIndex:random)
            let RandomIMG : photoViewController = storyboard?.instantiateViewController(withIdentifier: "imageVC") as! photoViewController
        
            RandomIMG.rdIMG = JData!
        
        
        
            if let navigation = self.navigationController {
            navigation.pushViewController (RandomIMG, animated: true)
            
            }
            else {
                present(RandomIMG, animated: true, completion: nil)
        }

    }
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    
}

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */




