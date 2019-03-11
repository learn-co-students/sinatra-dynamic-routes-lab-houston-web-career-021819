require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    reversed = params[:name].reverse
    "#{reversed}"
  end

  get '/square/:number' do
    squared = params[:number].to_i**2
    "#{squared}"
  end

  get '/say/:number/:phrase' do
    test_str = []
    params[:number].to_i.times do
      test_str << "#{params[:phrase]}"
    end
    return test_str.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == 'add'
      sol = @num1 + @num2
      return "#{sol}"
    elsif params[:operation] == 'subtract'
      sol = @num1 - @num2
      return "#{sol}"
    elsif params[:operation] == 'multiply'
      sol = @num1 * @num2
      return "#{sol}"
    elsif params[:operation] == 'divide'
      sol = @num1 / @num2
      return "#{sol}"
    else
      return 'whoops'
    end
  end
end
