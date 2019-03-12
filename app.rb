require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end 
  
  get '/square/:number' do 
    @square = params[:number].to_i.sqrt
    puts "#{@square}"
  end

  get '/say/:number/:phrase' do 
    i = 0
    @x = params[:number].to_i
    while i <= (@x-1)
      puts "#{params[:phrase].to_s}"
      i+=1
    end
  end

  get '/say/:word1/:word2:/:word3/:word4/:word5' do
    @x = params['say'].join.(" ")   
    puts "#{@x}"
  end

  get '/:operation/:number1/:number2' do
    if params[:operation].to_s == 'add' 
        "#{params[:number1].to_i + params[:number2].to_i}"     
    elsif params[:operation].to_s == 'subract' 
        "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation].to_s == 'divide' 
        "#{params[:number1].to_i / params[:number2].to_i}"
    elsif params[:operation].to_s == 'multipy' 
        "#{params[:number1].to_i * params[:number2].to_i}"
    else
      "Select a number brah"
    end 
  end

  

=begin
    case params[:operation].to_s
      when "divide"
        "#{params[:number1].to_i / params[:number2].to_i}"
      when "subract"
        "#{params[:number1].to_i - params[:number2].to_i}"
      when "addition"
        "#{params[:number1].to_i + params[:number2].to_i}"
      when "multipy"
        "#{params[:number1].to_i * params[:number2].to_i}"
      else
        "Select a number brah"
    end
=end
