source 'http://rubygems.org'

gem 'rails', '~>3.0'

gem 'sqlite3-ruby', :platforms => :ruby_19, :require => 'sqlite3' if RUBY_VERSION =~ /1.8/
gem 'sqlite3',      :platforms => :ruby_19 if RUBY_VERSION =~ /1.9/
gem 'has_media',    :git => 'http://github.com/klacointe/has_media.git', :branch => 'rails3'
gem 'rmagick',      '~>2.13', :require => 'RMagick'
gem 'resque',       '~>1.10'
gem 'magic',        '~>0.2'
gem 'ffi',          '1.0.0' if RUBY_VERSION =~ /1.8/

group :development do
  gem 'mongrel',    '~>1.2.0.pre'
end
