import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack {
            Spacer()
            Image("logo").resizable().frame(width: 300.0, height: 125.0)
            Spacer()
            Image("penjelasan 1").resizable().frame(width: 700.0, height: 350.0).border(Color.black, width: 2)
            Spacer()
            Image("penjelasan 2").resizable().frame(width: 700.0, height: 350.0).border(Color.black, width: 2)
            Spacer()
            Button {
                viewRouter.currentPage = .page2
            } label: {
                Image("start").resizable().frame(width: 250.0, height: 80.0)
            }

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}


