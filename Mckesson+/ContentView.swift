
import SwiftUI

struct ContentView: View{
    var body: some View {
        TabView{
            if #available(iOS 15.0, *){
                Summary()
                    .tabItem(){
                        Image(systemName: "person.2.fill")
                        Text("Summary")
                    }
                Camera()
                    .tabItem(){
                        Image(systemName: "camera.fill")
                        Text("Camera")
                    }
                Supplies()
                    .tabItem(){
                        Image(systemName: "slider.horizontal.3")
                        Text("Supplies")
                    }
                
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
                ContentView()
        }
}


