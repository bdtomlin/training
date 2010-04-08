# class WebApp
#   def call(env)
#     headers = {}
#     headers['Content-Type'] = 'text/plain'
#     body = "<h1>body text here</h1>"
#     [200,headers , body]
#   end
# end
# 
get '/training' do
 @date = DateTime.now
 erb :training
end
