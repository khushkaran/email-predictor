require "sinatra"
require './lib/predictor'
require './lib/string_patch'
require './lib/email_pattern_checker'
require './lib/email_generator'

enable :sessions
set :session_secret, 'waheguru'

get '/' do
  @report = session[:report]
  erb :index
end

post '/' do
  name = params[:advisor_name]
  domain = params[:advisor_domain]
  predictor = Predictor.new(name, domain)
  session[:report] = predictor.email_prediction
  redirect '/'
end

get '/newquery' do
  session[:report] = nil
  redirect '/'
end