require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @user_name = params[:name].reverse
    @user_name
  end 
  
  get '/square/:number' do 
    @square = params[:number].to_i
    (@square**2).to_s
  end 
  
  get '/say/:number/:phrase' do 
    @phrase = params[:phrase]
    @num = params[:number].to_i 
    @number.times do 
        final_string = ""
        final_string += @phrase 
      end 
      final_string
  end 
  
  get '/:operation/:number1' do 
  end 
    
end