//
//  ViewController.swift
//  MyStory
//
//  Created by Sabrina Zheng on 2/26/23.
//

import UIKit

class ViewController: UIViewController {
    let who = ContentItem(section: "Who am I?", content:"A bite from a spider somehow granted teenager me its arachnid abilities and instead of using them for personal gain, I decided to help others with the world. ",photo: UIImage(named:"me")!)
    
    let weakness = ContentItem(section: "My weakness", content: "Ethyl Chloride is a huge weakness for Spider-Man, canceling out his powers. Despite its undeniable effect on the web-slinger, this chemical substance isn't nearly as well known as other power-cancellers.", photo: UIImage(named: "weakness")!)
    
    let strength = ContentItem(section:"My Strength", content: "Spider-Man has incredible agility, allowing him to catch his enemies off guard with how quickly he can move and contort in battle. Spider-Man has shown an extrasensory awareness of impending danger.",photo: UIImage(named: "Power")!)
    
    var sec: [ContentItem] = []

    @IBOutlet weak var circularImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sec = [who,weakness,strength]
        
        circularImageView.layer.cornerRadius = circularImageView.frame.size.width/2
        circularImageView.clipsToBounds = true
        
    }

    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view{
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue",
           let content = sender as? UIButton,
           let detailViewController = segue.destination as? DetailViewController{
            if content.tag == 0{
                detailViewController.here = sec[0]
            }
            else if content.tag == 1{
                detailViewController.here = sec[1]
            }
            else if content.tag == 2{
                detailViewController.here = sec[2]
            }else{
                print("none")
            }
        }
    }
    
    
    
    
}

