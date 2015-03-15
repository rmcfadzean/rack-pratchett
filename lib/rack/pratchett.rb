module Rack
  class Pratchett
    def initialize(app)
      @app = app
    end

    def call(env)
      result = @app.call(env)
      result[1]['X-Clacks-Overhead'.freeze] = 'GNU Terry Pratchett'.freeze
      result
    end
  end
end
