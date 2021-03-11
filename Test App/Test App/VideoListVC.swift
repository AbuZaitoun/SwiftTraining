//
//  VideoListVC.swift
//  Test App
//
//  Created by Anas AbuZaitoun on 09/03/2021.
//

import UIKit

class VideoListVC: UIViewController {

    var tableView = UITableView()
    var videos: [Video] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Videos list"
        videos = fetchData()
        configureTableView()
    }
        
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(VideoCell.self, forCellReuseIdentifier: "VideoCell")
        tableView.pin(to: view)
    }

    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension VideoListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        let video = videos[indexPath.row]
        cell.setVideo(video: video)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myVC = ViewController()
        myVC.textView.text = videos[indexPath.row].name
        self.navigationController?.pushViewController(myVC, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
//        self.present(myVC, animated: true, completion: nil)
    }
}

extension VideoListVC {
    func fetchData() -> [Video] {
        let video1 = Video(name: "Video 1", image: UIImage(named: "squirel_image") ?? UIImage())
        let video2 = Video(name: "Video 2", image: UIImage(named: "picture3") ?? UIImage())
        let video3 = Video(name: "Video 3", image: UIImage(named: "picture2") ?? UIImage())
        let video4 = Video(name: "Video 4", image: UIImage(named: "squirel_image") ?? UIImage())
        
        return [video1, video2, video3, video4]
    }
}
