require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @user_name = params[:name].reverse 
    "#{@user_name}"
  end
  
  get '/square/:number' do 
    @number = params[:number].to_i 
    "#{@number * @number}"
  end
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    @number.times do 
      "#{@phrase}"
    end
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    "#{@word1} #{@word2} "

end