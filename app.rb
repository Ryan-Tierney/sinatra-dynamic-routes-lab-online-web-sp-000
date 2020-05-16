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
		@number = params[:number].to_i
		@phrase = params[:phrase]
		final_string = ""
		@number.times do
			 @phrase
		end
	end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
     
     "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
   end 
   
  get '/:operation/:number1' do 
  end 
    
end