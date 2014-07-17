module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    watch:
      files: ['**/*.coffee', '**/*.less']
      tasks: ['coffee', 'less']
    coffee:
      compile:
        options:
          sourceMap: true
        files: [
          expand: true
          cwd: './'
          src: ['**/*.coffee']
          dest: './'
          ext: '.js'
        ]
    less:
      compile:
        options:
          sourceMap: true
        files: [
          expand: true
          cwd: './'
          src: ['**/*.less']
          dest: './'
          ext: '.css'
        ]


  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.registerTask 'default', ['watch']
  return
