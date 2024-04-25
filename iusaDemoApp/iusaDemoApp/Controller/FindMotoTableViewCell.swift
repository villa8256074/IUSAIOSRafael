//
//  FindMotoTableViewCell.swift
//  iusaDemoApp
//
//  Created by Rafael Villa on 24/04/24.
//

import UIKit

class FindMotoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblMoto: UILabel!
    @IBOutlet weak var lblBateriaOne: UILabel!
    @IBOutlet weak var lblBateriaTwo: UILabel!
    @IBOutlet weak var viewContent: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func changeValues(moto: String, bateriaOne: String, bateriaTwo: String) {
        self.lblMoto.text = moto
        self.lblBateriaOne.text = bateriaOne
        self.lblBateriaTwo.text = bateriaTwo
        
    }

}
