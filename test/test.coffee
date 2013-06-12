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
    after (done)->
        db.users.remove {test:true},done
    _user = null
    it 'should create a new user with default permission',(done)->
        db.users.create
            email:'chengyuhui1@gmail.com'
            display_name:'Harry Cheng'
            #test:true
            group:'admin'
            password:'bobyuan'
        ,(err,result)->
            return done err if err
            done err,result

    it 'should verify the user\s password(mismatch)',(done)->
        db.users.login 'chengyuhui1@gmail.com','bobyuan_',(err,user)->
            return done err if err
            user.should.eql 'mismatch'
            done()

    it 'should verify the user\s password(match)',(done)->
        db.users.login 'chengyuhui1@gmail.com','bobyuan',(err,user)->
            return done err if err
            user.should.have.property 'displayName'
            _user = user
            done()

    it 'should verify the user can create post',->
        _user.canDo('post_c').should.true













