module.exports = (grunt) ->
	require('load-grunt-tasks')(grunt)
	path = require 'path'
	###App File Location Config###
	app = {
		build: 'build'
		src: 'src'
		webapp_root: '<%= app.src %>/webapp'
		server_root: '<%= app.src %>/server'
		server_app: '<%= app.server_root %>/app.js'
		require_config_main: '<%= webapp_root %>/require-config.js'
	}

	###Grunt Express Config###
	express = {
		server: {
			options: {
				port: 8000
				server: '<%= app.server_app %>' # exicutes the /src/server/app.js express server
				bases: ['<%= app.webapp_root %>'] # sets /webapp as static root
				livereload: true
				serverreload: true
			}
		}
	}

	###RequiresJS Config###
	requirejs = {
		compile:
			options:
				baseUrl: '<%= app.webapp_root %>/app' # ? Directory Containing Entrypoint of Requiresjs ?
				name: 'main' # ? name of entrypoint file ?
				mainConfigFile: 'src/webapp/require-config.js' # UNCLEAR WHY '<%= app.require_config_main %>' Doesnt Work
				out: '<%= app.build %>/app/main.js' # ? Path and file name of outputed compiled file ?
	}

	###Watch Config###
	watch = {

	}

	###Grunt Inishilize Config###
	grunt.initConfig {
		app,
		express,
		requirejs
	}

	###Set Default Grunt Tasks###
	grunt.registerTask 'default', ['express']