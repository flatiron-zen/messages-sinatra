# config.ru

class AddStatusCode
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    
    # TODO: Add a proper status code to the HTTP
    #       headers and return the response.
  end
end

class MyApp
  def call(env)
    [nil, {}, ["Hello world!"]]
  end
end


# TODO: Tell the app to use the "AddStatusCode" middleware.
run MyApp.new
