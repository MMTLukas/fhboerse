source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'capistrano'
gem 'will_paginate'

# user authentication
gem 'mongrel', '1.2.0.pre2'
gem 'omniauth-browserid'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-ldap'
gem 'omniauth-google'

gem 'whenever'
gem 'paperclip', :path => 'vendor/gems/paperclip'

group :development, :test do
  gem 'sqlite3-ruby', :require => 'sqlite3'
end
# and mysql in production
group :production do
  gem 'mysql2'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
