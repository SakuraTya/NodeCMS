module.exports = (grunt)->
	grunt.initConfig
		clean:['build']
		coffee:
			app:
				files:
					'build/app.js':'app.coffee'
			static:
				expand:true
				cwd:'static/js/'
				src:['*.coffee']
				dest:'build/js'
				ext:'.js'
		copy:
			main:
				files:[
					{expand: true,  cwd:'static/js/',src: ['**','!*.coffee'], dest: 'build/js/', filter: 'isFile'}
					{expand: true,  cwd:'views/',src: ['**'], dest: 'build/views/', filter: 'isFile'}
					{expand: true,  cwd:'static/ckeditor/',src: ['**','!samples/'], dest: 'build/static/ckeditor', filter: 'isFile'}
					{expand: true,  cwd:'static/css/',src: ['*'], dest: 'build/static/css/', filter: 'isFile'}
					{expand: true,  cwd:'static/img/',src: ['*'], dest: 'build/static/img/', filter: 'isFile'}
					{expand: true,  cwd:'static/fancybox/',src: ['**'], dest: 'build/static/fancybox/', filter: 'isFile'}
				]
			static:
				files:[{expand: true,  cwd:'build/js/',src: ['*','pack/*'], dest: 'build/static/js/', filter: 'isFile',flatten:true}]
		concat:
			theme:
				files:[
					{
						dest:'build/static/css/theme.css'
						src:[
							'build/static/css/style.css'
							'build/static/css/jquery.ultrawidget-1.0.css'
						]
					}
					{
						dest:'build/js/pack/theme.js',
						src:[
							'build/js/lib/jquery-1.8.0.js'
							'build/js/lib/jquery.lavalamp-1.4.js'
							'build/js/lib/jquery.fancybox.js'
						]
					}
					{
						dest:'build/js/pack/theme.min.js',
						src:[
							'build/js/lib/min/jquery-1.8.0.min.js'
							'build/js/lib/min/jquery.lavalamp-1.4.min.js'
							'build/js/lib/min/jquery.fancybox.pack.js'
						]
					}
				]
			admin:
				files:[
					{
						dest:'build/js/pack/admin.js',
						src:[
							'build/js/lib/jquery-1.8.0.js'
							'build/js/lib/bootstrap.js'
						]
					}
					{
						dest:'build/js/pack/admin.min.js',
						src:[
							'build/js/lib/min/jquery-1.8.0.min.js'
							'build/js/lib/min/bootstrap.min.js'
						]
					}
					{
						dest:'build/js/pack/admin-index.js'
						src:[
							'build/js/pack/admin.js'
							'build/js/lib/raphael.js'
							'build/js/lib/morris.js'
						]
					}
					{
						dest:'build/js/pack/admin-index.min.js'
						src:[
							'build/js/pack/admin.min.js'
							'build/js/lib/min/raphael.min.js'
							'build/js/lib/min/morris.min.js'
						]
					}
				]
				

	grunt.loadNpmTasks('grunt-contrib-coffee')
	grunt.loadNpmTasks('grunt-contrib-clean')
	grunt.loadNpmTasks('grunt-contrib-copy')
	grunt.loadNpmTasks('grunt-contrib-concat')

	grunt.registerTask('default',[
		#'clean'
		'coffee:static'
		'copy:main'
		'concat'
		'copy:static'
	])