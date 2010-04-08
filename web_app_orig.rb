# class WebApp
#   def call(env)
#     headers = {}
#     headers['Content-Type'] = 'text/plain'
#     body = "<h1>body text here</h1>"
#     [200,headers , body]
#   end
# end
# 

class WebApp
  def call(env)
    request  = Rack::Request.new(env)
    response = Rack::Response.new

    response['Content-Type'] = 'text/plain'
    response.write "<h1>thoughtbot training</h1>"
    response.write "<h1>thoughtbot training</h1>"


    response.finish
  end
end

