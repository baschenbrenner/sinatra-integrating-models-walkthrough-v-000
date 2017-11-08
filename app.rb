require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
    results = TextAnalyzer.new(text_from_user)
    @count_of_words=results.count_of_words
    @count_of_vowels=results.count_of_vowels
    erb :results
  end
end
