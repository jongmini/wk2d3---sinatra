require "sinatra"
require "sinatra/reloader"

MY_USERS = [{name: "John"}, {name: "Jane"}]

get "/users" do
	users = ""
	MY_USERS.each do |user|
		users += "<h2>#{user[:name]} </h2><br>"
	end
	users
end

get "/users/:id" do 
	id = params[:id].to_i  # params object is a hash
	MY_USERS[id][:name]  # input key(symbols) returns value(string) => needs a to_i

end







# get "/" do				# this is called a route block (get request)
# 	"Hello, world!"		# routes are like keys to some path (response)
# end

# get "/hello" do	
# 	"Hello, world!"	
# end

# # get "/my_params/:anything" do

# # end

# get "/blah" do
# 	"blah"
# end

# get "/hello/world" do		# this specific route must be above the params to work
# 	"Hello world!!!"		# this is a common mistake
# end


# get "/hello/:name" do	
# 	"Hello, #{params[:name]}"	
# end

