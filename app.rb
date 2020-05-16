require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @user_name = params[:name] 
    @user_name.reverse 
  end 
  
  get '/square/:number' do 
    @square = params[:number].to_i
    (@square**2).to_s
  end 
  
  get '/say/:number/:phraser' do 
    @phrase = params[:phraser]
    @num = params[:number].to_i 
    @phrase.
  
  get '/:operation/:number1' do 
    
end