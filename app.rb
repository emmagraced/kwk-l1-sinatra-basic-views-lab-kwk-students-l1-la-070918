class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
    post "/" do 
     @the_lane = get_lane
     @the_user=params[:user]
     return erb :results
   end
end