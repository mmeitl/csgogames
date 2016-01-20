class HomeController < ApplicationController
skip_before_filter :verify_authenticity_token, :only => :auth_callback
    
    def index
      
    end
    
    def about
    end

    def auth_callback
      auth = request.env['omniauth.auth']
      session[:current_user] = { nickname: request.env["omniauth.auth"][:info][:Sinkles], image: request.env["omniauth.auth"][:info][:image], uid: request.env["omniauth.auth"][:uid] }
      redirect_to root_url  
    end 
    

 def jackpot
   
 end 

  
def donate

 end

def profit 

end
end