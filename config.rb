###
# Compass
###

compass_config do |config|
  # Require any additional compass plugins here.
  # config.add_import_path File.join "#{root}", "bower_components/foundation/scss"

  # Set this to the root of your project when deployed:
  config.http_path = "/documentation"
  config.css_dir = "stylesheets"
  config.sass_dir = "stylesheets"
  config.images_dir = "images"
  config.javascripts_dir = "javascripts"
  config.fonts_dir = "fonts"

  # You can select your preferred output style here (can be overridden via the command line):
  # output_style = :expanded or :nested or :compact or :compressed

  # To enable relative paths to assets via compass helper functions. Uncomment:
  # relative_assets = true

  # To disable debugging comments that display the original location of your selectors. Uncomment:
  # line_comments = false


  # If you prefer the indented syntax, you might want to regenerate this
  # project again passing --syntax sass, or you can uncomment this:
  # preferred_syntax = :sass
  # and then run:
  # sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

end

set :markdown, layout_engine: :haml, fenced_code_blocks: true, smartypants: true
# we need kramdown for defining options in links
set :markdown_engine, :kramdown

activate :syntax

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

activate :livereload

sprockets.append_path File.join root, 'bower_components'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Or use a different image path
  set :http_prefix, "/documentation"

  # Gzip files
  activate :gzip

  activate :asset_host, host: 'http://docs.codeship.io.s3-website-us-east-1.amazonaws.com/'

  set :build_dir, 'build/documentation'
end

###
# Blog settings
###

# Time.zone = "UTC"

::TAGLINK = "tags"

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  # blog.prefix = "blog"

  # blog.permalink = "{year}/{month}/{day}/{title}.html"
  blog.permalink = "{category}/{title}.html"
  # Matcher for blog source files
  blog.sources = "articles/{category}/{title}.html"
  blog.taglink = "#{TAGLINK}/{tag}.html"
  blog.layout = "layouts/layout"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"

  blog.tag_template = "tag.html"
  # blog.calendar_template = "calendar.html"

  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"

  blog.custom_collections = {
    category: {
      link: '/{category}.html',
      template: '/category.html'
    }
  }
end

page "/feed.xml", layout: false

activate :directory_indexes


###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

require "lib/custom_helpers"
helpers CustomHelpers
