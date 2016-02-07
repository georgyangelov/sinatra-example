get '/' do
  @messages = Message.all

  erb :index
end

post '/message' do
  message = Message.new user_name: params[:user_name], text: params[:text]

  if message.save
    flash[:success] = 'Съобщението беше записано успешно. Благодарим!'
  else
    flash[:error] = 'Съобщението съдържа грешки. Попълни ли полето за текст?'
  end

  redirect '/'
end
