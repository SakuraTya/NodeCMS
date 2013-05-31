mongo = require 'mongoskin'
db = mongo.db '127.0.0.1:27017/sakuratya?auto_reconnect=true&poolSize=10',safe:true

db.bind 'posts',
    insertNew:(post,fn)->
        doc = 
            title:post.title
            content:post.content
            tags:post.tags
            view_count:mongo.Long.fromInt 0
            fav_count:mongo.Long.fromInt 0
            comm_count:mongo.Long.fromInt 0

        doc.test = post.test if post.test?
        this.insert doc,{},fn

db.bind 'users',
    create:(user,fn)->
        

module.exports = db
