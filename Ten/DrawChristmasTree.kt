// cerner_2^5_2018

//          *            <-- the star
//          X            <-- 1
//         XXX           <-- 2
//        XXXXX          <-- 3
//       XXXXXXX         <-- 4
//      XXXXXXXXX        <-- 5
//          X            <-- the trunk

fun main(args: Array<String>){  
    val treeHeight = 5;
    drawChristmasTree(treeHeight)
}

fun drawChristmasTree(height: Int){
    var tabsForSingleChar = ""

    for (i in 1..height) {
        val treePartsCount = 2*i-1;
        val tabsCount = (2*height-treePartsCount)/2;
        val tabsPart = " ".repeat(tabsCount)
        val treeParts = "X".repeat(treePartsCount)

        if(i == 1){
            println(tabsPart + "*")
            tabsForSingleChar = tabsPart
        }

        println(tabsPart + treeParts)
    }

    println(tabsForSingleChar + "X")
 }