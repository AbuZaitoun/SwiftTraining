//
//  VideoCell.swift
//  Test App
//
//  Created by Anas AbuZaitoun on 09/03/2021.
//

import UIKit

class VideoCell: UITableViewCell {

    var videoImageView  = UIImageView()
    var videoTitleLabel = UILabel()
     
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(videoImageView)
        addSubview(videoTitleLabel)
        
        configureImageView()
        setImageConstraints()
        configureTitleLabel()
        setTitleConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setVideo(video: Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.name
    }
    
    func configureImageView() {
        videoImageView.layer.cornerRadius = 10
        videoImageView.clipsToBounds      = true
    }
    
    func configureTitleLabel() {
        videoTitleLabel.numberOfLines             = 0
        videoTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints() {
        videoImageView.translatesAutoresizingMaskIntoConstraints                                                = false
        videoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                                = true
        videoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive                  = true
        videoImageView.heightAnchor.constraint(equalToConstant: 80).isActive                                    = true
        videoImageView.widthAnchor.constraint(equalTo: videoImageView.heightAnchor, multiplier: 16/9).isActive  = true
    }
    
    func setTitleConstraints() {
        videoTitleLabel.translatesAutoresizingMaskIntoConstraints                                               = false
        videoTitleLabel.leadingAnchor.constraint(equalTo: videoImageView.trailingAnchor, constant: 20).isActive = true
        videoTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive              = true
        videoTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive                                   = true
        videoTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                               = true
    }
}
