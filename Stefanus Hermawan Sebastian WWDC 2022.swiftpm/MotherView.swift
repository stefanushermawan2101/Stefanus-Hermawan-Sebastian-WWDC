//
//  File.swift
//  Stefanus Hermawan Sebastian WWDC 2022
//
//  Created by Stefanus Hermawan Sebastian on 19/04/22.
//

import SwiftUI
struct MotherView: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            ContentView(viewRouter: viewRouter)
        case .page2:
            PlayView(viewRouter: viewRouter)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
    }
}
