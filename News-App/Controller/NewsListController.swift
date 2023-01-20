//
//  NewsListController.swift
//  News-App
//
//  Created by Hammed on 18/01/2023.
//


import UIKit

class NewsListController : UITableViewController {
    
  var newsData = [News]()
  var networkManager  = NetworkManager()
    
  var details: Category = Category(title: "", url: "") {
        didSet {
            networkManager.fetchData(from: details.url) { news in
                self.newsData = news
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = details.title
    }
    
// MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newsData.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constant.newsItemCell, for: indexPath)
        var content = cell.defaultContentConfiguration()
        let item = newsData[indexPath.row]
        content.text = item.title
        cell.contentConfiguration = content
        return cell
    }

    //MARK: - TableView Delegate Method
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: Constant.detailSegue, sender: self)
        }
        
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destinationVC = segue.destination as! DetailsViewController

            if let indexPath = tableView.indexPathForSelectedRow {
                destinationVC.details = newsData[indexPath.row]
            }
        }
    
}
