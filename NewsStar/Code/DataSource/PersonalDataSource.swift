//
//  PersonalDataSource.swift
//  NewsStar
//
//  Created by Ravi Mishra on 20/10/20.
//

import UIKit

class PersonalDataSource: GenericDataSource<Article>, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: NewsTableViewCell.description(), for: indexPath) as? NewsTableViewCell else {
            return UITableViewCell()
        }
        cell.article = data.value[indexPath.row]
    
        return cell
    }
    
}
