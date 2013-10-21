# config.ru
class AddStatusCode
  def initialize(app)
    @app = app
  end

  def call(env)
    #puts "Called by #{caller[0]}"
    status, headers, body = @app.call(env)
    
    # TODO:
    # return a new response with a valid status code
    [200, headers, body]
  end
end

class MyApp
  def call(env)
    #puts "#{self.class.name}.#{__method__} called by #{caller[0].class}"
    [nil, {}, ["Hello"]]
  end
end

class FinishSentence

  def initialize(app)
    @app = app
  end

  def call(env)
    #puts "Called by #{caller[0]}"
    status, headers, body = @app.call(env)
    body << " World!"
    [status, headers, body]
  end

end


#TODO use AddStatusCode to create a valid response
use AddStatusCode
use FinishSentence
run MyApp.new
