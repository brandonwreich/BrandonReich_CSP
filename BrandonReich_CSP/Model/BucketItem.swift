//
//  BucketItem.swift
//  BrandonReich_CSP
//
//  Created by Reich, Brandon on 1/5/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import Foundation

class BucketItem: UITableViewCell
{
    let itemContents : String
    let itemAuthor : String
    
    init(contents: String, author : String)
    {
        itemContents = contents
        itemAuthor = author
    }
}
