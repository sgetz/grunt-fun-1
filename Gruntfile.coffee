module.exports = (grunt) ->
  require('load-grunt-tasks')(grunt)
  path = require 'path'
  ###App File Location Config###
  app = {
    build: 'build'
    src: 'src'
    webapp_root: '<%= app.src %>/webapp'
    app_dir: '<%= app.webapp_root %>/app'
    server_root: '<%= app.src %>/server'
    server_app: '<%= app.server_root %>/app'
    api_server_port: 8000
    static_server_port: 9001
    require_config_main: '<%= webapp_root %>/require-config.js'
    less_dev_dir: '<%= app.app_dir %>/less'
    css_dev_dir: '<%= app.app_dir %>/css'
  }

  ###Connect Static File Server Config###
  connect = {
    dev: {
      options: {
        port: '<%= app.static_server_port %>'
        base: '<%= app.webapp_root %>'
        livereload: true
        open: 'http://localhost:<%= app.static_server_port %>'
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

  ######
  less = {
    development: {
      files: {
        '<%= app.css_dev_dir %>/main.css': '<%= app.less_dev_dir %>/main.less'
      }
    }
  }



  ###Watch Config###
  watch = {
    less_src: {
      files: ['<%= app.less_dev_dir %>/**/*.less']
      tasks: ['less:development']
    }

  }

  ###Clean Config###
  clean = {
    development: ['<%= app.css_dev_dir %>']
  }

  ###Grunt Inishilize Config###
  grunt.initConfig {
    app,
    connect,
    requirejs,
    less,
    clean,
    watch
  }

  ######
  grunt.registerTask 'server', ->
    serverPath = grunt.template.process './<%= app.server_app %>'
    require(serverPath).listen app.api_server_port
    grunt.log.ok "api server started on port #{app.api_server_port}"



  ###Task run on grunt startup###
  grunt.registerTask 'startup-dev', ['clean:development', 'less:development']


  ###Set Default Grunt Tasks###
  grunt.registerTask 'default', ['startup-dev', 'connect:dev', 'server',  'watch']