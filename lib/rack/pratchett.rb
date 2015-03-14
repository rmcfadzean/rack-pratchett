module Rack
  class Pratchett
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, body = @app.call(env)
      headers['X-Clacks-Overhead'] = 'GNU Terry Pratchett'
      [status, headers, body]
    end
  end
end
