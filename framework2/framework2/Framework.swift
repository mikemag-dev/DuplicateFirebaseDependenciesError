//
//  Framework.swift
//  framework
//
//  Created by Michael Maguire on 2/5/20.
//  Copyright © 2020 Michael Maguire. All rights reserved.
//

import Firebase

public var db : Firestore { return Firestore.firestore() }
public var auth : Auth { return Auth.auth() }
public var provider : PhoneAuthProvider { return PhoneAuthProvider.provider() }

public class Framework {
    
    public static func configure() {
        FirebaseApp.configure()
    }
}
