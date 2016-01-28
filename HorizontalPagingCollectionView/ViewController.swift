//
//  ViewController.swift
//  HorizontalPagingCollectionView
//
//  Created by burt.k(Sungcheol Kim) on 2016. 1. 28..
//  Copyright © 2016년 burt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView : UICollectionView!
    let dataList = [
        UIImage(named: "img01")!,
        UIImage(named: "img02")!,
        UIImage(named: "img01")!,
        UIImage(named: "img02")!,
        UIImage(named: "img01")!,
        UIImage(named: "img02")!,
        UIImage(named: "img01")!,
        UIImage(named: "img02")!,
        UIImage(named: "img01")!,
        UIImage(named: "img02")!,
        UIImage(named: "img01")!,
        UIImage(named: "img02")!,
        UIImage(named: "img01")!,
        UIImage(named: "img02")!
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.registerNib(UINib.init(nibName: "GalleryCell", bundle: nil), forCellWithReuseIdentifier: "galleryCell")
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .Horizontal
        flowLayout.minimumInteritemSpacing = 0.0
        flowLayout.minimumLineSpacing = 0.0
        self.collectionView.pagingEnabled = true
        self.collectionView.setCollectionViewLayout(flowLayout, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


extension ViewController: UICollectionViewDataSource {
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let galleryCell = collectionView.dequeueReusableCellWithReuseIdentifier("galleryCell", forIndexPath: indexPath) as! GalleryCell
        galleryCell.updateCell(dataList[indexPath.row])
        return galleryCell
    }
}

extension ViewController: UICollectionViewDelegate {
    
}


extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return self.view.frame.size
    }
}
