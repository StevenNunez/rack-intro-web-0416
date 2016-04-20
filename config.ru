class App
  def call(env)
    [200, {"Content-Type" => "text/html", ["<h1>Hey Bangarangs!!</h1>"]}]
  end
end

run App.new
