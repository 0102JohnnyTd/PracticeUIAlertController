//
//  ViewController.swift
//  PracticeUIAlertController
//
//  Created by Johnny Toda on 2022/03/14.
//

import UIKit

final class ViewController: UIViewController {
    private let cellIdentifier = "TableViewCell"

    @IBOutlet private weak var tableView: UITableView! {
        didSet {
            tableView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
        }
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(title: "UIAlertController起動", message: "セルをタップしたので \n UIAlertControllerが起動しました", preferredStyle: .alert)

        alertController.addAction(UIAlertAction(title: "あぁ、そうですか。はいはい。", style: .default, handler: nil))

        self.present(alertController, animated: true, completion: nil)
    }
}
