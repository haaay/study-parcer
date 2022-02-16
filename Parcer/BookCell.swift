//
//  BookCell.swift
//  Parcer
//
//  Created by hayk on 11.11.2021.
//

import UIKit

class BookCell: UITableViewCell {
    
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var type: UIImageView!
    @IBOutlet weak var ageLimit: UIImageView!
    
    static let identifier = "cell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    static func cell(by book: Book, for tableView: UITableView, _ indexPath: IndexPath) -> BookCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! BookCell
        
        cell.id.text = String(book.id)
        cell.title.text = book.title
        cell.author.text = book.author
        
        var typeIcon: String!
        
        switch book.type {
        case .electronic:
            typeIcon = "book.closed.fill"
        case .audio:
            typeIcon = "headphones.circle.fill"
        case .pdf:
            typeIcon = "doc.circle"
        case .unknown:
            typeIcon = "camera.metering.unknown"
        }
        
        var ageLimitIcon: String!
        
        switch book.ageLimit {
        case .zero:
            ageLimitIcon = "0.circle.fill"
        case .six:
            ageLimitIcon = "6.circle.fill"
        case .twelve:
            ageLimitIcon = "12.circle.fill"
        case .sixteen:
            ageLimitIcon = "16.circle.fill"
        case .eighteen:
            ageLimitIcon = "18.circle.fill"
        case .unknown:
            ageLimitIcon = "camera.metering.unknown"
        }
        
        cell.type.image = UIImage(systemName: typeIcon)
        cell.ageLimit.image = UIImage(systemName: ageLimitIcon)
        
        return cell
    }

}
