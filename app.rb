require_relative 'config/environment'

class App < Sinatra::Base

    get "/reversename/:name" do
         params[:name].reverse
       end

    get "/square/:number" do
        (params[:number].to_i ** 2).to_s
      end

    get "/say/:numbrer/:phrase" do
        params[:number, :phrase]
        "#{phrase}.#{number}"
    end

    get "/say/:word1/:word2/:word3/:word4/:word5" do
        "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
      end

    get "/:operation/:numbrer1/:number2" do 

    end
