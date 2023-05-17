//
//  ViewController.swift
//  DroneTrackingSystem2
//
//  Created by Ekrem on 26.04.2023.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Enable horizontal scrolling
        scrollView.isPagingEnabled = true
        
        // Set the content size
        scrollView.contentSize = CGSize(width: scrollView.frame.width * 4, height: scrollView.frame.height)
        scrollView.backgroundColor = .blue
        
        // Add your content views to the scroll view
        // You can add multiple views horizontally to achieve scrolling effect
        for i in 0...4 {
            let contentView = UIView(frame: CGRect(x: CGFloat(i) * scrollView.frame.width, y: 0, width: scrollView.frame.width, height: scrollView.frame.height))
            // Customize and add your content views here
            scrollView.addSubview(contentView)
        }
        
        
    }
    
}
