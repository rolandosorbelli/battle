require 'sinatra/base'
require 'shotgun'


class Battle < Sinatra::Base
  get '/battle' do
    "Hello Battle!"
  end
  run! if app_file == $0
end