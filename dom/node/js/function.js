// Hàm để getElementsByClassName chạy được trên IE7, 8
function getElementsByClassName(parentNode, targetClass) {
    var retnode = []
    var elements = parentNode.getElementsByTagName("*");
    if (elements.length > 0) {
        var myClass = new RegExp("\\b" + targetClass + "\\b");
        for (i = 0; i < elements.length; i++) {
            var classes = elements.item(i).className;
            if (myClass.test(classes)) {
                retnode.push(elements.item(i));
            }   
        }
    }

    return retnode;
}