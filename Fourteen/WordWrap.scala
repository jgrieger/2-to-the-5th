// cerner_2^5_2018
import scala.collection.mutable.ListBuffer

val inputText = "Keep this man safe; Give him all kindness. I had rather have Such men my friends than enemies. -William Shakespeare (1564-1616)"

def wrap(text: String, maxLineLength: Int): List[String] = {
    var result = new ListBuffer[String]()
    var words = text.split(" ")
    var line = ""
    var isFirstLine = true
    
    for (word <- words) { 
      if(line.length + word.length > maxLineLength){
        result += line;
        line = word
      } 
      else{
        if(isFirstLine){
          line += word
          isFirstLine = false
        }
        else{
          line += " %s".format(word)
        }
      }
    }
    
    result += line
    
    return result.toList
}

var result = wrap(inputText, 20)

result.foreach { println }