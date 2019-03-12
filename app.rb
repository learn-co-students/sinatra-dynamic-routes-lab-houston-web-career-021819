require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    number = params[:number]
    num = number.to_i
    numy = num*num
    "#{numy}"
  end
  
  get '/say/:number/:phrase' do
    nu = params[:number]
    p = params[:phrase]
    n = nu.to_i
    p * n
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
      if op == "add"
        "#{n1 + n2}"
        elsif op == "subtract"
         "#{n1 - n2}"
        elsif op == "multiply"
          "#{n1 * n2}"
        elsif op == "divide"
          "#{n1 / n2}"
      end
  end
end