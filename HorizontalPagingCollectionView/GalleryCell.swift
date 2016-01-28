//
//  GalleryCell.swift
//  HorizontalPagingCollectionView
//
//  Created by burt.k(Sungcheol Kim) on 2016. 1. 28..
//  Copyright © 2016년 burt. All rights reserved.
//

import UIKit

class GalleryCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func updateCell(image: UIImage) {
        self.imageView.image = image
    }
}
