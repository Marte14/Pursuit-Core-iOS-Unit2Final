//
//  CrayonViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    private var colorToSelect = Crayon.allTheCrayons
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
    super.viewDidLoad()
        //tableView.dataSource = self
        //tableView.delegate = self
        
        Crayon.allTheCrayons.forEach { colorToSelect.append($0)}
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            guard let selectedColorDetails = segue.destination as? CrayonDetailsViewController, let indexPath = tableView.indexPathForSelectedRow else { return }
            let color : Crayon = colorToSelect[indexPath.row]
           selectedColorDetails.name = color

    }
    
}
extension CrayonViewController : UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorToSelect.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? Cell else {fatalError("could not deque cell")}
        
        let crayon = colorToSelect[indexPath.section][indexPath.row]
        
    }
    

  
}
