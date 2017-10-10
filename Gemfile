source 'https://rubygems.org'
ruby '2.4.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'dalli'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'letter_opener'
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'
end

gem 'tzinfo-data'

gem 'rails-i18n', git: 'https://github.com/svenfuchs/rails-i18n', branch: 'master'

group :production do
  gem 'exception_notification'
  gem 'rack-cache', require: 'rack/cache'
end

gem 'bootstrap-sass'
gem 'autoprefixer-rails'
gem 'font-awesome-rails'

gem 'active_model_serializers', '~> 0.10.0'
gem 'activemodel-serializers-xml'

gem 'friendly_id'
gem 'sorcery'
gem 'cancancan'
gem 'dragonfly'
gem 'unf'
gem 'kaminari'

source 'https://rails-assets.org' do
  gem 'rails-assets-owl-carousel2'
  gem 'rails-assets-ion.rangeSlider'
end
