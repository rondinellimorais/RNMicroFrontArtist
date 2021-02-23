//
//  RNViewController.swift
//  MidwayOrc
//
//  Created by RONDINELE SANTOS DE MORAIS on 22/02/21.
//

import UIKit
import React

class ArtistsViewController: UIViewController {
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.setNavigationBarHidden(true, animated: false)
    
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
    let jsCodeLocation = URL(string: "RNMicroFrontArtist.jsbundle")
    
    let rootView = RCTRootView(
      bundleURL: jsCodeLocation!,
      moduleName: "RNMicroFrontArtist",
      initialProperties: nil
    )
    
    self.view = rootView
  }
}
