//
//  DetailsViewController.swift
//  PropertyListDemo
//
//  Created by Instructor on 17/08/23.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.text.text = self.viewModel.text
        self.email.text = self.viewModel.email // Update to the correct property name
//        self.phone.text = self.viewModel.phone // Update to the correct property name
        self.event.text = self.viewModel.event
    }
    
    //MARK: - Variables
    var viewModel               : DetailsViewControllerVM = DetailsViewControllerVM()
    
    //MARK: - IBOutlets
    @IBOutlet weak var event    : UILabel!
    @IBOutlet weak var text     : UILabel!
 
    
    @IBOutlet weak var email: UILabel!
    
    @IBOutlet weak var phone: UILabel!
    
    /*
     @IBOutlet weak var email: UILabel!
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
