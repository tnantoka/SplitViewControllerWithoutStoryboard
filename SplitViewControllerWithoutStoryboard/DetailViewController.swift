//
//  DetailViewController.swift
//  SplitViewControllerWithoutStoryboard
//
//  Created by Tatsuya Tobioka on 2015/03/21.
//  Copyright (c) 2015年 tnantoka. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.whiteColor()

        let detailDescriptionLabel = UILabel()
        self.detailDescriptionLabel = detailDescriptionLabel
        detailDescriptionLabel.textAlignment = .Center
        detailDescriptionLabel.autoresizingMask = .FlexibleBottomMargin | .FlexibleTopMargin | .FlexibleWidth
        detailDescriptionLabel.frame = CGRect(
            x: 0.0,
            y: self.view.center.y,
            width: self.view.bounds.size.width,
            height: 17.0)
        self.view.addSubview(detailDescriptionLabel)

        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

