# call run on a object that has
  # a #call method
  # takes one argument
  # and returns an array with [status_code, headers, body]

class App
  def call(env)
    request = Rack::Request.new(env)
    puts request.get?
    [404, {"Content-Type" => "text/html"}, ["<h1>Not Big</h1>"]]
  end
end

my_app = App.new
run my_app
