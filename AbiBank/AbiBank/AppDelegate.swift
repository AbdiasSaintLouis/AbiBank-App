//
//  AppDelegate.swift
//  AbiBank
//
//  Created by Abdias Saint-Louis on 20/01/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
//        window?.rootViewController = LoginViewController()
        window?.rootViewController = OnboardingContainerViewController()
//        window?.rootViewController = OnboardingViewController(heroImageName: "AbiBank Fast Money", titleText: "AbiBank é mais rápido, fácil de usar e tem um visual totalmente novo para ajudar você a gerenciar seu dinheiro com segurança e acompanhar seus gastos para melhorar suas finanças.")
        
        return true
    }
}
