require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name]
    @backwardsname = @name.reverse!
    "#{@backwardsname}"
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    @squarednumber = @number * @number
    "#{@squarednumber}"
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @results = @phrase * @number
    "#{@results}"
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
    @operation = params[:operation].to_s
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    
    if @operation == 'add'
      @result = @number1 + @number2
      "#{@result}"
    elsif @operation == 'subtract'
      @result = @number1 - @number2
      "#{@result}"
    elsif @operation == 'multiply'
      @result = @number1 * @number2
      "#{@result}"
    elsif @operation == 'divide'
      @result = @number1 / @number2
      "#{@result}" 
    else
      "pick a number"
    end 
  end




end