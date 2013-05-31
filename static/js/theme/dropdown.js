define(['jquery','jquery.ultrawidget'],function($){
    //orig:dropDownTimeSelectorForPop()
    var api = "/api/time";
    $("#time-selector-for-pop").jDropDownControl({
        "click":function(index, event) {
            var target = event.target;
            var data = $(target).attr("data");
            console.log(data);
            // var time = $.parseJSON(data);
            $("#time-selector-for-pop div.drop_down_wrapper").children("span").text($(target).text());
            if(data){
                // window.location = api+"?time="+data;
                
            }
        }
    });
    $("#time-selector-for-new").jDropDownControl({
        "click":function(index, event) {
            var target = event.target;
            var data = $(target).attr("data");
            console.log(data);
            // var time = $.parseJSON(data);
            $("#time-selector-for-new div.drop_down_wrapper").children("span").text($(target).text());
            if(data){
                // window.location = api+"?time="+data;
                
            }
        }
    });

    //orig:dropDownPlatformSelectorForPop()
    api="/api/platform";
    $("#platform-selector-for-pop").jDropDownControl({
        "click":function(index, event) {
            var target = event.target;
            var data = $(target).attr("data");
            console.log(data);
            $("#platform-selector-for-pop div.drop_down_wrapper").children("span").text($(target).text());
            if(data) {
                // window.location = api+"?platform="+data;
            }
        }
    });
    $("#platform-selector-for-new").jDropDownControl({
        "click":function(index, event) {
            var target = event.target;
            var data = $(target).attr("data");
            console.log(data);
            $("#platform-selector-for-new div.drop_down_wrapper").children("span").text($(target).text());
            if(data) {
                // window.location = api+"?platform="+data;
            }
        }
    });

    //orig:dropDownTagsSelectorForPop()
    api="/api/tags";
    $("#tags-selector-for-pop").jDropDownControl({
        "click":function(index, event) {
            var target = event.target;
            var data = $(target).attr("data");
            console.log(data);
            if(data) {
                // window.location = api+"?platform="+data;
            }
        },
        "width": "200px",
        "defaultLabel": "TAGs"
    });
    $("#tags-selector-for-new").jDropDownControl({
        "click":function(index, event) {
            var target = event.target;
            var data = $(target).attr("data");
            console.log(data);
            if(data) {
                // window.location = api+"?platform="+data;
            }
        },
        "width": "200px",
        "defaultLabel": "TAGs"
    });


})