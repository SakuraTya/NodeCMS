server_opts = {port:8088,disable_io:true}

cons = require('consolidate')
swig = require('swig')

require('zappajs').run server_opts,->

	RedisStore = require('connect-redis')(@express)

	@use 'bodyParser', 'cookieParser','methodOverride', @express.session(store:new RedisStore(),secret:'nya'),@app.router
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
						nav_index:0
						pop_tags:[
							{name:'新番',id:'aDr'}
							{name:'直角',id:'aDC'}
						]
