//
//  NewsData.swift
//  News-App
//
//  Created by Hammed on 18/01/2023.
//

import Foundation


struct Results:Decodable {
    let  status: String?
    let totalResults: Int?
    let articles: [News]
}


struct News: Decodable {
    let author: String?
    let description: String?
    let urlToImage: String?
    let url: String?
    let publishedAt : String?
    let content : String?
    let title : String
    let source : Source
}

struct Source: Decodable {
    let id : String?
    let name : String?
}

