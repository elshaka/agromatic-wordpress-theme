http_path = "/"
css_dir = "core/css"
sass_dir = "core/scss"
images_dir = "core/images"
javascripts_dir = "core/js"

environment = :development
output_style = :compressed

require 'fileutils'
on_stylesheet_saved do |file|
  filename = File.basename(file)
  newdir = File.dirname(file) + "/../../"
  if File.exists?(file) && filename == "style.css"
    puts "Moving: #{filename}"
    FileUtils.mv file, newdir
  end
end
