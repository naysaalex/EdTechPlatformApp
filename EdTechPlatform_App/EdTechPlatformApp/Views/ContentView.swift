import SwiftUI

struct ContentView: View{
  @EnvironmentObject var model:ContentModel
//  var module: Module //used to access the module
var body: some View{
ScrollView{
LazyVStack{
  //ForEach{}
  //will not let you jump between lessons 
  if model.currentModule != nil{
    
  }//end of if
}//end of lazy
}//end of scroll
}//end of var body
}//end of struct contentview

struct ContentView_Previews: PreviewProvider{
static var previews: some View{
ContentView()
}
}
