activate :blog do |blog|
  blog.name = "project"
  blog.prefix = "project"

  blog.taglink = "categories/{tag}.html"
  blog.permalink = "{title}.html"
  blog.layout = "post"
  blog.summary_separator = /(READMORE)/
  blog.summary_length = 250
  blog.default_extension = ".md"

  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"
end

Time.zone = "Melbourne"

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions']
end

page '/robots.txt', layout: false

activate :automatic_image_sizes
activate :livereloadbower
activate :directory_indexes

sprockets.append_path File.join root, 'source/javascripts'

set :relative_links, true
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir,  "source/fonts"

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  activate :imageoptim
  activate :minify_html
  activate :gzip
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = 'gh-pages'
  deploy.build_before = true
end
