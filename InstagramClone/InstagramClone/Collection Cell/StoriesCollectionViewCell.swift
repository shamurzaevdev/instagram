//
//  StoriesCollectionViewCell.swift
//  InstagramClone
//
//  Created by Эл on 04.11.2022.
//

import UIKit

final class StoriesCollectionViewCell: UICollectionViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet var nickNamesLabel: UILabel!
    @IBOutlet var avatarsImageViews: UIImageView!
    
    static let identifier = "StoriesCollectionViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "StoriesCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(with model: StoriesData) {
        self.nickNamesLabel.text = model.text
        self.avatarsImageViews?.image = UIImage(named: model.imageName)
    }

}
