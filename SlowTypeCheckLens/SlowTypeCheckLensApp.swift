//
//  SlowTypeCheckLensApp.swift
//  SlowTypeCheckLens
//
//  Created by Jefferson Setiawan on 10/05/21.
//

import SwiftUI

@main
struct SlowTypeCheckLensApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    struct TestingOnly {
        var a: Bool
    }
    
    func slow() {
        let a4: TestingOnly = TestingOnly(a: true)
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
        
        let a5: TestingOnly = TestingOnly(a: true)
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
        
        let a6: TestingOnly = TestingOnly(a: true)
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
        
        let a7: TestingOnly = TestingOnly(a: true)
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
        
        let a8: TestingOnly = TestingOnly(a: true)
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
        
        let a9: TestingOnly = TestingOnly(a: true)
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            
        let a10: TestingOnly = TestingOnly(a: true)
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
        
        let a11: TestingOnly = TestingOnly(a: true)
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
        
        let a12: TestingOnly = TestingOnly(a: true)
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
            |> \.a .~ false
    }
}
