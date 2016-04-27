source 'https://rubygems.org'
source 'https://code.stripe.com'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
gem 'sqlite3'
gem 'devise'
gem 'paperclip', '~> 4.2.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'stripe', '~> 1.26.0'
gem 'figaro'
gem 'httparty'
gem 'coffee-rails'
gem 'brakeman'
gem 'aasm'
gem 'paper_trail'

group :development do
  gem 'web-console', '~> 2.0'
  gem 'rails_best_practices'
  gem 'quiet_assets'


end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'stripe-ruby-mock'
  gem 'database_cleaner'
  gem 'mocha'
  # Access an IRB console on exception pages or by using <%= console %> in views

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'rails_12factor', group: :production

end
