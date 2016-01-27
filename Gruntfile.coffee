module.exports = (grunt)->
  grunt.initConfig
    sass: development:
      options:
        compress: false
      cwd: 'src/scss'
      src: ['**/*.scss']
      dest: 'www/css/testapp.css'
      ext: '.css'
    coffee:
      glob_to_multiple:
        expand: true
        flatten: false
        cwd: 'src/coffee'
        src: ['**/*.coffee']
        dest: 'www/js'
        ext: '.js'
    jade:
      options:
        pretty: true
        data: grunt.file.readJSON('variables.json')
      files:
        expand: true
        cwd: 'src/jade'
        src: ['**/*.jade']
        dest: 'www'
        ext: '.html'
    watch:
      styles:
        files: ['src/scss/**/*.scss']
        tasks: ['sass']
        options: nospwan: true
      coffee:
        files: ['src/coffee/**/*.coffee']
        tasks: 'coffee'
      jade:
        files: ['src/jade/**/*.jade']
        tasks: 'jade'
  
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.registerTask 'default', ['watch']
  grunt.registerTask 'dist', ['jade','sass','coffee']
  return

