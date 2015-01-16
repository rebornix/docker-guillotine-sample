# app.rb
require 'guillotine'
module MyApp
  class App < Guillotine::App
    adapter = Guillotine::MemoryAdapter.new
    set :service => Guillotine::Service.new(adapter)

    get '/' do
      'Hello world!'
    end
  end
end
