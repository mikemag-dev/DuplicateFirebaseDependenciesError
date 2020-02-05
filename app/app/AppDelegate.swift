//
//  AppDelegate.swift
//  app
//
//  Created by Michael Maguire on 2/5/20.
//  Copyright © 2020 Michael Maguire. All rights reserved.
//

import UIKit
import framework2
import Firebase

public class App {
    public static func run() -> Auth {
        FirebaseApp.configure()
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        App.configure()
        Framework.configure()
        
        db.collection("activities").addSnapshotListener {(snapshot, err) in
            print(snapshot?.documents.map { $0.data() })
        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}

