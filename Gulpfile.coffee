gulp = require 'gulp'
run = require 'gulp-run'

# Tex Compilation
gulp.task 'compileTex', ->
  return run('pdflatex ./document.tex').exec()

# Watch
gulp.task 'watch', ->
  gulp.watch './**/*.tex', ['compileTex']

# Default task definition
gulp.task 'default', ['watch', 'compileTex']
