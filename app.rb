# require gems
require 'sinatra'
require 'sinatra/activerecord'
require 'pry'
require 'logger'
require 'google/api_client/client_secrets'
require 'google/apis/oauth2_v2'
require 'securerandom'

# require models
Dir["./models/*.rb"].each {|file| require file }

# require routes
Dir["./routes/*.rb"].each {|file| require file }
require "./routes.rb"

get "/" do
  redirect to("/home")
end
