get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do

  str_upcase = "NO, NO, NOT SINCE 1983!"
  str_downcase = "HUH?! SPEAK UP, SONNY!"
  input = params["user_input"]

  if input.upcase == input
    redirect ("/?grandma=" + str_upcase)
  else
    redirect ("/?grandma=" + str_downcase)
  end

end

