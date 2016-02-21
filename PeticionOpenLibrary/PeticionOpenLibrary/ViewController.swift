//
//  ViewController.swift
//  PeticionOpenLibrary
//
//  Created by administradorMAC on 21/02/16.
//  Copyright © 2016 Oscar Javier Olivos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var searchText: UITextField!
    @IBOutlet var LabelResponse: UILabel!
    @IBAction func ButtonSearch(sender: UIButton) {
        let url = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"
        let urlComplete = "\(url)\(self.searchText.text!)"
        
        let urlFull = NSURL(string: urlComplete)
        
        let datos:NSData? = NSData(contentsOfURL: urlFull!)
        let texto = NSString(data: datos!, encoding: NSUTF8StringEncoding)
        self.LabelResponse.text = texto! as String
    }
    
    @IBAction func ButtonClear(sender: UIButton) {
        self.searchText.text = ""
        self.LabelResponse.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

