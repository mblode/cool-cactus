Time.zone = "Melbourne"

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions']
end

page '/robots.txt', layout: false

activate :automatic_image_sizes
activate :livereload
activate :directory_indexes

sprockets.append_path File.join root, 'source/javascripts'
sprockets.append_path File.join root, 'bower_components'

set :relative_links, true
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  activate :imageoptim
  activate :minify_html
  activate :gzip
end
