source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails', '3.2.19'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development do
	gem 'sqlite3'
end

group :production do
	gem 'mysql2', '~> 0.3.10'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  
  gem 'bootstrap-sass', '~> 3.3.6'
  gem 'sass-rails',   '~> 3.2.3'

  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Jquery UI
gem 'jquery-ui-rails'

# Resources
gem 'inherited_resources', "~> 1.3.1"

# Autenticação
gem "devise", "~> 3.2.4"

#Friendly_id
gem "friendly_id"

# Personalização de Formulários
gem 'simple_form'

# Autocomplete
gem 'rails3-jquery-autocomplete'

group :development do
    gem 'capistrano',         require: false
    gem 'capistrano-rvm',     require: false
    gem 'capistrano-rails',   require: false
    gem 'capistrano-bundler', require: false
    gem 'capistrano3-puma',   require: false
end

gem 'puma'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
