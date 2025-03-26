//
//  ViewController.swift
//  ButtonControl
//
//  Created by Claire Chang on 2025/3/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showImage: UIImageView!
    
    
    @IBOutlet weak var rSlider: UISlider!
    @IBOutlet weak var gSlider: UISlider!
    @IBOutlet weak var bSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        reset()
    }

    @IBAction func treeButton(_ sender: Any) {
        showImage.image = UIImage(systemName: "tree.fill")
    }
    
    @IBAction func flowerBtnTap(_ sender: Any) {
        showImage.image = UIImage(systemName: "camera.macro")
    }
    
    @IBAction func carrotBtnTap(_ sender: Any) {
        showImage.image = UIImage(systemName: "leaf.fill")
    }
    
    @IBAction func zoomInBtnTap(_ sender: Any) {
        showImage.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
    }
    
    @IBAction func zoomOutBtnTap(_ sender: Any) {
        showImage.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
    }
    
    @IBAction func hideBtnTap(_ sender: Any) {
        showImage.isHidden = true
    }
    
    @IBAction func showBtnTap(_ sender: Any) {
        showImage.isHidden = false
    }
    
    @IBAction func moveLeft(_ sender: Any) {
        showImage.transform = showImage.transform.translatedBy(x: -20, y: 0)
    }
    
    @IBAction func moveTop(_ sender: Any) {
        showImage.transform = showImage.transform.translatedBy(x: 0, y: -20)
    }
    
    @IBAction func moveDown(_ sender: Any) {
        showImage.transform = showImage.transform.translatedBy(x: 0, y: 20)
    }
    
    @IBAction func moveRight(_ sender: Any) {
        showImage.transform = showImage.transform.translatedBy(x: 20, y: 0)
    }
    
    @IBAction func changeColor(_ sender: Any) {
        showImage.tintColor = UIColor(red: CGFloat(rSlider.value), green: CGFloat(gSlider.value), blue: CGFloat(bSlider.value), alpha: 1.0)
    }
    
    @IBAction func resetBtnTap(_ sender: Any) {
        reset()
    }
    
    func reset() {
        rSlider.value = 0.5
        gSlider.value = 0.8
        bSlider.value = 0.5
        showImage.isHidden = false
        showImage.transform = showImage.transform.translatedBy(x: 0, y: 0)
        showImage.transform = CGAffineTransform(scaleX: 1, y: 1)
        showImage.tintColor = UIColor(red: CGFloat(rSlider.value), green: CGFloat(gSlider.value), blue: CGFloat(bSlider.value), alpha: 1.0)
    }
    
}

#Preview {
let storyboard = UIStoryboard(name: "Main", bundle: nil)
return storyboard.instantiateInitialViewController()!
}
