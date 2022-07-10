//
//  ViewController.swift
//  VIPERExemple
//
//  Created by Вячеслав Квашнин on 10.07.2022.
//

import UIKit

protocol GreetingViewInputProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

protocol GreetingViewOutputProtocol {
    init(view: GreetingViewInputProtocol)
    func didTapShowGreetingButton()
}

class GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    var presenter: GreetingViewOutputProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func showGreetingPressed(_ sender: Any) {
        presenter?.didTapShowGreetingButton()
    }
}

extension GreetingViewController: GreetingViewInputProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}

