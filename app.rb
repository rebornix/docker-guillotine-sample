# app.rb
require 'guillotine'
require 'redis'
module MyApp
  class App < Guillotine::App
    redis = Redis.new(:host => '172.17.0.29', :port => 6379)
    adapter = Guillotine::Adapters::RedisAdapter.new(redis)
    set :service => Guillotine::Service.new(adapter)

    get '/' do
      'Hello world!'
    end
  end
end
