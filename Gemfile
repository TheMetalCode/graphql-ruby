source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include? '/'
  "https://github.com/#{repo_name}.git"
end

ruby '2.6.1'

gem 'bcrypt'
gem 'factory_bot_rails'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'rack-cors', require: 'rack/cors'
gem 'rails', '~> 5.2.0'
gem 'validate_url'

gem 'apollo-tracing'
gem 'graphiql-rails', '1.5.0'
gem 'graphql'
gem 'graphql-query-resolver'
gem 'search_object'
gem 'search_object_graphql'

group :development, :test do
  gem 'dotenv-rails'
  gem 'byebug', platforms: %i(mri mingw x64_mingw)
  gem 'rubocop'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
