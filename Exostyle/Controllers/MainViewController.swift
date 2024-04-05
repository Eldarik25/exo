//
//  ViewController.swift
//  Exostyle
//
//  Created by Ибрагимов Эльдар on 02.04.2024.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tovarTableView: UITableView!
    @IBOutlet weak var recomendCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recomendCollectionView.delegate = self
        recomendCollectionView.dataSource = self
        tovarTableView.dataSource = self
        tovarTableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Gradient().setGradientBackground(view: self.view)
    }


}
extension MainViewController:UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tovar") as! TovarTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "tovar", sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recomend", for: indexPath) as! RecomendCollectionViewCell
        return cell
    }
    
    
}
