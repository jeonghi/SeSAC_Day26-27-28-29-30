//
//  BaseViewController.swift
//  SeSAC_Day26_Assignment
//
//  Created by 쩡화니 on 1/31/24.
//

import UIKit
import Then

class BaseViewController: UIViewController {
  
  lazy var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView(style: .large).then {
    $0.center = self.view.center
    $0.hidesWhenStopped = true
    self.view.addSubview($0)
  }
  
  lazy var isLoading: Bool = false {
    willSet {
      if newValue {
        self.activityIndicator.startAnimating()
      } else {
        self.activityIndicator.stopAnimating()
      }
    }
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
  }
  
  // MARK: Life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = Style.Foundation.Color.backgroundColor
    configBase()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
  }
}

extension BaseViewController: BaseConfiguration {
  func configView() {}
  func configLayout() {}
  func configHierarchy() {}
}



