require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
      "#{@phrase}\n" * @number
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
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    operation = params[:operation]
    add_nums = number1 + number2
    subtract_nums = number1 - number2
    multiply_nums = number1 * number2
    divide_nums = number1 / number2
    if operation == "add"
      "#{add_nums}"
    elsif operation == "subtract"
      "#{subtract_nums}"
    elsif operation == "multiply"
      "#{multiply_nums}"
    elsif operation == "divide"
      "#{divide_nums}"
    end
  end
end
