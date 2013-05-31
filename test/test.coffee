db = require '../db'
should = require 'should'

describe 'Database',->
    after ->db.close()
    describe 'Posts',->
        afterEach (done)->
            db.posts.remove {test:true},done

        it 'should insert a post then read it',(done)->
            db.posts.insertNew
                title:'Test'
                test:true
                content:'Nya~'
                tags:['tag']
            ,(err,info)->
                should.not.exist(err)
                db.posts.findById info[0]._id,(err,result)->
                    should.not.exist(err)
                    result.should.have.property 'title'
                    result.should.have.property 'content'
                    result.should.have.property 'tags'
                    done()





