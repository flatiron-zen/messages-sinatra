# config.ru
class AddStatusCode
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    
    # TODO:
    # return a new response with a valid status code
  end
end

class MyApp
  def call(env)
    [nil, {}, ["Hello"]]
  end
end

#TODO use AddStatusCode to create a valid response
run MyApp.new
