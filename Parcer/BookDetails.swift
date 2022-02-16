//
//  BookDetails.swift
//  Parcer
//
//  Created by hayk on 11.11.2021.
//

import UIKit

class BookDetails: UIViewController {
    
    let book: Book
    @IBOutlet weak var price: UILabel!
    
    init(_ book: Book) {
        self.book = book
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let price = UILabel()
        price.text = String(book.admissionPrice) + "р."
        view.addSubview(price)
    }

}
