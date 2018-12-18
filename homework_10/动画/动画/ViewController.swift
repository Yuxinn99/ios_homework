//
//  ViewController.swift
//  动画
//
//  Created by apple on 2018/12/6.
//  Copyright © 2018年 yx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstView: UIView!
    var secondView: UIView!
    
    var animator: UIDynamicAnimator!
    
    var gravity = UIGravityBehavior()
    var collision = UICollisionBehavior()

    
    func animation() {
        //创建一个试图调用UIView animate方法
        let view = UIView(frame: CGRect(x: 300, y: 100, width: 100, height: 100))
        view.backgroundColor = UIColor.orange
        self.view.addSubview(view)
        //设置整个动画完成所需要的时间；设置延迟多少秒之后将该动画加入线程队列中；动画的参数选项:重复和自动倒转；设置动画的内容
        UIView.animate(withDuration: 3, delay: 0, options: [.repeat, .autoreverse], animations: {
            view.frame = CGRect(x: 20, y: 20, width: 20, height: 10)
            //view.backgroundColor = UIColor.purple
            view.transform = view.transform.rotated(by: CGFloat.pi)
            //view.transform = view.transform.scaledBy(x: 20, y: 30)
        }, completion: nil)
    }
    
    
    
    //初始化UIView并添加一个开始动画的按钮
    func transition() {
        
        let btn = UIButton(frame: CGRect(x: 100, y: 250, width: 100, height: 44))
        btn.setTitle("切换视图", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.addTarget(self, action: #selector(changeView), for: .touchUpInside)
        self.view.addSubview(btn)
        
        firstView = UIView(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        firstView.backgroundColor = UIColor.yellow
        self.view.addSubview(firstView)
        
        secondView = UIView(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        secondView.backgroundColor = UIColor.green
        self.view.addSubview(secondView)
        
    }
    
    @objc func changeView() {
        UIView.transition(from: secondView, to: firstView, duration: 3, options: [.transitionCurlUp], completion: nil)
    }
    
    func dynamicAnimation() {
        animator = UIDynamicAnimator(referenceView: self.view)
        
        animator.addBehavior(gravity)
        animator.addBehavior(collision)
        
        collision.translatesReferenceBoundsIntoBoundary = true
        
        //设置timer随机产生视图
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (t) in
            let x = CGFloat(arc4random() % (UInt32(self.view.frame.width) - 50))
            let view = UIView(frame: CGRect(x: x, y: 20, width: 50, height: 50))
            view.backgroundColor = UIColor.red
            view.layer.borderWidth = 1
            view.layer.cornerRadius = 10
            self.view.addSubview(view)
            
            self.gravity.addItem(view)
            self.collision.addItem(view)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animation()
        transition()
        dynamicAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

