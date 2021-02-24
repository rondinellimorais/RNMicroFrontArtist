//
//  RNViewController.swift
//  MidwayOrc
//
//  Created by RONDINELE SANTOS DE MORAIS on 22/02/21.
//

import UIKit
import React

open class ArtistsViewController: UIViewController {
  
  open override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.setNavigationBarHidden(true, animated: false)
  }
  
  open override func viewDidLoad() {
    super.viewDidLoad()
    
//    let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
//
//    let rootView = RCTRootView(
//      bundleURL: jsCodeLocation!,
//      moduleName: "RNMicroFrontArtist",
//      initialProperties: nil
//    )
//
//    self.view = rootView
    
    
    // Producao
    let bundle = Bundle(for: ArtistsViewController.self)

    let strPath = bundle.path(forResource: "Bundle.bundle/RNMicroFrontArtist", ofType: "jsbundle")!
    
    let rootView = RCTRootView(
      bundleURL: URL(string: strPath)!,
      moduleName: "RNMicroFrontArtist",
      initialProperties: nil
    )

    self.view = rootView
  }
}
