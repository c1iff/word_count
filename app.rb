require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get ('/') do

  erb(:index)
end

get ('/input') do
  @input_word = params.fetch('word-to-count')

  if params.fetch('partial-match') == 'true'
    @partial = true
  else
    @partial = false
  end

  @result = params.fetch('string').word_count(@input_word, @partial)
  erb(:index)
end
