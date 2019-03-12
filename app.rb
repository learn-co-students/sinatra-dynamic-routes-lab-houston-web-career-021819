require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number]
    (num.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    say = ""
    (params[:number].to_i).times do
    say += "#{params[:phrase]}\n"
    end
    say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i    
    if operation == 'add'
      x = number1 + number2
    elsif operation == 'subtract'
      x = number2 - number1
    elsif operation == 'multiply'
      x = number1 * number2
    elsif operation == 'divide'
      x = number1 / number2 
    else
      x = "Unable to perform this operation"
    end
    x.to_s
  end
 

end