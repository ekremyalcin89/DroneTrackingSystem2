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
    
    let numberOfPages = 4

        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Enable horizontal scrolling
            scrollView.isPagingEnabled = true
            
            // Set the content size
            scrollView.contentSize = CGSize(width: scrollView.frame.width * CGFloat(numberOfPages), height: scrollView.frame.height)
            
            // Add your content views to the scroll view
            for i in 0..<numberOfPages {
                let contentView = UIView(frame: CGRect(x: CGFloat(i) * scrollView.frame.width, y: 0, width: scrollView.frame.width, height: scrollView.frame.height))
                // Customize and add your content views here
                contentView.backgroundColor = UIColor(red: CGFloat(i) / CGFloat(numberOfPages), green: 0.5, blue: 0.8, alpha: 1.0)
                scrollView.addSubview(contentView)
            }
        }
        
    }
    
