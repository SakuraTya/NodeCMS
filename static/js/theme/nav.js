define(['jquery','jquery.lavalamp'],function($){
    $("#nav-menu").lavaLamp({
        "speed": 300,
        "click": function() {

        },
        "startItem": window.itemIndex,
        "returnStart": function(homeElement) {
            $("#nav-menu").children().each(function() {
                if(!$(this).hasClass("selectedLava")) {
                    $(this).children().removeClass("hot");
                }
            })
        },
        "returnFinish": function(homeElement) {
            var homeAnchor = homeElement.children("a");
            homeAnchor.addClass("hot");
        },
        "hoverStart": function(hoverElement) {
            if(hoverElement != null && hoverElement.hasClass("selectedLava")) {
                return;
            }
            $("#nav-menu").children().each(function() {
                $(this).children().removeClass("hot");
            })
        },
        "hoverFinish": function(hoverElement) {
            var hoverAnchor = hoverElement.children("a");
            hoverAnchor.addClass("hot");
        }
    });
    $("#nav-menu").children().each(function() {
        var listElement = $(this);
        if(listElement.hasClass("selectedLava")) {
            listElement.children().addClass("hot");
        }
    })
});