server_opts = {port:8088,disable_io:true}

cons = require('consolidate')
swig = require('swig')

process_html = (a...,next)->
	next()


require('zappajs').run server_opts,->

	RedisStore = require('connect-redis')(@express)

	@use 'bodyParser', 'cookieParser','methodOverride', @express.session(store:new RedisStore(),secret:'nya'),@app.router,process_html
	@app.engine('.swig', cons.swig)
	@app.set('view engine', 'html')

	swig.init({
						root: './views/',
						allowErrors: true,
						cache:false
	})

	@app.set('views','./views/')
	@get '/': ->
		@render 'theme/layout.swig',nav_index:2