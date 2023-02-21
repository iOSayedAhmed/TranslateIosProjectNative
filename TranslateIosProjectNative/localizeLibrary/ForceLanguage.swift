
//
//  Created by Technicalisto.
//

import UIKit

extension UIView{
open override func awakeFromNib() {
super.awakeFromNib()
       
    let lang = UserDefaults.standard.object(forKey: "loclz") as? String

    if lang != nil {

    if lang == "ar"{
          
        self.semanticContentAttribute = .forceRightToLeft
        
    }else{
         
        self.semanticContentAttribute = .forceLeftToRight
    
    }
    }
}
}



extension UITableView{
open override func awakeFromNib() {
super.awakeFromNib()

    let lang = UserDefaults.standard.object(forKey: "loclz") as? String

    if lang != nil {

    if lang == "ar"{
            
        self.semanticContentAttribute = .forceRightToLeft
        
    }else{
    
        self.semanticContentAttribute = .forceLeftToRight
        
    }
    }
}
}
extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}


extension UICollectionView{
open override func awakeFromNib() {
super.awakeFromNib()
    
    let lang = UserDefaults.standard.object(forKey: "loclz") as? String

    if lang != nil {

    if lang == "en"{
                
        self.transform = CGAffineTransform(scaleX: 1, y: 1)

    }else{
    
        self.transform = CGAffineTransform(scaleX: -1, y: 1)

    }
    }
}
}


extension UICollectionViewCell{
open override func awakeFromNib() {
super.awakeFromNib()

    let lang = UserDefaults.standard.object(forKey: "loclz") as? String

    if lang != nil {

    if lang == "en"{
           
        self.semanticContentAttribute = .forceRightToLeft

    }else{
      
        self.semanticContentAttribute = .forceLeftToRight
      
    }
    }
}}


extension UITextField {
open override func awakeFromNib() {
super.awakeFromNib()
           
    let lang = UserDefaults.standard.object(forKey: "loclz") as? String

    if(self.textAlignment == .center){
    
        print("Center can not changed")
        
    }else{

    if lang != nil {

    if lang == "ar"{
    
        self.textAlignment = .right
         
    }else{
           
        self.textAlignment = .left
           
    }
    }
}
}

    
}


extension UITextView {
open override func awakeFromNib() {
super.awakeFromNib()

    let lang = UserDefaults.standard.object(forKey: "loclz") as? String

    if lang != nil {
    if lang == "ar"{
      
        self.textAlignment = .right
        
    }else{
           
        self.textAlignment = .left
           
    }
    }
}
}

extension UILabel {
open override func awakeFromNib() {
super.awakeFromNib()

    let lang = UserDefaults.standard.object(forKey: "loclz") as? String

    if(self.textAlignment == .center){
    print("Center can not changed")
    
    }else{
        
        if lang != nil {

        if lang == "ar"{
                  
            self.textAlignment = .right
        
        }else{
             
            self.textAlignment = .left
             
        }
        }
        
    }
    }
}




