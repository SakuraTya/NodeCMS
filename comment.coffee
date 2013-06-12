swig = require 'swig'
s = require 'searchjs'
_ = require 'underscore'

swig.init({root:'.'})

tmpl = swig.compileFile 'views/theme/comment.swig'


data =
    [
        {
            _id:'51b7ef98b9ddrr5r20000002'
            author:'51b7ef98b993de5c20000002'
            pub:1371009502000
            parent:'n'
            content:'这是第一层评论'
            author:'Bob Yuan'
            author_ava:'/static/img/ava.png'
        }
        {
            _id:'51b7ef98b9ddrr5r20000003'
            author:'51b7ef98b993de5c20000002'
            pub:1371009502000
            parent:'51b7ef98b9ddrr5r20000002'
            content:'这是第一层评论的评论'
            author:'Bob Yuan'
            author_ava:'/static/img/ava.png'
        }
        {
            _id:'51b7ef98b9ddrr5r20000017'
            author:'51b7ef98b993de5c20000002'
            pub:1371009502000
            parent:'51b7ef98b9ddrr5r20000003'
            content:'这是第二层评论的评论'
            author:'Bob Yuan'
            author_ava:'/static/img/ava.png'
        }
        {
            _id:'51b7ef98b9ddrr5r200000023'
            author:'51b7ef98b993de5c20000002'
            pub:1371009502000
            parent:'51b7ef98b9ddrr5r20000002'
            content:'这也是第一层评论的评论'
            author:'Bob Yuan'
            author_ava:'/static/img/ava.png'
        }
    ]

exports.render = ->
    depth_1 = s.matchArray data,{parent:'n'}

    depth_1.map (elem)->
        depth_2 = s.matchArray data,{parent:elem._id}
        tmpl.render
            comment:elem
            depth:1
            childrens:depth_2.map (elem2)->
                depth_3 = s.matchArray data,{parent:elem2._id}
                tmpl.render
                    childrens:depth_3.map (elem3)->tmpl.render {comment:elem3,children:[],depth:3}
                    comment:elem2
                    depth:2
