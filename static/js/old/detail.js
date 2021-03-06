function layoutWorkInfo () {
    $("#project-download-button").convertToButton();
    $("#project-favorite-button").convertToButton();
    $("#work-tags-list").convertToTags();
}

function layoutUserCPL () {
    var userSignature= $("#signature");
    $("#user-signature-wrapper").height(userSignature.height()+30);

}

function page_handle (page_num, paginator) {
    // console.log(paginator);
    paginator.goToPage(page_num);
    paginator.children(".page_button_wrapper").convertToButton();
    var paginator_width = 0;
    paginator.children().each(function() {
        var child = $(this);
        
        if(child.hasClass("page_ellipsis_wrapper")) {
            paginator_width+= child.width() + 21;
        } else {
            paginator_width+= child.width()+8;
        }
        // console.log(paginator_width);
    });
    paginator_width += 20;
    // console.log(paginator_width);
    paginator.css({"width":  paginator_width+"px", "margin-left": "auto", "margin-right": "auto"});
}

function layoutWorkPanel() {
    //Add margins to work panel, but not the last one of each row.
    $("#user-works").children(".works-panel").each(function(index, item) {
        if( (index+1) % 4 != 0 ) {
            $(item).addClass("works_panel_margin");
        }
    });
    //Add slide animation to preview image light box controls.
    $(".work-content-wrapper div.preview-img-wrapper").hover(function(event) {
        $(this).find("div.img-lightbox-controls").slideDown("fast");
    }, function(event) {
        $(this).find("div.img-lightbox-controls").slideUp("fast");
    });
    //Apply FancyBox to light box controls
    //This version have bug, so, make sure have helpers property like this.
    $(".zoom-in-tool").fancybox({
        "closeClick": true,
        "helpers": {
            "overlay": {
                "css": {
                    "overflow": "hidden"
                }
            }
        }
    });
    //trim the long title to fit the size of work panel
    var workTitleWidth = $(".work-title").width();
    $(".work-title a").ellipsis({"width":workTitleWidth, "useContainerPadding": true, "useContainerMargin": false});
    //convert tags
    $(".work-tags").convertToTags({
        "click":function(tag_frame, event){
            var data = tag_frame.attr("data");
            console.log(data);
        }
    });

    $(".category_paginater").paginator({
        "totalItems": 500,
        "num_per_page": 16,
        "currentPage": 0,
        "num_display_entries": 5,
        "num_edge_entires": 1,
        "prev_page_text": "上一页",
        "next_page_text": "下一页",
        "ellipsis_text": "...",
        "callback": page_handle,
        "ajax": true
    });
    $(".page_button_wrapper").convertToButton();
    
    $(".category_paginater").each(function(){
        var paginator_width = 0;
        $(this).children().each(function() {
            var child = $(this);
            
            if(child.hasClass("page_ellipsis_wrapper")) {
                paginator_width+= child.width() + 21;
            } else {
                paginator_width+= child.width()+8;
            }
            // console.log(paginator_width);
        });
        paginator_width += 20;
        // console.log(paginator_width);
        $(this).css({"width":  paginator_width+"px", "margin-left": "auto", "margin-right": "auto"});
    });

    //handle comment submit button
    $("#comment-submit").convertToButton();
}

$(document).ready(function(){
    layoutWorkInfo();
    layoutUserCPL();
    layoutWorkPanel();
});