//
//  ViewController.swift
//  Nubank
//
//  Created by Gustavo Mendonca on 06/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    
    let iconsType:[String] = ["Área Pix","Pagar","Transferir","Cobrar","Recarga de celular"]
    let iconsImage:[String] = ["pix_preto","pagar_preto","transferir_preto","cobrar_preto","recarga"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return iconsType.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for:  indexPath) as! OptionsCollectionViewCell
        
        
        cell.imageIcon.image = UIImage(named: iconsImage[indexPath.row])
        cell.labelIcon.text = iconsType[indexPath.row]
        
        
        
        return cell
    }
    
    
   
    
}


