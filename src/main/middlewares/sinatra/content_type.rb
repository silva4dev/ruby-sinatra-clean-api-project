# frozen_string_literal: true

module Main
  module Middlewares
    module Sinatra
      class ContentTypeMiddleware
        def initialize(app)
          @app = app
        end

        def call(env)
          status, headers, body = @app.call(env)
          headers["Content-Type"] = "application/json"
          [status, headers, body]
        end
      end
    end
  end
end