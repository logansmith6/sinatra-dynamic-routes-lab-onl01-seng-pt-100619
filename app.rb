require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
      @user_name = params[:name]
      "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    @x = @number.to_i
    "#{@x **2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @x = @number.to_i

    (@x + 1).times("#{@number}")
     #{}"#{@number * @x}"
  end

end
