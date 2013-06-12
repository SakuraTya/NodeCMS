server_opts = {port:8088,disable_io:true}

cons = require('consolidate')
swig = require('swig')
db = require './db'
comment = require './comment'


require('zappajs').run server_opts,->
    RedisStore = require('connect-redis')(@express)

    @use 'bodyParser','cookieParser','methodOverride',@express.session(store:new RedisStore(),secret:'nya'),@app.router,'errorHandler'

    @app.engine('.swig', cons.swig)
    @app.set('view engine', 'html')

    swig.init({
        root: './views/',
        allowErrors: true,
        cache:false
    })

    @app.set('views','./views/')
    @get '/': ->
        @render 'theme/index.swig',
            requirejs:'index'
            nav_index:0
            pop_tags:[
                {name:'新番',id:'aDr'}
                {name:'直角',id:'aDC'}
            ]
            new_tags:[
                {name:'新番',id:'aDr'}
                {name:'直角',id:'aDC'}
            ]
            pop_posts:[
                {
                    url:'http://127.0.0.1'
                    title:'Testing~Testing~'
                    dl_count:12
                    comm_count:20
                    fav_count:233
                    prev:'/static/img/prev2.jpg'
                    prev_big:'/static/img/prev2.jpg'
                    tags:[
                        {name:'新番',id:'aDr'}
                        {name:'直角',id:'aDC'}
                    ]
                    author:{
                        url:'http://127.0.0.1'
                        name:'加大号的猫'
                    }
                }
            ]
            new_posts:[
                {
                    url:'http://127.0.0.1'
                    title:'Testing~Testing~'
                    dl_count:12
                    comm_count:20
                    fav_count:233
                    prev:'/static/img/prev2.jpg'
                    prev_big:'/static/img/prev2.jpg'
                    tags:[
                        {name:'新番',id:'aDr'}
                        {name:'直角',id:'aDC'}
                    ]
                    author:{
                        url:'http://127.0.0.1'
                        name:'加大号的猫'
                    }
                }
            ]




    @get '/admin': ->
        @render 'admin/dashboard.swig',
            is_admin:true
            user:
                display_name:'加大号的猫'


    @get '/admin/posts/new':->
        @render 'admin/newpost.swig',
            is_admin:true
            user:
                display_name:'加大号的猫'


    @get '/admin/media/image/editor_browse':->
        @render 'admin/editor_browse.swig',null

    @get '/post/:id':->
        db.posts.findById @params.id,(err,result)=>
            @render 'theme/post-single.swig',
                    requirejs:'detail'
                    nav_index:1
                    post:result
                    comment:comment.render()


    
