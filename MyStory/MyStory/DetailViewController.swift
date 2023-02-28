//
//  DetailViewController.swift
//  MyStory
//
//  Created by Sabrina Zheng on 2/27/23.
//

import UIKit

class DetailViewController: UIViewController {

    var here: ContentItem?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let here = here {
            subtitle.text = here.section
            details.text = here.content
            picture.image = here.photo
        }
    }
    
    @IBOutlet weak var subtitle: UILabel!
    
    @IBOutlet weak var details: UILabel!
    
    @IBOutlet weak var picture: UIImageView!
}
