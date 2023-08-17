//
//  LojinhaUViewController.swift
//  Nubank
//
//  Created by Gustavo Mendonca on 17/08/23.
//

import UIKit

class LojinhaUViewController: UIViewController {
    
    
    @IBOutlet weak var collectionViewAnuncios: UICollectionView!
    @IBOutlet weak var collectionViewAnuncios02: UICollectionView!
    let imagemAnuncios:[String] = ["anuncioNike","anuncioNike02","anuncioNike03"]
    
    
    
    let imagensAnuncios:[String] = ["shopee","shopee","shopee"]
    let labelNomeLoja:[String]=["Shopee","Shopee","Shopee"]
    let labelDescricao:[String]=["Cupom para compras acima de R$40.","Cupom para compras acima de R$40.","Cupom para compras acima de R$40."]
    let labelDesconto:[String]=["R$10 OFF","R$10 OFF","R$10 OFF",]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension LojinhaUViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagemAnuncios.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewAnuncios.dequeueReusableCell(withReuseIdentifier: "cell", for:  indexPath) as! LojinhaCollectionViewCell
        
        
        cell.anuncios.image = UIImage(named: imagemAnuncios[indexPath.row])
        
  
        
        
        
        return cell
    }
    
}
