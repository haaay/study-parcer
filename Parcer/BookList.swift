//
//  BookList.swift
//  Parcer
//
//  Created by hayk on 11.11.2021.
//

import UIKit

class BookList: UITableViewController {
    
    var books: [Book]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        books = BookDecoder().decode()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return BookCell.cell(by: book(by: indexPath), for: tableView, indexPath)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //present(BookDetails(book(by: indexPath)), animated: true)
    }
    
    // MARK: - Service
    
    func book(by indexPath: IndexPath) -> Book {
        return books[indexPath.row]
    }

}
