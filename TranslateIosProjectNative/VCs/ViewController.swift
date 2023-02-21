
//----------------------------------------------------------------------------------------------------
//  This app is inspired by Aya Baghdadi” and copyright for Technicalisto 2022
//----------------------------------------------------------------------------------------------------

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func PrintTranslateFromLocalizable(_ sender: Any) {
//        print(NSLocalizedString("my_string", comment: ""))
        print("my_string".localized)
    }
    
    @IBAction func translateTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let VC = storyboard.instantiateViewController(withIdentifier: "ChangeLanguageVC")
        VC.modalPresentationStyle = .fullScreen
        self.present(VC, animated: true, completion: nil)
    }
}


