//
//  ViewController.swift
//  FilmDatabase
//
//  Created by Suszter Dominik on 2020. 05. 15..
//  Copyright © 2020. Suszter Dominik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var TableView: [UITableView]!
    
    var datadetail = [Movie]()
    
    let data = ["1", "2", "3"]
    override func viewDidLoad() {
        super.viewDidLoad()
         
        guard let url = URL(string: "https://api.themoviedb.org/3/search/movie?api_key=4423e8392de79824a85f90ecf9fc6c55&language=hu-HU&query=1&page=1") else {return}
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
        if let response = response {
            print(response)
        }
        if let data = data {
            print(data)
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                
            } catch {
                print(error)
            }
        }
    
        }.resume()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }


}

