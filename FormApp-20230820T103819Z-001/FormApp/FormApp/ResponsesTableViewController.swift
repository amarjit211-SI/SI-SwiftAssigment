//
//  ResponsesTableViewController.swift
//  FormApp
//
//  Created by Apple on 17/08/23.
//

import Foundation
import UIKit

class ResponsesTableViewController: UITableViewController{
    var viewModel  : ResponsesTableViewControllerVM = ResponsesTableViewControllerVM()
    
    // MARK - table view data source
    override func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.viewModel.tableData.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        let rowData : Info = self.viewModel.tableData[indexPath.row]
        
        content.text              = rowData.text
        content.secondaryText     = rowData.eventDate.description
        
        cell.contentConfiguration = content
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
           
           self.performSegue( withIdentifier: "moreDetails", sender: self.viewModel.tableData[indexPath.row])
       }
       
       override func prepare(for segue: UIStoryboardSegue, sender: Any?){
           if segue.identifier == "moreDetails"{
               let destination : DetailsViewController = segue  .destination
               as! DetailsViewController
               destination .viewModel.text = (sender as! Info).text
               destination.viewModel.decimal = "\((sender as! Info).decimal)"
               destination.viewModel.event  = (sender as! Info).eventDate.description
               
           }
               
           }
           
       }

