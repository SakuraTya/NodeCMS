define 'buttons',['jquery','jquery.ultrawidget'],($)->
    $("#project-download-button").convertToButton()
    $("#project-favorite-button").convertToButton()
    $("#work-tags-list").convertToTags()
    $("#comment-submit").convertToButton()

define 'comment-init',['jquery'],($)->
    $('.comment').each ->
        $elem = $(@).children('.comment-content')
        $('<div class="reply"><div class="reply-icon"></div><span>回复</span></div>
         <div class="edit-link"><div class="edit-icon"></div><span>编辑</span></div>')
        .insertAfter $elem

define 'comment-editable',['jquery','jquery.modal'],($)->
    $('.edit-link').click (e)->
        $comment = $(e.target).closest('.comment')
        cid = $comment.data 'id'
        $('#comment-edit-modal').modal()


requirejs ['buttons','comment-init','comment-editable']



