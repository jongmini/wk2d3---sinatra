require "sinatra"
require "sinatra/reloader"

get "/add/:num1/:num2" do 
	"<h1>#{params[:num1].to_i + params[:num2].to_i}</h1>"
		
end

get "/subtract/:num1/:num2" do
	"<h1>#{params[:num1].to_i - params[:num2].to_i}</h1>"
	
end

get "/multiply/:num1/:num2" do
	"<h1>#{params[:num1].to_f * params[:num2].to_f}</h1>" # using floats
end

get "/divide/:num1/:num2" do
	if params[:num2].to_i == 0 
		"you cannot divide by zero"
	else
		"<h1>#{params[:num1].to_f / params[:num2].to_f}</h1>"
	end	
end