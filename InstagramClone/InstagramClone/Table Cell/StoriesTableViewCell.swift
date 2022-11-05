//
//  StoriesTableViewCell.swift
//  InstagramClone
//
//  Created by Эл on 04.11.2022.
//

import UIKit

class StoriesTableViewCell: UITableViewCell {
    
    static let identifier = "StoriesTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "StoriesTableViewCell", bundle: nil)
    }
    
    //MARK: - IBOutlets
    @IBOutlet var collectionView: UICollectionView!
    
    var models = [StoriesData]()

    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(StoriesCollectionViewCell.nib(), forCellWithReuseIdentifier: StoriesCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(with models: [StoriesData]) {
        self.models = models
        collectionView.reloadData()
    }
}
    //MARK: - Extensions: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout

extension StoriesTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoriesCollectionViewCell.identifier, for: indexPath) as! StoriesCollectionViewCell
        cell.configure(with: models[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 130, height: 100)
    }
}


