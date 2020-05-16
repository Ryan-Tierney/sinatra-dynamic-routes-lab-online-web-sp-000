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
  
  get "/say/:number/:phrase" do
    @the_product = ""
    @the_number = params[:number].to_i
    @the_phrase = params[:phrase]
    @the_number.times do
      @the_product += @the_phrase
      @the_product += "\n"
    end
    "#{@the_product}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
     
     "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
   end 
   
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number 2].to_i
    
    case @operation
      when  "add" 
        (@num1 + @num2).to_s
      when "subtract" 
        (@num1 - @num2).to_s
      when "multiply" 
        (@num1 * @num2).to_s
      when "divide" 
        (@num1 / @num2).to_s
    end
  end 
end 