mongo = require 'mongoskin'
db = mongo.db '127.0.0.1:27017/sakuratya?auto_reconnect=true&poolSize=10',safe:true
global.CONFIG = JSON.parse(require('fs').readFileSync 'config.json')

bcrypt = require 'bcrypt'
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
        this.insert doc,fn

db.bind 'users',
    create:(user,fn)->
        doc =
            email:user.email
            disp_name:user.display_name
            info:{}
        doc.test = true if user.test?
        doc.group = 'user'
        doc.group = user.group if user.group?

        bcrypt.hash user.password,10,(err,hash)=>
            if err
                return process.nextTick ->fn err
            doc.passwd = hash
            this.insert doc,fn


    login:(email,pass,fn)->
        this.find {email},(err,user)->
            if err
                return process.nextTick ->fn(err)
            if user.length is 0
                return process.nextTick ->fn(null,'not_found')
            bcrypt.compare pass,user[0].passwd,(err,res)->
                if err
                    return process.nextTick ->fn(err)
                if !res
                    return process.nextTick ->fn null,'mismatch'
                process.nextTick ->fn null,user[0]



        

module.exports = db
