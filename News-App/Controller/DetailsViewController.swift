//
//  DetailsViewController.swift
//  News-App
//
//  Created by Hammed on 19/01/2023.
//

import UIKit
import Alamofire
import AlamofireImage

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var topImage: UIImageView!

    
    var details : News? {
        didSet{
            let downloadURL = URL(string:(details?.urlToImage)!)!
            DispatchQueue.main.async {
                self.topImage.af_setImage(withURL: downloadURL)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = details?.source.name
    }

}
