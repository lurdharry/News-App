//
//  Categories.swift
//  News-App
//
//  Created by Hammed on 18/01/2023.
//

import Foundation


let Categories  = [
    Category(title: "Top Headline", url: "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=4c02e883b05c4224b598a8a09ca8653d"),
    Category(title: "Telsa", url: "https://newsapi.org/v2/everything?q=tesla&from=2022-12-19&sortBy=publishedAt&apiKey=4c02e883b05c4224b598a8a09ca8653d"),
    Category(title: "Apple", url: "https://newsapi.org/v2/everything?q=apple&from=2023-01-17&to=2023-01-17&sortBy=popularity&apiKey=4c02e883b05c4224b598a8a09ca8653d"),
    Category(title: "Tech Crunch", url: "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=4c02e883b05c4224b598a8a09ca8653d"),
    Category(title: "Wall Street Journal", url: "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=4c02e883b05c4224b598a8a09ca8653d"),
]

