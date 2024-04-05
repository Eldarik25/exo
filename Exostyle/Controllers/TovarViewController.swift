//
//  TovarViewController.swift
//  Exostyle
//
//  Created by Ибрагимов Эльдар on 05.04.2024.
//

import UIKit

class TovarViewController: UIViewController {

    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var sizeCollectionView: UICollectionView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var heightCollectionView: NSLayoutConstraint!
    private let screen = UIScreen.main.bounds.height / 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addHeightColl()
        collectionView.delegate = self
        collectionView.dataSource = self
        sizeCollectionView.delegate = self
        sizeCollectionView.dataSource = self
    }
    
    func addHeightColl(){
        heightCollectionView.constant = screen
    }
    
    @IBAction func addCart(_ sender: Any) {
    }
    
    @IBAction func buy(_ sender: Any) {
    }
    
}
extension TovarViewController: UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "image", for: indexPath) as! ImageCollectionViewCell
            return cell
        }else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "size", for: indexPath) as! SizeCollectionViewCell
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.collectionView {
            return CGSize(width: UIScreen.main.bounds.width, height: screen)
        }else{
            return CGSize(width: 50, height: 50)
        }
    }
}
