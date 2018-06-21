console.log("start")
    // console.log(jQuery.name)
    // funzione ready
jQuery(document).ready(function() {
    console.log("ready")
    var lista = jQuery(".container ul")
    console.log(lista);
    var lista = jQuery("#list");
    // a figlia di active figlia di main menu
    var homeMenu = jQuery("#mainMenu .active a").attr("href")
    console.log(homeMenu)
    var homeMenu1 = jQuery("#mainMenu .active a").attr("href", "https://www.google.it/")
    console.log(homeMenu1)

    jQuery("#btnCreateBox").on("click", createBox)

    var theClass = getColor();

    function getColor() {
        var num = 2
    }

    function createBox() {
        var $newBox = jQuery("<div class='box'><h2>Ciao sono 1 box</h2></div>");
        $newBox.css("border", "2px solid red").text("Ciao").appendTo(".titolo");
    }
    $newBox.appendTo("container")
        //createBox();
})