class HomeController < ApplicationController
skip_before_filter :verify_authenticity_token, :only => :auth_callback
    
    def index
      
    end
    
    def about
    end

    def auth_callback
        render :text => request.env["omniauth.auth"].info.to_hash.inspect
      #auth = request.env['omniauth.auth']
      #session[:current_user] = { :nickname => auth.info['nickname'],
       #                                   :image => auth.info['image'],
       #                                   :uid => auth.uid }
      #redirect_to root_url  
    end 
    

 def jackpot
   
 end 

  
def donate

 end

def profit 

end
end