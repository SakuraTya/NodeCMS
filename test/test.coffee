db = require '../db'
should = require 'should'



after ->db.close()
describe 'Posts',->
    afterEach (done)->
        db.posts.remove {test:true},done

    it 'should insert a post',(done)->
        db.posts.insertNew
            title:'Test'
            test:true
            content:'Nya~'
            tags:['tag']
        ,done

describe 'Users',->
    #afterEach (done)->
    #    db.users.remove {test:true},done
    uid = null
    it 'should create a new user with default permission',(done)->
        db.users.create
            email:'chengyuhui1@gmail.com'
            display_name:'Harry Cheng'
            test:true
            group:'admin'
            password:'bobyuan'
        ,(err,result)->
            return done err if err
            uid = result[0]._id
            done err,result

    it 'should verify the user\s password',(done)->














