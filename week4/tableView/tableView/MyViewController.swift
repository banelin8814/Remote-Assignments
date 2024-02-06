import UIKit

enum Section:CaseIterable {
    case section0
    case section1
}

struct Item: Hashable {
    let value: Int
    let section: Int
}


class MyViewController: UITableViewController {

    let itemsForSection0 = Array(0...9).map { Item(value: $0, section: 0) }
    let itemsForSection1 = Array(0...4).map { Item(value: $0, section: 1) }

    var dataSource: UITableViewDiffableDataSource<Section, Item>!

    override func viewDidLoad() {
        super.viewDidLoad()

        configureDataSource()
        updateDataSource()
    }

    func configureDataSource() {
        dataSource = UITableViewDiffableDataSource<Section, Item>(tableView: tableView) { tableView, indexPath, item in
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = "This is section \(item.section), row \(item.value)"
            return cell
        }

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    func updateDataSource() {
        var newSnapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        newSnapshot.appendSections(Section.allCases)

        newSnapshot.appendItems(itemsForSection0, toSection: .section0)
        newSnapshot.appendItems(itemsForSection1, toSection: .section1)

        dataSource.apply(newSnapshot, animatingDifferences: true)
    }
}
