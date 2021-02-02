//
//  BalanceViewController.swift
//  BankCard
//
//  Created by KIR Q on 2021.01.31.
//

import UIKit

class BalanceViewController: UIViewController {
    @IBOutlet weak var balanceLabel: UILabel!
    
    var balance = 0 {
        didSet {
            balanceLabel.text = "\(balance) ₽"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateBalance()
    }
    
    func updateBalance() {
        balance = Int.random(in: 0 ... 1_000000)
    }
}

