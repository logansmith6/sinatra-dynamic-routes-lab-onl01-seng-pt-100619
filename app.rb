require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
      @user_name = params[:name]
      "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @number.times do
      "#{@phrase} "
    end
  end

end
