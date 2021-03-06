ENV['SINATRA_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
require 'dotenv/load'
# ActiveRecord::Base.establish_connection(
#   :adapter => "sqlite3",
#   :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
# )
# configure :development do
#     set :database, 'sqlite3:db/database.db'
# end
set :database, {adapter: "sqlite3", database: "db/development.db"}

require_all 'app'
