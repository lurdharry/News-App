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
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsContent: UILabel!
    @IBOutlet weak var dateText: UILabel!
    @IBOutlet weak var author: UILabel!
    
    let dateFormatterGet = DateFormatter()
    let dateFormatter = DateFormatter()

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
        newsTitle.text = details?.title
        newsContent.text = details?.description
 
        dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"

        if let date  = dateFormatterGet.date(from: (details?.publishedAt)!), let postAuthor = details?.author {
            author.text = "By: \(postAuthor)"
            dateFormatter.dateFormat = "EEEE, MMM d, yyyy"
            dateText.text = dateFormatter.string(from: date)
        }

    }

}
